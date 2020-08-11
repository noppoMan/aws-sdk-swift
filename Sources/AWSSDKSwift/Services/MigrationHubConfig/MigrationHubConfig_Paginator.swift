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

import AWSSDKSwiftCore

//MARK: Paginators

extension MigrationHubConfig {

    ///  This API permits filtering on the ControlId and HomeRegion fields.
    public func describeHomeRegionControlsPaginator(
        _ input: DescribeHomeRegionControlsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeHomeRegionControlsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeHomeRegionControls, tokenKey: \DescribeHomeRegionControlsResult.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension MigrationHubConfig.DescribeHomeRegionControlsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MigrationHubConfig.DescribeHomeRegionControlsRequest {
        return .init(
            controlId: self.controlId,
            homeRegion: self.homeRegion,
            maxResults: self.maxResults,
            nextToken: token,
            target: self.target
        )

    }
}


