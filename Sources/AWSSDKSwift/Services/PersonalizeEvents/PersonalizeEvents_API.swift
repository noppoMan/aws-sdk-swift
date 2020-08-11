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

/**
Client object for interacting with AWS PersonalizeEvents service.

*/
public struct PersonalizeEvents: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the PersonalizeEvents client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.context = AWSServiceContext(
            region: region,
            partition: region?.partition ?? partition,
            service: "personalize-events",
            signingName: "personalize",
            serviceProtocol: .restjson,
            apiVersion: "2018-03-22",
            endpoint: endpoint,
            errorType: PersonalizeEventsErrorType.self,
            timeout: timeout
        )
    }
    
    public func transform(_ transform:(AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, context: transform(self.context))
    }
    
    //MARK: API Calls

    ///  Records user interaction event data.
    @discardableResult public func putEvents(_ input: PutEventsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "PutEvents", path: "/events", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }
}

extension PersonalizeEvents {
    init(client: AWSClient, context: AWSServiceContext) {
        self.client = client
        self.context = context
    }
}
