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

import Foundation
import NIO
import XCTest

@testable import AWSDynamoDB

// testing json service

class DynamoDBTests: XCTestCase {

    static var dynamoDB = DynamoDB(
        accessKeyId: TestEnvironment.accessKeyId,
        secretAccessKey: TestEnvironment.secretAccessKey,
        region: .useast1,
        endpoint: TestEnvironment.getEndPoint(environment: "DYNAMODB_ENDPOINT", default: "http://localhost:4566"),
        middlewares: TestEnvironment.middlewares,
        httpClientProvider: .createNew
    )

    override class func setUp() {
        if TestEnvironment.isUsingLocalstack {
            print("Connecting to Localstack")
        } else {
            print("Connecting to AWS")
        }
    }

    func createTable(name: String, hashKey: String) -> EventLoopFuture<Void> {
        let input = DynamoDB.CreateTableInput(
            attributeDefinitions: [.init(attributeName: hashKey, attributeType: .s)],
            keySchema: [.init(attributeName: hashKey, keyType: .hash)],
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
    
    func deleteTable(name: String) -> EventLoopFuture<DynamoDB.DeleteTableOutput> {
        let input = DynamoDB.DeleteTableInput(tableName: name)
        return Self.dynamoDB.deleteTable(input)
    }
    
    func putItem(tableName: String, values: [String: Any]) -> EventLoopFuture<DynamoDB.PutItemOutput> {
        let input = DynamoDB.PutItemInput(item: values.mapValues { DynamoDB.AttributeValue(any: $0) }, tableName: tableName)
        return Self.dynamoDB.putItem(input)
    }
    
    func getItem(tableName: String, keys: [String: String]) -> EventLoopFuture<DynamoDB.GetItemOutput> {
        let input = DynamoDB.GetItemInput(key: keys.mapValues { DynamoDB.AttributeValue.s($0) }, tableName: tableName)
        return Self.dynamoDB.getItem(input)
    }
    
    //MARK: TESTS

    func testCreateDeleteTable() {
        let tableName = TestEnvironment.generateResourceName()
        let response = createTable(name: tableName, hashKey: "ID")
            .flatAlways { _ in
                return self.deleteTable(name: tableName)
        }
        XCTAssertNoThrow(try response.wait())
    }
    
    func testGetObject() {
        let tableName = TestEnvironment.generateResourceName()
        let response = createTable(name: tableName, hashKey: "ID")
            .flatMap { _ in
                return self.putItem(tableName: tableName, values: ["ID": "first", "First name": "John", "Surname": "Smith"])
        }
        .flatMap { (_) -> EventLoopFuture<DynamoDB.GetItemOutput> in
            return self.getItem(tableName: tableName, keys: ["ID": "first"])
        }
        .map { response -> Void in
            XCTAssertEqual(response.item?["ID"], .s("first"))
            XCTAssertEqual(response.item?["First name"], .s("John"))
            XCTAssertEqual(response.item?["Surname"], .s("Smith"))
        }
        .flatAlways { _ in
                return self.deleteTable(name: tableName)
        }
        XCTAssertNoThrow(try response.wait())
    }
    
    func testDataItem() {
        let tableName = TestEnvironment.generateResourceName()
        let data = Data("testdata".utf8)
        let response = createTable(name: tableName, hashKey: "ID")
            .flatMap { _ in
                return self.putItem(tableName: tableName, values: ["ID": "1", "data": data])
        }
        .flatMap { (_) -> EventLoopFuture<DynamoDB.GetItemOutput> in
            return self.getItem(tableName: tableName, keys: ["ID": "1"])
        }
        .map { response -> Void in
            XCTAssertEqual(response.item?["ID"], .s("1"))
            XCTAssertEqual(response.item?["data"], .b(data))
        }
        .flatAlways { _ in
                return self.deleteTable(name: tableName)
        }
        XCTAssertNoThrow(try response.wait())
    }
    
    func testNumberSetItem() {
        let tableName = TestEnvironment.generateResourceName()
        let response = createTable(name: tableName, hashKey: "ID")
            .flatMap { _ in
                return self.putItem(tableName: tableName, values: ["ID": "1", "numbers": [2,4.001,-6,8]])
        }
        .flatMap { (_) -> EventLoopFuture<DynamoDB.GetItemOutput> in
            return self.getItem(tableName: tableName, keys: ["ID": "1"])
        }
        .flatMapThrowing { response -> Void in
            XCTAssertEqual(response.item?["ID"], .s("1"))
            if case .ns(let numbers) = response.item?["numbers"] {
                let numberSet = Set(numbers)
                XCTAssert(numberSet.contains("2"))
                XCTAssert(numberSet.contains("4.001"))
                XCTAssert(numberSet.contains("-6"))
                XCTAssert(numberSet.contains("8"))
            } else {
                XCTFail()
            }
        }
        .flatAlways { _ in
                return self.deleteTable(name: tableName)
        }
        XCTAssertNoThrow(try response.wait())
    }
    
    static var allTests: [(String, (DynamoDBTests) -> () throws -> Void)] {
        return [
            ("testCreateDeleteTable", testCreateDeleteTable),
            ("testGetObject", testGetObject),
            ("testDataItem", testDataItem),
            ("testNumberSetItem", testNumberSetItem),
        ]
    }
}

extension DynamoDB.AttributeValue {
    init(any: Any) {
        switch any {
        case let data as Data:
            self = .b(data)//self.init(b: data)
        case let bool as Bool:
            self = .bool(bool)//self.init(bool: bool)
        case let int as Int:
            self = .n(int.description)//self.init(n: int.description)
        case let ints as [Int]:
            self = .ns(ints.map {$0.description})//self.init(ns: ints.map {$0.description})
        case let float as Float:
            self = .n(float.description)//self.init(n: float.description)
        case let double as Double:
            self = .n(double.description)//self.init(n: double.description)
        case let doubles as [Double]:
            self = .ns(doubles.map {$0.description})//self.init(ns: doubles.map {$0.description})
        case let string as String:
            self = .s(string) //self.init(s: string)
        default:
            self = .s(String(reflecting: any))//self.init(s: String(reflecting: any))
        }
    }
}

