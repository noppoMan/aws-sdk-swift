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

extension Schemas {
    ///  List the discoverers.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDiscoverersPaginator<Result>(
        _ input: ListDiscoverersRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListDiscoverersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDiscoverers,
            tokenKey: \ListDiscoverersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDiscoverersPaginator(
        _ input: ListDiscoverersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDiscoverersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDiscoverers,
            tokenKey: \ListDiscoverersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the registries.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listRegistriesPaginator<Result>(
        _ input: ListRegistriesRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListRegistriesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRegistries,
            tokenKey: \ListRegistriesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listRegistriesPaginator(
        _ input: ListRegistriesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRegistriesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRegistries,
            tokenKey: \ListRegistriesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Provides a list of the schema versions and related information.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSchemaVersionsPaginator<Result>(
        _ input: ListSchemaVersionsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListSchemaVersionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSchemaVersions,
            tokenKey: \ListSchemaVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSchemaVersionsPaginator(
        _ input: ListSchemaVersionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSchemaVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSchemaVersions,
            tokenKey: \ListSchemaVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the schemas.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSchemasPaginator<Result>(
        _ input: ListSchemasRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListSchemasResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSchemas,
            tokenKey: \ListSchemasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSchemasPaginator(
        _ input: ListSchemasRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSchemasResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSchemas,
            tokenKey: \ListSchemasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Search the schemas
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func searchSchemasPaginator<Result>(
        _ input: SearchSchemasRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, SearchSchemasResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: searchSchemas,
            tokenKey: \SearchSchemasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func searchSchemasPaginator(
        _ input: SearchSchemasRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchSchemasResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchSchemas,
            tokenKey: \SearchSchemasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Schemas.ListDiscoverersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Schemas.ListDiscoverersRequest {
        return .init(
            discovererIdPrefix: self.discovererIdPrefix,
            limit: self.limit,
            nextToken: token,
            sourceArnPrefix: self.sourceArnPrefix
        )
    }
}

extension Schemas.ListRegistriesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Schemas.ListRegistriesRequest {
        return .init(
            limit: self.limit,
            nextToken: token,
            registryNamePrefix: self.registryNamePrefix,
            scope: self.scope
        )
    }
}

extension Schemas.ListSchemaVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Schemas.ListSchemaVersionsRequest {
        return .init(
            limit: self.limit,
            nextToken: token,
            registryName: self.registryName,
            schemaName: self.schemaName
        )
    }
}

extension Schemas.ListSchemasRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Schemas.ListSchemasRequest {
        return .init(
            limit: self.limit,
            nextToken: token,
            registryName: self.registryName,
            schemaNamePrefix: self.schemaNamePrefix
        )
    }
}

extension Schemas.SearchSchemasRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Schemas.SearchSchemasRequest {
        return .init(
            keywords: self.keywords,
            limit: self.limit,
            nextToken: token,
            registryName: self.registryName
        )
    }
}
