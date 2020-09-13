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

import SotoCore

// MARK: Paginators

extension FMS {
    ///  Returns an array of PolicyComplianceStatus objects. Use PolicyComplianceStatus to get a summary of which member accounts are protected by the specified policy.
    public func listComplianceStatusPaginator(
        _ input: ListComplianceStatusRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListComplianceStatusResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listComplianceStatus,
            tokenKey: \ListComplianceStatusResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a MemberAccounts object that lists the member accounts in the administrator's AWS organization. The ListMemberAccounts must be submitted by the account that is set as the AWS Firewall Manager administrator.
    public func listMemberAccountsPaginator(
        _ input: ListMemberAccountsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListMemberAccountsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMemberAccounts,
            tokenKey: \ListMemberAccountsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns an array of PolicySummary objects.
    public func listPoliciesPaginator(
        _ input: ListPoliciesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPoliciesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPolicies,
            tokenKey: \ListPoliciesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension FMS.ListComplianceStatusRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FMS.ListComplianceStatusRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            policyId: self.policyId
        )
    }
}

extension FMS.ListMemberAccountsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FMS.ListMemberAccountsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension FMS.ListPoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FMS.ListPoliciesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
