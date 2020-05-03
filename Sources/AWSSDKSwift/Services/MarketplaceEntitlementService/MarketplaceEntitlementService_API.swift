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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS MarketplaceEntitlementService service.

AWS Marketplace Entitlement Service This reference provides descriptions of the AWS Marketplace Entitlement Service API. AWS Marketplace Entitlement Service is used to determine the entitlement of a customer to a given product. An entitlement represents capacity in a product owned by the customer. For example, a customer might own some number of users or seats in an SaaS application or some amount of data capacity in a multi-tenant database.  Getting Entitlement Records     GetEntitlements- Gets the entitlements for a Marketplace product.  
*/
public struct MarketplaceEntitlementService {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the MarketplaceEntitlementService client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? .aws,
            amzTarget: "AWSMPEntitlementService",
            service: "entitlement.marketplace",
            signingName: "aws-marketplace",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-01-11",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MarketplaceEntitlementServiceErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  GetEntitlements retrieves entitlement values for a given product. The results can be filtered based on customer identifier or product dimensions.
    public func getEntitlements(_ input: GetEntitlementsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEntitlementsResult> {
        return client.send(operation: "GetEntitlements", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
