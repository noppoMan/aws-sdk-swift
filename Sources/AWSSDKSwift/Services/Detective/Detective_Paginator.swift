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

//MARK: Paginators

extension Detective {

    ///  Returns the list of behavior graphs that the calling account is a master of. This operation can only be called by a master account. Because an account can currently only be the master of one behavior graph within a Region, the results always contain a single graph.
    public func listGraphsPaginator(
        _ input: ListGraphsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListGraphsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGraphs, tokenKey: \ListGraphsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Retrieves the list of open and accepted behavior graph invitations for the member account. This operation can only be called by a member account. Open invitations are invitations that the member account has not responded to. The results do not include behavior graphs for which the member account declined the invitation. The results also do not include behavior graphs that the member account resigned from or was removed from.
    public func listInvitationsPaginator(
        _ input: ListInvitationsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListInvitationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listInvitations, tokenKey: \ListInvitationsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Retrieves the list of member accounts for a behavior graph. Does not return member accounts that were removed from the behavior graph.
    public func listMembersPaginator(
        _ input: ListMembersRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMembersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listMembers, tokenKey: \ListMembersResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension Detective.ListGraphsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Detective.ListGraphsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Detective.ListInvitationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Detective.ListInvitationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Detective.ListMembersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Detective.ListMembersRequest {
        return .init(
            graphArn: self.graphArn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


