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

extension Mobile {

    ///   List all available bundles. 
    public func listBundlesPaginator(
        _ input: ListBundlesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBundlesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listBundles, tokenKey: \ListBundlesResult.nextToken, on: eventLoop, onPage: onPage)
    }

    ///   Lists projects in AWS Mobile Hub. 
    public func listProjectsPaginator(
        _ input: ListProjectsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListProjectsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProjects, tokenKey: \ListProjectsResult.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension Mobile.ListBundlesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Mobile.ListBundlesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Mobile.ListProjectsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Mobile.ListProjectsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


