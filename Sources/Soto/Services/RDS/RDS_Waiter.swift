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

extension RDS {
    public func waitUntilDBClusterSnapshotAvailable(
        _ input: DescribeDBClusterSnapshotsMessage,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DBClusterSnapshotMessage.dBClusterSnapshots, elementPath: \DBClusterSnapshot.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DBClusterSnapshotMessage.dBClusterSnapshots, elementPath: \DBClusterSnapshot.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DBClusterSnapshotMessage.dBClusterSnapshots, elementPath: \DBClusterSnapshot.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DBClusterSnapshotMessage.dBClusterSnapshots, elementPath: \DBClusterSnapshot.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DBClusterSnapshotMessage.dBClusterSnapshots, elementPath: \DBClusterSnapshot.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DBClusterSnapshotMessage.dBClusterSnapshots, elementPath: \DBClusterSnapshot.status, expected: "string")),
            ],
            command: describeDBClusterSnapshots
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilDBInstanceAvailable(
        _ input: DescribeDBInstancesMessage,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DBInstanceMessage.dBInstances, elementPath: \DBInstance.dBInstanceStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DBInstanceMessage.dBInstances, elementPath: \DBInstance.dBInstanceStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DBInstanceMessage.dBInstances, elementPath: \DBInstance.dBInstanceStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DBInstanceMessage.dBInstances, elementPath: \DBInstance.dBInstanceStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DBInstanceMessage.dBInstances, elementPath: \DBInstance.dBInstanceStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DBInstanceMessage.dBInstances, elementPath: \DBInstance.dBInstanceStatus, expected: "string")),
            ],
            command: describeDBInstances
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilDBSnapshotAvailable(
        _ input: DescribeDBSnapshotsMessage,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DBSnapshotMessage.dBSnapshots, elementPath: \DBSnapshot.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DBSnapshotMessage.dBSnapshots, elementPath: \DBSnapshot.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DBSnapshotMessage.dBSnapshots, elementPath: \DBSnapshot.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DBSnapshotMessage.dBSnapshots, elementPath: \DBSnapshot.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DBSnapshotMessage.dBSnapshots, elementPath: \DBSnapshot.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DBSnapshotMessage.dBSnapshots, elementPath: \DBSnapshot.status, expected: "string")),
            ],
            command: describeDBSnapshots
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
