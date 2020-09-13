//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import SotoCore

/*
 Client object for interacting with AWS IdentityStore service.

 */
public struct IdentityStore: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the IdentityStore client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWSIdentityStore",
            service: "identitystore",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2020-06-15",
            endpoint: endpoint,
            possibleErrorTypes: [IdentityStoreErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Retrieves the group metadata and attributes from GroupId in an identity store.
    public func describeGroup(_ input: DescribeGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeGroupResponse> {
        return self.client.execute(operation: "DescribeGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the user metadata and attributes from UserId in an identity store.
    public func describeUser(_ input: DescribeUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeUserResponse> {
        return self.client.execute(operation: "DescribeUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the attribute name and value of the group that you specified in the search. We only support DisplayName as a valid filter attribute path currently, and filter is required. This API returns minimum attributes, including GroupId and group DisplayName in the response.
    public func listGroups(_ input: ListGroupsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListGroupsResponse> {
        return self.client.execute(operation: "ListGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the attribute name and value of the user that you specified in the search. We only support UserName as a valid filter attribute path currently, and filter is required. This API returns minimum attributes, including UserId and UserName in the response.
    public func listUsers(_ input: ListUsersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListUsersResponse> {
        return self.client.execute(operation: "ListUsers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }
}
