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

extension DataSync {
    ///  Returns a list of agents owned by an AWS account in the AWS Region specified in the request. The returned list is ordered by agent Amazon Resource Name (ARN). By default, this operation returns a maximum of 100 agents. This operation supports pagination that enables you to optionally reduce the number of agents returned in a response. If you have more agents than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a marker that you can specify in your next request to fetch the next page of agents.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAgentsPaginator<Result>(
        _ input: ListAgentsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAgentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAgents,
            inputKey: \ListAgentsRequest.nextToken,
            outputKey: \ListAgentsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAgentsPaginator(
        _ input: ListAgentsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAgentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAgents,
            inputKey: \ListAgentsRequest.nextToken,
            outputKey: \ListAgentsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of source and destination locations. If you have more locations than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a token that you can specify in your next request to fetch the next page of locations.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listLocationsPaginator<Result>(
        _ input: ListLocationsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListLocationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listLocations,
            inputKey: \ListLocationsRequest.nextToken,
            outputKey: \ListLocationsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listLocationsPaginator(
        _ input: ListLocationsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListLocationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listLocations,
            inputKey: \ListLocationsRequest.nextToken,
            outputKey: \ListLocationsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns all the tags associated with a specified resource.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listTagsForResourcePaginator<Result>(
        _ input: ListTagsForResourceRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTagsForResourceResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceRequest.nextToken,
            outputKey: \ListTagsForResourceResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTagsForResourceResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceRequest.nextToken,
            outputKey: \ListTagsForResourceResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of executed tasks.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listTaskExecutionsPaginator<Result>(
        _ input: ListTaskExecutionsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTaskExecutionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTaskExecutions,
            inputKey: \ListTaskExecutionsRequest.nextToken,
            outputKey: \ListTaskExecutionsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listTaskExecutionsPaginator(
        _ input: ListTaskExecutionsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTaskExecutionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTaskExecutions,
            inputKey: \ListTaskExecutionsRequest.nextToken,
            outputKey: \ListTaskExecutionsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of all the tasks.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listTasksPaginator<Result>(
        _ input: ListTasksRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTasksResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTasks,
            inputKey: \ListTasksRequest.nextToken,
            outputKey: \ListTasksResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listTasksPaginator(
        _ input: ListTasksRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTasksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTasks,
            inputKey: \ListTasksRequest.nextToken,
            outputKey: \ListTasksResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension DataSync.ListAgentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataSync.ListAgentsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension DataSync.ListLocationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataSync.ListLocationsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension DataSync.ListTagsForResourceRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataSync.ListTagsForResourceRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )
    }
}

extension DataSync.ListTaskExecutionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataSync.ListTaskExecutionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            taskArn: self.taskArn
        )
    }
}

extension DataSync.ListTasksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataSync.ListTasksRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
