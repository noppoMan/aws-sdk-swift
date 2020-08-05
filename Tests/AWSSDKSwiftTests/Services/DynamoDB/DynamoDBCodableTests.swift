//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import AWSDynamoDB
import NIO
import XCTest

final class DynamoDBCodableTests: XCTestCase {

    static var client = AWSClient(
        credentialProvider: TestEnvironment.credentialProvider,
        middlewares: TestEnvironment.middlewares,
        httpClientProvider: .createNew
    )
    
    static var dynamoDB = DynamoDB(
        client: client,
        region: .useast1,
        endpoint: TestEnvironment.getEndPoint(environment: "DYNAMODB_ENDPOINT", default: "http://localhost:4566")
    )

    func createTable(name: String, attributeDefinitions: [DynamoDB.AttributeDefinition]? = nil, keySchema: [DynamoDB.KeySchemaElement]? = nil) -> EventLoopFuture<Void> {
        let input = DynamoDB.CreateTableInput(
            attributeDefinitions: attributeDefinitions ?? [.init(attributeName: "id", attributeType: .s)],
            keySchema: keySchema ?? [.init(attributeName: "id", keyType: .hash)],
            provisionedThroughput: .init(readCapacityUnits: 5, writeCapacityUnits: 5),
            tableName: name
        )
        return Self.dynamoDB.createTable(input)
            .map { response in
                XCTAssertEqual(response.tableDescription?.tableName, name)
                return
        }
        .flatMapErrorThrowing { error in
            switch error {
            case DynamoDBErrorType.resourceInUseException(_):
                print("Table (\(name)) already exists")
                return
            default:
                throw error
            }
        }
        .flatMap { (_) -> EventLoopFuture<Void> in
            let eventLoop = Self.dynamoDB.client.eventLoopGroup.next()
            if TestEnvironment.isUsingLocalstack {
                return eventLoop.makeSucceededFuture(())
            }
            // wait ten seconds for table to be created. If you don't subsequent commands will fail
            let scheduled: Scheduled<Void> = eventLoop.flatScheduleTask(deadline: .now() + .seconds(10)) { return eventLoop.makeSucceededFuture(()) }
            return scheduled.futureResult
        }
    }
    
    func deleteTable(name: String) -> EventLoopFuture<Void> {
        // for some reason delete table is not working while running within a github action. works everywhere else
        // have verified this is an issue with awscli as well, so not an issue with aws-sdk-swift
        guard ProcessInfo.processInfo.environment["GITHUB_ACTIONS"] != "true"  else {
             return Self.dynamoDB.client.eventLoopGroup.next().makeSucceededFuture(())
        }
        let input = DynamoDB.DeleteTableInput(tableName: name)
        return Self.dynamoDB.deleteTable(input).map { _ in }
    }
    
    //MARK: Tests
    
    func testPutGet() {
        struct TestObject: Codable, Equatable {
            let id: String
            let name: String
            let surname: String
            let age: Int
            let address: String
            let pets: [String]?
        }
        let id = UUID().uuidString
        let test = TestObject(id: id, name: "John", surname: "Smith", age: 32, address: "1 Park Lane", pets: ["cat", "dog"])
        
        let tableName = TestEnvironment.generateResourceName()
        let response = createTable(name: tableName)
            .flatMap { _ -> EventLoopFuture<DynamoDB.PutItemOutput> in
                let request = DynamoDB.PutItemCodableInput(item: test, tableName: tableName)
                return Self.dynamoDB.putItem(request)
        }
        .flatMap { _ -> EventLoopFuture<DynamoDB.GetItemCodableOutput<TestObject>> in
            let request = DynamoDB.GetItemInput(key: ["id": .s(id)], tableName: tableName)
            return Self.dynamoDB.getItem(request, type: TestObject.self)
        }
        .map { response -> Void in
            XCTAssertEqual(test, response.item)
        }
        .flatAlways { _ in
            self.deleteTable(name: tableName)
        }
        
        XCTAssertNoThrow(try response.wait())
    }
    
    func testUpdate() {
        struct TestObject: Codable, Equatable {
            let id: String
            let name: String
            let surname: String
            let age: Int
            let address: String
            let pets: [String]?
        }
        struct NameUpdate: Codable {
            let id: String
            let name: String
            let surname: String
        }
        let id = UUID().uuidString
        let test = TestObject(id: id, name: "John", surname: "Smith", age: 32, address: "1 Park Lane", pets: ["cat", "dog"])
        let nameUpdate = NameUpdate(id: id, name: "David", surname: "Jones")

        let tableName = TestEnvironment.generateResourceName()
        let response = createTable(name: tableName)
            .flatMap { _ -> EventLoopFuture<DynamoDB.PutItemOutput> in
                let request = DynamoDB.PutItemCodableInput(item: test, tableName: tableName)
                return Self.dynamoDB.putItem(request)
        }
        .flatMap { _ -> EventLoopFuture<DynamoDB.UpdateItemOutput> in
            let request = DynamoDB.UpdateItemCodableInput(key: ["id"], tableName: tableName, updateItem: nameUpdate)
            return Self.dynamoDB.updateItem(request)
        }
        .flatMap { _ -> EventLoopFuture<DynamoDB.GetItemCodableOutput<TestObject>> in
            let request = DynamoDB.GetItemInput(key: ["id": .s(id)], tableName: tableName)
            return Self.dynamoDB.getItem(request, type: TestObject.self)
        }
        .map { response -> Void in
            XCTAssertEqual("David", response.item?.name)
            XCTAssertEqual("Jones", response.item?.surname)
            XCTAssertEqual(32, response.item?.age)
            XCTAssertEqual("1 Park Lane", response.item?.address)
            XCTAssertEqual(["cat", "dog"], response.item?.pets)
        }
        .flatAlways { _ in
            self.deleteTable(name: tableName)
        }
        XCTAssertNoThrow(try response.wait())
    }
    
