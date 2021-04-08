//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension Schemas {
    ///  List the discoverers.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDiscoverersPaginator<Result>(
        _ input: ListDiscoverersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDiscoverersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDiscoverers,
            inputKey: \ListDiscoverersRequest.nextToken,
            outputKey: \ListDiscoverersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDiscoverersPaginator(
        _ input: ListDiscoverersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDiscoverersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDiscoverers,
            inputKey: \ListDiscoverersRequest.nextToken,
            outputKey: \ListDiscoverersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    #if compiler(>=5.4) && $AsyncAwait
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDiscoverersPaginator(
        _ input: ListDiscoverersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDiscoverersRequest, ListDiscoverersResponse> {
        return .init(
            input: input,
            command: listDiscoverers,
            inputKey: \ListDiscoverersRequest.nextToken,
            outputKey: \ListDiscoverersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
    #endif

    ///  List the registries.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listRegistriesPaginator<Result>(
        _ input: ListRegistriesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRegistriesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRegistries,
            inputKey: \ListRegistriesRequest.nextToken,
            outputKey: \ListRegistriesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listRegistriesPaginator(
        _ input: ListRegistriesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRegistriesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRegistries,
            inputKey: \ListRegistriesRequest.nextToken,
            outputKey: \ListRegistriesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    #if compiler(>=5.4) && $AsyncAwait
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRegistriesPaginator(
        _ input: ListRegistriesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRegistriesRequest, ListRegistriesResponse> {
        return .init(
            input: input,
            command: listRegistries,
            inputKey: \ListRegistriesRequest.nextToken,
            outputKey: \ListRegistriesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
    #endif

    ///  Provides a list of the schema versions and related information.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSchemaVersionsPaginator<Result>(
        _ input: ListSchemaVersionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSchemaVersionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSchemaVersions,
            inputKey: \ListSchemaVersionsRequest.nextToken,
            outputKey: \ListSchemaVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSchemaVersionsPaginator(
        _ input: ListSchemaVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSchemaVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSchemaVersions,
            inputKey: \ListSchemaVersionsRequest.nextToken,
            outputKey: \ListSchemaVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    #if compiler(>=5.4) && $AsyncAwait
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSchemaVersionsPaginator(
        _ input: ListSchemaVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSchemaVersionsRequest, ListSchemaVersionsResponse> {
        return .init(
            input: input,
            command: listSchemaVersions,
            inputKey: \ListSchemaVersionsRequest.nextToken,
            outputKey: \ListSchemaVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
    #endif

    ///  List the schemas.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSchemasPaginator<Result>(
        _ input: ListSchemasRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSchemasResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSchemas,
            inputKey: \ListSchemasRequest.nextToken,
            outputKey: \ListSchemasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSchemasPaginator(
        _ input: ListSchemasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSchemasResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSchemas,
            inputKey: \ListSchemasRequest.nextToken,
            outputKey: \ListSchemasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    #if compiler(>=5.4) && $AsyncAwait
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSchemasPaginator(
        _ input: ListSchemasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSchemasRequest, ListSchemasResponse> {
        return .init(
            input: input,
            command: listSchemas,
            inputKey: \ListSchemasRequest.nextToken,
            outputKey: \ListSchemasResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
    #endif

    ///  Search the schemas
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func searchSchemasPaginator<Result>(
        _ input: SearchSchemasRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, SearchSchemasResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: searchSchemas,
            inputKey: \SearchSchemasRequest.nextToken,
            outputKey: \SearchSchemasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func searchSchemasPaginator(
        _ input: SearchSchemasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (SearchSchemasResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchSchemas,
            inputKey: \SearchSchemasRequest.nextToken,
            outputKey: \SearchSchemasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    #if compiler(>=5.4) && $AsyncAwait
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchSchemasPaginator(
        _ input: SearchSchemasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchSchemasRequest, SearchSchemasResponse> {
        return .init(
            input: input,
            command: searchSchemas,
            inputKey: \SearchSchemasRequest.nextToken,
            outputKey: \SearchSchemasResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
    #endif
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
