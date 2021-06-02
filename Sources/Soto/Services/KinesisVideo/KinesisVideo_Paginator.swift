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

extension KinesisVideo {
    ///  Returns an array of ChannelInfo objects. Each object describes a signaling channel. To retrieve only those channels that satisfy a specific condition, you can specify a ChannelNameCondition.
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
    public func listSignalingChannelsPaginator<Result>(
        _ input: ListSignalingChannelsInput,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSignalingChannelsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSignalingChannels,
            inputKey: \ListSignalingChannelsInput.nextToken,
            outputKey: \ListSignalingChannelsOutput.nextToken,
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
    public func listSignalingChannelsPaginator(
        _ input: ListSignalingChannelsInput,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSignalingChannelsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSignalingChannels,
            inputKey: \ListSignalingChannelsInput.nextToken,
            outputKey: \ListSignalingChannelsOutput.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns an array of StreamInfo objects. Each object describes a stream. To retrieve only streams that satisfy a specific condition, you can specify a StreamNameCondition.
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
    public func listStreamsPaginator<Result>(
        _ input: ListStreamsInput,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListStreamsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listStreams,
            inputKey: \ListStreamsInput.nextToken,
            outputKey: \ListStreamsOutput.nextToken,
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
    public func listStreamsPaginator(
        _ input: ListStreamsInput,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListStreamsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listStreams,
            inputKey: \ListStreamsInput.nextToken,
            outputKey: \ListStreamsOutput.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension KinesisVideo.ListSignalingChannelsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KinesisVideo.ListSignalingChannelsInput {
        return .init(
            channelNameCondition: self.channelNameCondition,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension KinesisVideo.ListStreamsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KinesisVideo.ListStreamsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            streamNameCondition: self.streamNameCondition
        )
    }
}
