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

extension MQ {
    ///  Returns a list of all brokers.
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
    public func listBrokersPaginator<Result>(
        _ input: ListBrokersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBrokersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBrokers,
            inputKey: \ListBrokersRequest.nextToken,
            outputKey: \ListBrokersResponse.nextToken,
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
    public func listBrokersPaginator(
        _ input: ListBrokersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBrokersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBrokers,
            inputKey: \ListBrokersRequest.nextToken,
            outputKey: \ListBrokersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension MQ.ListBrokersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MQ.ListBrokersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
