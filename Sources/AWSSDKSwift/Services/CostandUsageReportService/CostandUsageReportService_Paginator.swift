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
import Logging

//MARK: Paginators

extension CostandUsageReportService {

    ///  Lists the AWS Cost and Usage reports available to this account.
    public func describeReportDefinitionsPaginator(
        _ input: DescribeReportDefinitionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logging.Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeReportDefinitionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeReportDefinitions, tokenKey: \DescribeReportDefinitionsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension CostandUsageReportService.DescribeReportDefinitionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CostandUsageReportService.DescribeReportDefinitionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


