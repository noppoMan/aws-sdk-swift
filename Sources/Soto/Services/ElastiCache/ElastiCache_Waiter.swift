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

extension ElastiCache {
    public func waitUntilCacheClusterAvailable(
        _ input: DescribeCacheClustersMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \CacheClusterMessage.cacheClusters, elementPath: \CacheCluster.cacheClusterStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \CacheClusterMessage.cacheClusters, elementPath: \CacheCluster.cacheClusterStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \CacheClusterMessage.cacheClusters, elementPath: \CacheCluster.cacheClusterStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \CacheClusterMessage.cacheClusters, elementPath: \CacheCluster.cacheClusterStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \CacheClusterMessage.cacheClusters, elementPath: \CacheCluster.cacheClusterStatus, expected: "string")),
            ],
            command: describeCacheClusters
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilCacheClusterDeleted(
        _ input: DescribeCacheClustersMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \CacheClusterMessage.cacheClusters, elementPath: \CacheCluster.cacheClusterStatus, expected: "string")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("CacheClusterNotFound")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \CacheClusterMessage.cacheClusters, elementPath: \CacheCluster.cacheClusterStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \CacheClusterMessage.cacheClusters, elementPath: \CacheCluster.cacheClusterStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \CacheClusterMessage.cacheClusters, elementPath: \CacheCluster.cacheClusterStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \CacheClusterMessage.cacheClusters, elementPath: \CacheCluster.cacheClusterStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \CacheClusterMessage.cacheClusters, elementPath: \CacheCluster.cacheClusterStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \CacheClusterMessage.cacheClusters, elementPath: \CacheCluster.cacheClusterStatus, expected: "string")),
            ],
            command: describeCacheClusters
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilReplicationGroupAvailable(
        _ input: DescribeReplicationGroupsMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \ReplicationGroupMessage.replicationGroups, elementPath: \ReplicationGroup.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \ReplicationGroupMessage.replicationGroups, elementPath: \ReplicationGroup.status, expected: "string")),
            ],
            command: describeReplicationGroups
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilReplicationGroupDeleted(
        _ input: DescribeReplicationGroupsMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \ReplicationGroupMessage.replicationGroups, elementPath: \ReplicationGroup.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \ReplicationGroupMessage.replicationGroups, elementPath: \ReplicationGroup.status, expected: "string")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("ReplicationGroupNotFoundFault")),
            ],
            command: describeReplicationGroups
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
