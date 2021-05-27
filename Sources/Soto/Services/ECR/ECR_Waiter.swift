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

extension ECR {
    public func waitUntilImageScanComplete(
        _ input: DescribeImageScanFindingsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \DescribeImageScanFindingsResponse.imageScanStatus?.status, expected: .complete)),
                .init(state: .failure, matcher: AWSPathMatcher(path: \DescribeImageScanFindingsResponse.imageScanStatus?.status, expected: .failed)),
            ],
            minDelayTime: .seconds(5),
            command: describeImageScanFindings
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilLifecyclePolicyPreviewComplete(
        _ input: GetLifecyclePolicyPreviewRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \GetLifecyclePolicyPreviewResponse.status, expected: .complete)),
                .init(state: .failure, matcher: AWSPathMatcher(path: \GetLifecyclePolicyPreviewResponse.status, expected: .failed)),
            ],
            minDelayTime: .seconds(5),
            command: getLifecyclePolicyPreview
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
