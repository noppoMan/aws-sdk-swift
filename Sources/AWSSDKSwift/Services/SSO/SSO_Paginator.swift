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
import Logging

//MARK: Paginators

extension SSO {

    ///  Lists all roles that are assigned to the user for a given AWS account.
    public func listAccountRolesPaginator(
        _ input: ListAccountRolesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logging.Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAccountRolesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAccountRoles, tokenKey: \ListAccountRolesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists all AWS accounts assigned to the user. These AWS accounts are assigned by the administrator of the account. For more information, see Assign User Access in the AWS SSO User Guide. This operation returns a paginated response.
    public func listAccountsPaginator(
        _ input: ListAccountsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logging.Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAccountsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAccounts, tokenKey: \ListAccountsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension SSO.ListAccountRolesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSO.ListAccountRolesRequest {
        return .init(
            accessToken: self.accessToken,
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension SSO.ListAccountsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSO.ListAccountsRequest {
        return .init(
            accessToken: self.accessToken,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


