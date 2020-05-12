//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension ElasticInference {

    ///   Describes information over a provided set of accelerators belonging to an account. 
    public func describeAcceleratorsPaginator(
        _ input: DescribeAcceleratorsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeAcceleratorsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeAccelerators, tokenKey: \DescribeAcceleratorsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension ElasticInference.DescribeAcceleratorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticInference.DescribeAcceleratorsRequest {
        return .init(
            acceleratorIds: self.acceleratorIds,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


