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

import XCTest
@testable import AWSAPIGateway

enum APIGatewayTestsError: Error {
    case noRestApi
}

//testing restjson service

class APIGatewayTests: XCTestCase {

    static let apiGateway = APIGateway(
        credentialProvider: TestEnvironment.credentialProvider,
        region: .euwest1,
        endpoint: TestEnvironment.getEndPoint(environment: "APIGATEWAY_ENDPOINT", default: "http://localhost:4566"),
        middlewares: TestEnvironment.middlewares,
        httpClientProvider: .createNew
    )
    static let restApiName: String = "awssdkswift-APIGatewayTests"
    static var restApiId: String!

    override class func setUp() {
        if TestEnvironment.isUsingLocalstack {
            print("Connecting to Localstack")
        } else {
            print("Connecting to AWS")
        }
        /// If we create a rest api for each test, when we delete them APIGateway will throttle and we will most likely not delete the all APIs
        /// So we create one API to be used by all tests
        let eventLoop = self.apiGateway.client.eventLoopGroup.next()
        let createResult = createRestApi(name: restApiName, on: eventLoop)
            .flatMapThrowing { response in
                return try XCTUnwrap(response.id)
        }
        .flatMapErrorThrowing { error in
            print("Failed to create APIGateway rest api, error: \(error)")
            throw error
        }
        XCTAssertNoThrow(Self.restApiId = try createResult.wait())
    }

    override class func tearDown() {
        XCTAssertNoThrow(_ = try deleteRestApi(id: restApiId).wait())
    }

    static func createRestApi(name: String, on eventLoop: EventLoop) -> EventLoopFuture<APIGateway.RestApi> {
        let request = APIGateway.GetRestApisRequest()
        return self.apiGateway.getRestApis(request)
            .flatMap { response in
                if let restApi = response.items?.first(where: { $0.name == name }) {
                    return eventLoop.makeSucceededFuture(restApi)
                } else {
                    let request = APIGateway.CreateRestApiRequest(
                        description: "\(name) API",
                        endpointConfiguration: APIGateway.EndpointConfiguration(types: [.regional]),
                        name: name
                    )
                    return Self.apiGateway.createRestApi(request)
                }
        }
    }

    static func deleteRestApi(id: String) -> EventLoopFuture<Void> {
        let request = APIGateway.DeleteRestApiRequest(restApiId: id)
        return apiGateway.deleteRestApi(request).map {}
    }

    /// create Rest api with supplied name and run supplied closure with rest api id
    func testRestApi(body: @escaping (String) -> EventLoopFuture<Void>) -> EventLoopFuture<Void> {
        body(Self.restApiId)
    }

    //MARK: TESTS

    func testGetRestApis() {
        let response = testRestApi() { id in
            let request = APIGateway.GetRestApisRequest()
            return Self.apiGateway.getRestApis(request)
                .map { response in
                    let restApi = response.items?.first(where: { $0.id == id })
                    XCTAssertNotNil(restApi)
                    XCTAssertEqual(restApi?.name, Self.restApiName)
            }
        }
        XCTAssertNoThrow(try response.wait())
    }

    func testGetRestApi() {
        let response = testRestApi() { id in
            let request = APIGateway.GetRestApiRequest(restApiId: id)
            return Self.apiGateway.getRestApi(request)
                .map { response in
                    XCTAssertEqual(response.name, Self.restApiName)
            }
        }
        XCTAssertNoThrow(try response.wait())
    }

    func testCreateGetResource() {
        let response = testRestApi() { id in
            // get parent resource
            let request = APIGateway.GetResourcesRequest(restApiId: id)
            return Self.apiGateway.getResources(request)
                .flatMapThrowing { response throws -> String in
                    let items = try XCTUnwrap(response.items)
                    XCTAssertEqual(items.count, 1)
                    let parentId = try XCTUnwrap(items[0].id)
                    return parentId
            }
            // create new resource
            .flatMap { parentId -> EventLoopFuture<APIGateway.Resource> in
                let request = APIGateway.CreateResourceRequest(parentId: parentId, pathPart: "test", restApiId: id)
                return Self.apiGateway.createResource(request)
            }
            // extract resource id
            .flatMapThrowing { (response) throws -> String in
                let resourceId = try XCTUnwrap(response.id)
                return resourceId
            }
            // get resource
            .flatMap { resourceId -> EventLoopFuture<APIGateway.Resource> in
                let request = APIGateway.GetResourceRequest(resourceId: resourceId, restApiId: id)
                return Self.apiGateway.getResource(request)
            }
            // verify resource is correct
            .map { response in
                XCTAssertEqual(response.pathPart, "test")
            }
        }
        XCTAssertNoThrow(try response.wait())
    }

    func testError() {
        let response = Self.apiGateway.getModels(.init(restApiId: "invalid-rest-api-id"))
            .map { _ in }
            .flatMapErrorThrowing { error in
                switch error {
                case APIGatewayErrorType.notFoundException(_):
                    return
                default:
                    // local stack is returning a duff error at the moment
                    if TestEnvironment.isUsingLocalstack {
                        return
                    }
                    throw error
                }
        }
        XCTAssertNoThrow(try response.wait())
    }
}
