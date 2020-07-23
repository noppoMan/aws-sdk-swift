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

extension EKS {

    ///  Lists the Amazon EKS clusters in your AWS account in the specified Region.
    public func listClustersPaginator(
        _ input: ListClustersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListClustersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listClusters, tokenKey: \ListClustersResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the AWS Fargate profiles associated with the specified cluster in your AWS account in the specified Region.
    public func listFargateProfilesPaginator(
        _ input: ListFargateProfilesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListFargateProfilesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFargateProfiles, tokenKey: \ListFargateProfilesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the Amazon EKS managed node groups associated with the specified cluster in your AWS account in the specified Region. Self-managed node groups are not listed.
    public func listNodegroupsPaginator(
        _ input: ListNodegroupsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListNodegroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listNodegroups, tokenKey: \ListNodegroupsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the updates associated with an Amazon EKS cluster or managed node group in your AWS account, in the specified Region.
    public func listUpdatesPaginator(
        _ input: ListUpdatesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListUpdatesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUpdates, tokenKey: \ListUpdatesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension EKS.ListClustersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EKS.ListClustersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension EKS.ListFargateProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EKS.ListFargateProfilesRequest {
        return .init(
            clusterName: self.clusterName,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension EKS.ListNodegroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EKS.ListNodegroupsRequest {
        return .init(
            clusterName: self.clusterName,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension EKS.ListUpdatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EKS.ListUpdatesRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            nodegroupName: self.nodegroupName
        )

    }
}


