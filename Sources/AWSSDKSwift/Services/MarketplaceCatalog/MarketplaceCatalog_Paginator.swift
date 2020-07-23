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

extension MarketplaceCatalog {

    ///  Returns the list of change sets owned by the account being used to make the call. You can filter this list by providing any combination of entityId, ChangeSetName, and status. If you provide more than one filter, the API operation applies a logical AND between the filters. You can describe a change during the 60-day request history retention period for API calls.
    public func listChangeSetsPaginator(
        _ input: ListChangeSetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logging.Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListChangeSetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listChangeSets, tokenKey: \ListChangeSetsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Provides the list of entities of a given type.
    public func listEntitiesPaginator(
        _ input: ListEntitiesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logging.Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListEntitiesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listEntities, tokenKey: \ListEntitiesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension MarketplaceCatalog.ListChangeSetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MarketplaceCatalog.ListChangeSetsRequest {
        return .init(
            catalog: self.catalog,
            filterList: self.filterList,
            maxResults: self.maxResults,
            nextToken: token,
            sort: self.sort
        )

    }
}

extension MarketplaceCatalog.ListEntitiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MarketplaceCatalog.ListEntitiesRequest {
        return .init(
            catalog: self.catalog,
            entityType: self.entityType,
            filterList: self.filterList,
            maxResults: self.maxResults,
            nextToken: token,
            sort: self.sort
        )

    }
}


