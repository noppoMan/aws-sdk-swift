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

extension IoTAnalytics {
    ///  Retrieves a list of channels.
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
    public func listChannelsPaginator<Result>(
        _ input: ListChannelsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListChannelsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listChannels,
            tokenKey: \ListChannelsResponse.nextToken,
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
    public func listChannelsPaginator(
        _ input: ListChannelsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListChannelsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listChannels,
            tokenKey: \ListChannelsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists information about data set contents that have been created.
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
    public func listDatasetContentsPaginator<Result>(
        _ input: ListDatasetContentsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListDatasetContentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDatasetContents,
            tokenKey: \ListDatasetContentsResponse.nextToken,
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
    public func listDatasetContentsPaginator(
        _ input: ListDatasetContentsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDatasetContentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDatasetContents,
            tokenKey: \ListDatasetContentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves information about data sets.
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
    public func listDatasetsPaginator<Result>(
        _ input: ListDatasetsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListDatasetsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDatasets,
            tokenKey: \ListDatasetsResponse.nextToken,
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
    public func listDatasetsPaginator(
        _ input: ListDatasetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDatasetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDatasets,
            tokenKey: \ListDatasetsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of data stores.
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
    public func listDatastoresPaginator<Result>(
        _ input: ListDatastoresRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListDatastoresResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDatastores,
            tokenKey: \ListDatastoresResponse.nextToken,
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
    public func listDatastoresPaginator(
        _ input: ListDatastoresRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDatastoresResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDatastores,
            tokenKey: \ListDatastoresResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of pipelines.
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
    public func listPipelinesPaginator<Result>(
        _ input: ListPipelinesRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListPipelinesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPipelines,
            tokenKey: \ListPipelinesResponse.nextToken,
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
    public func listPipelinesPaginator(
        _ input: ListPipelinesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPipelinesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPipelines,
            tokenKey: \ListPipelinesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension IoTAnalytics.ListChannelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTAnalytics.ListChannelsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension IoTAnalytics.ListDatasetContentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTAnalytics.ListDatasetContentsRequest {
        return .init(
            datasetName: self.datasetName,
            maxResults: self.maxResults,
            nextToken: token,
            scheduledBefore: self.scheduledBefore,
            scheduledOnOrAfter: self.scheduledOnOrAfter
        )
    }
}

extension IoTAnalytics.ListDatasetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTAnalytics.ListDatasetsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension IoTAnalytics.ListDatastoresRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTAnalytics.ListDatastoresRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension IoTAnalytics.ListPipelinesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTAnalytics.ListPipelinesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
