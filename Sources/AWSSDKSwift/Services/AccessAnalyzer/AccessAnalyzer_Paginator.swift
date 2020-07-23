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

extension AccessAnalyzer {

    ///  Retrieves a list of resources of the specified type that have been analyzed by the specified analyzer..
    public func listAnalyzedResourcesPaginator(
        _ input: ListAnalyzedResourcesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAnalyzedResourcesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAnalyzedResources, tokenKey: \ListAnalyzedResourcesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Retrieves a list of analyzers.
    public func listAnalyzersPaginator(
        _ input: ListAnalyzersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAnalyzersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAnalyzers, tokenKey: \ListAnalyzersResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Retrieves a list of archive rules created for the specified analyzer.
    public func listArchiveRulesPaginator(
        _ input: ListArchiveRulesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListArchiveRulesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listArchiveRules, tokenKey: \ListArchiveRulesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Retrieves a list of findings generated by the specified analyzer.
    public func listFindingsPaginator(
        _ input: ListFindingsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListFindingsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFindings, tokenKey: \ListFindingsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension AccessAnalyzer.ListAnalyzedResourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ListAnalyzedResourcesRequest {
        return .init(
            analyzerArn: self.analyzerArn,
            maxResults: self.maxResults,
            nextToken: token,
            resourceType: self.resourceType
        )

    }
}

extension AccessAnalyzer.ListAnalyzersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ListAnalyzersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            type: self.type
        )

    }
}

extension AccessAnalyzer.ListArchiveRulesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ListArchiveRulesRequest {
        return .init(
            analyzerName: self.analyzerName,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension AccessAnalyzer.ListFindingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ListFindingsRequest {
        return .init(
            analyzerArn: self.analyzerArn,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            sort: self.sort
        )

    }
}


