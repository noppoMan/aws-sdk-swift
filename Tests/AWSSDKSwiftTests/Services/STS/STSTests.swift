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

@testable import AWSSTS
import XCTest

// testing query service

class STSTests: XCTestCase {
    static var client: AWSClient!
    static var sts: STS!

    override class func setUp() {
        if TestEnvironment.isUsingLocalstack {
            print("Connecting to Localstack")
        } else {
            print("Connecting to AWS")
        }

        Self.client = AWSClient(credentialProvider: TestEnvironment.credentialProvider, middlewares: TestEnvironment.middlewares, httpClientProvider: .createNew)
        Self.sts = STS(
            client: STSTests.client,
            region: .useast1,
            endpoint: TestEnvironment.getEndPoint(environment: "STS_ENDPOINT", default: "http://localhost:4566")
        )
    }

    override class func tearDown() {
        XCTAssertNoThrow(try Self.client.syncShutdown())
    }

    func testGetCallerIdentity() {
        let response = Self.sts.getCallerIdentity(.init())
        XCTAssertNoThrow(try response.wait())
    }

    func testErrorCodes() {
        let request = STS.AssumeRoleWithWebIdentityRequest(roleArn: "arn:aws:iam::000000000000:role/Admin", roleSessionName: "now", webIdentityToken: "webtoken")
        let response = Self.sts.assumeRoleWithWebIdentity(request)
            .map { _ in }
            .flatMapErrorThrowing { error in
                switch error {
                case STSErrorType.invalidIdentityTokenException:
                    return
                default:
                    throw error
                }
            }
        XCTAssertNoThrow(try response.wait())
    }
}
