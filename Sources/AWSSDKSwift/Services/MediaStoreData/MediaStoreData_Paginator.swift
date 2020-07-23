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

extension MediaStoreData {

    ///  Provides a list of metadata entries about folders and objects in the specified folder.
    public func listItemsPaginator(
        _ input: ListItemsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListItemsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listItems, tokenKey: \ListItemsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension MediaStoreData.ListItemsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaStoreData.ListItemsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            path: self.path
        )

    }
}


