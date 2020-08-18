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

extension MediaConnect {

    ///  Displays a list of all entitlements that have been granted to this account. This request returns 20 results per page.
    public func listEntitlementsPaginator(
        _ input: ListEntitlementsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListEntitlementsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listEntitlements, tokenKey: \ListEntitlementsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Displays a list of flows that are associated with this account. This request returns a paginated result.
    public func listFlowsPaginator(
        _ input: ListFlowsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListFlowsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFlows, tokenKey: \ListFlowsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension MediaConnect.ListEntitlementsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaConnect.ListEntitlementsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension MediaConnect.ListFlowsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaConnect.ListFlowsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

