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

import AWSSDKSwiftCore

// MARK: Paginators

extension Cloud9 {

    ///  Gets information about environment members for an AWS Cloud9 development environment.
    public func describeEnvironmentMembershipsPaginator(
        _ input: DescribeEnvironmentMembershipsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeEnvironmentMembershipsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEnvironmentMemberships, tokenKey: \DescribeEnvironmentMembershipsResult.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Gets a list of AWS Cloud9 development environment identifiers.
    public func listEnvironmentsPaginator(
        _ input: ListEnvironmentsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListEnvironmentsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listEnvironments, tokenKey: \ListEnvironmentsResult.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension Cloud9.DescribeEnvironmentMembershipsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Cloud9.DescribeEnvironmentMembershipsRequest {
        return .init(
            environmentId: self.environmentId,
            maxResults: self.maxResults,
            nextToken: token,
            permissions: self.permissions,
            userArn: self.userArn
        )

    }
}

extension Cloud9.ListEnvironmentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Cloud9.ListEnvironmentsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

