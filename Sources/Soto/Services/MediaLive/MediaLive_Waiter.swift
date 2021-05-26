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

@_exported import SotoCore

import SotoCore

// MARK: Waiters

extension MediaLive {
    public func waitUntilChannelCreated(
        _ input: DescribeChannelRequest,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \DescribeChannelResponse.state, expected: .idle)),
                .init(state: .retry, matcher: AWSPathMatcher(path: \DescribeChannelResponse.state, expected: .creating)),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
                .init(state: .failure, matcher: AWSPathMatcher(path: \DescribeChannelResponse.state, expected: .createFailed)),
            ],
            command: describeChannel
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilChannelDeleted(
        _ input: DescribeChannelRequest,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \DescribeChannelResponse.state, expected: .deleted)),
                .init(state: .retry, matcher: AWSPathMatcher(path: \DescribeChannelResponse.state, expected: .deleting)),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            command: describeChannel
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilChannelRunning(
        _ input: DescribeChannelRequest,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \DescribeChannelResponse.state, expected: .running)),
                .init(state: .retry, matcher: AWSPathMatcher(path: \DescribeChannelResponse.state, expected: .starting)),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            command: describeChannel
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilChannelStopped(
        _ input: DescribeChannelRequest,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \DescribeChannelResponse.state, expected: .idle)),
                .init(state: .retry, matcher: AWSPathMatcher(path: \DescribeChannelResponse.state, expected: .stopping)),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            command: describeChannel
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInputAttached(
        _ input: DescribeInputRequest,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \DescribeInputResponse.state, expected: .attached)),
                .init(state: .retry, matcher: AWSPathMatcher(path: \DescribeInputResponse.state, expected: .detached)),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            command: describeInput
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInputDeleted(
        _ input: DescribeInputRequest,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \DescribeInputResponse.state, expected: .deleted)),
                .init(state: .retry, matcher: AWSPathMatcher(path: \DescribeInputResponse.state, expected: .deleting)),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            command: describeInput
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInputDetached(
        _ input: DescribeInputRequest,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \DescribeInputResponse.state, expected: .detached)),
                .init(state: .retry, matcher: AWSPathMatcher(path: \DescribeInputResponse.state, expected: .creating)),
                .init(state: .retry, matcher: AWSPathMatcher(path: \DescribeInputResponse.state, expected: .attached)),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            command: describeInput
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilMultiplexCreated(
        _ input: DescribeMultiplexRequest,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \DescribeMultiplexResponse.state, expected: .idle)),
                .init(state: .retry, matcher: AWSPathMatcher(path: \DescribeMultiplexResponse.state, expected: .creating)),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
                .init(state: .failure, matcher: AWSPathMatcher(path: \DescribeMultiplexResponse.state, expected: .createFailed)),
            ],
            command: describeMultiplex
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilMultiplexDeleted(
        _ input: DescribeMultiplexRequest,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \DescribeMultiplexResponse.state, expected: .deleted)),
                .init(state: .retry, matcher: AWSPathMatcher(path: \DescribeMultiplexResponse.state, expected: .deleting)),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            command: describeMultiplex
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilMultiplexRunning(
        _ input: DescribeMultiplexRequest,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \DescribeMultiplexResponse.state, expected: .running)),
                .init(state: .retry, matcher: AWSPathMatcher(path: \DescribeMultiplexResponse.state, expected: .starting)),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            command: describeMultiplex
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilMultiplexStopped(
        _ input: DescribeMultiplexRequest,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \DescribeMultiplexResponse.state, expected: .idle)),
                .init(state: .retry, matcher: AWSPathMatcher(path: \DescribeMultiplexResponse.state, expected: .stopping)),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            command: describeMultiplex
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