    func testQuery() {
        struct TestObject: Codable, Equatable {
            let id: String
            let version: Int
            let message: String
        }
        let testItems = [
            TestObject(id: "test", version: 1, message: "Message 1"),
            TestObject(id: "test", version: 2, message: "Message 2"),
            TestObject(id: "test", version: 3, message: "Message 3"),
        ]

        let tableName = TestEnvironment.generateResourceName()
        let response = createTable(
            name: tableName,
            attributeDefinitions: [.init(attributeName: "id", attributeType: .s), .init(attributeName: "version", attributeType: .n)],
            keySchema: [.init(attributeName: "id", keyType: .hash), .init(attributeName: "version", keyType: .range)]
        ).flatMap { _ -> EventLoopFuture<Void> in
            let futureResults: [EventLoopFuture<DynamoDB.PutItemOutput>] = testItems.map { Self.dynamoDB.putItem(.init(item: $0, tableName: tableName))}
            return EventLoopFuture.whenAllSucceed(futureResults, on: Self.dynamoDB.client.eventLoopGroup.next()).map { _ in }
        }
        .flatMap { _ -> EventLoopFuture<DynamoDB.QueryCodableOutput<TestObject>> in
            let request = DynamoDB.QueryInput(
                expressionAttributeValues: [":id": .s("test"), ":version": .n("2")],
                keyConditionExpression: "id = :id and version >= :version",
                tableName: tableName
            )
            return Self.dynamoDB.query(request, type: TestObject.self)
        }
        .map { response in
            XCTAssertEqual(testItems[1], response.items?[0])
            XCTAssertEqual(testItems[2], response.items?[1])
        }
        .flatAlways { _ in
            self.deleteTable(name: tableName)
        }
        XCTAssertNoThrow(try response.wait())
    }
    
    func testQueryPaginator() {
        struct TestObject: Codable, Equatable {
            let id: String
            let version: Int
            let message: String
        }
        let testItems = [
            TestObject(id: "test", version: 1, message: "Message 1"),
            TestObject(id: "test", version: 2, message: "Message 2"),
            TestObject(id: "test", version: 3, message: "Message 3"),
            TestObject(id: "test", version: 4, message: "Message 4"),
            TestObject(id: "test", version: 5, message: "Message 5"),
        ]

        var results: [TestObject] = []
        let tableName = TestEnvironment.generateResourceName()
        let response = createTable(
            name: tableName,
            attributeDefinitions: [.init(attributeName: "id", attributeType: .s), .init(attributeName: "version", attributeType: .n)],
            keySchema: [.init(attributeName: "id", keyType: .hash), .init(attributeName: "version", keyType: .range)]
        ).flatMap { _ -> EventLoopFuture<Void> in
            let futureResults: [EventLoopFuture<DynamoDB.PutItemOutput>] = testItems.map { Self.dynamoDB.putItem(.init(item: $0, tableName: tableName))}
            return EventLoopFuture.whenAllSucceed(futureResults, on: Self.dynamoDB.client.eventLoopGroup.next()).map { _ in }
        }
        .flatMap { _ -> EventLoopFuture<Void> in
            let request = DynamoDB.QueryInput(
                expressionAttributeValues: [":id": .s("test"), ":version": .n("2")],
                keyConditionExpression: "id = :id and version >= :version",
                limit: 3,
                tableName: tableName
            )
            return Self.dynamoDB.queryPaginator(request, type: TestObject.self) { response, eventLoop in
                results.append(contentsOf: response.items ?? [])
                return eventLoop.makeSucceededFuture(true)
            }
        }
        .map { response in
            XCTAssertEqual(testItems[1], results[0])
            XCTAssertEqual(testItems[2], results[1])
            XCTAssertEqual(testItems[3], results[2])
            XCTAssertEqual(testItems[4], results[3])
        }
        .flatAlways { _ in
            self.deleteTable(name: tableName)
        }
        XCTAssertNoThrow(try response.wait())
    }
    
    func testScan() {
        struct TestObject: Codable, Equatable {
            let id: String
            let version: Int
            let message: String
        }
        let testItems = [
            TestObject(id: "test", version: 1, message: "Message 1"),
            TestObject(id: "test", version: 2, message: "Message 2"),
            TestObject(id: "test", version: 3, message: "Message 3")
        ]

        let tableName = TestEnvironment.generateResourceName()
        let response = createTable(
            name: tableName,
            attributeDefinitions: [.init(attributeName: "id", attributeType: .s), .init(attributeName: "version", attributeType: .n)],
            keySchema: [.init(attributeName: "id", keyType: .hash), .init(attributeName: "version", keyType: .range)]
        ).flatMap { _ -> EventLoopFuture<Void> in
            let futureResults: [EventLoopFuture<DynamoDB.PutItemOutput>] = testItems.map { Self.dynamoDB.putItem(.init(item: $0, tableName: tableName))}
            return EventLoopFuture.whenAllSucceed(futureResults, on: Self.dynamoDB.client.eventLoopGroup.next()).map { _ in }
        }
        .flatMap { _ -> EventLoopFuture<DynamoDB.ScanCodableOutput<TestObject>> in
            let request = DynamoDB.ScanInput(expressionAttributeValues: [":message": .s("Message 2")], filterExpression: "message = :message", tableName: tableName)
            return Self.dynamoDB.scan(request, type: TestObject.self)
        }
        .map { response in
            XCTAssertEqual(testItems[1], response.items?[0])
        }
        .flatAlways { _ in
            self.deleteTable(name: tableName)
        }
        XCTAssertNoThrow(try response.wait())
    }
}
