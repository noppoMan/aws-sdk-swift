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

extension ELB {
    ///  Describes the specified the load balancers. If no load balancers are specified, the call describes all of your load balancers.
    public func describeLoadBalancersPaginator(
        _ input: DescribeAccessPointsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeAccessPointsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeLoadBalancers,
            tokenKey: \DescribeAccessPointsOutput.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ELB.DescribeAccessPointsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ELB.DescribeAccessPointsInput {
        return .init(
            loadBalancerNames: self.loadBalancerNames,
            marker: token,
            pageSize: self.pageSize
        )
    }
}
