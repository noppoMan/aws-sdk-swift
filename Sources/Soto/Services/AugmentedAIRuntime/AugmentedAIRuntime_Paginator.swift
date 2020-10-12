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

extension AugmentedAIRuntime {
    ///  Returns information about human loops, given the specified parameters. If a human loop was deleted, it will not be included.
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
    public func listHumanLoopsPaginator<Result>(
        _ input: ListHumanLoopsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListHumanLoopsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listHumanLoops,
            tokenKey: \ListHumanLoopsResponse.nextToken,
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
    public func listHumanLoopsPaginator(
        _ input: ListHumanLoopsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListHumanLoopsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listHumanLoops,
            tokenKey: \ListHumanLoopsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension AugmentedAIRuntime.ListHumanLoopsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AugmentedAIRuntime.ListHumanLoopsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            flowDefinitionArn: self.flowDefinitionArn,
            maxResults: self.maxResults,
            nextToken: token,
            sortOrder: self.sortOrder
        )
    }
}
