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

#if compiler(>=5.5) && $AsyncAwait

import SotoCore

// MARK: Paginators

@available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
extension EKS {
    ///  Describes the Kubernetes versions that the add-on can be used with.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeAddonVersionsPaginator(
        _ input: DescribeAddonVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeAddonVersionsRequest, DescribeAddonVersionsResponse> {
        return .init(
            input: input,
            command: describeAddonVersions,
            inputKey: \DescribeAddonVersionsRequest.nextToken,
            outputKey: \DescribeAddonVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the available add-ons.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAddonsPaginator(
        _ input: ListAddonsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAddonsRequest, ListAddonsResponse> {
        return .init(
            input: input,
            command: listAddons,
            inputKey: \ListAddonsRequest.nextToken,
            outputKey: \ListAddonsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the Amazon EKS clusters in your AWS account in the specified Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listClustersPaginator(
        _ input: ListClustersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListClustersRequest, ListClustersResponse> {
        return .init(
            input: input,
            command: listClusters,
            inputKey: \ListClustersRequest.nextToken,
            outputKey: \ListClustersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the AWS Fargate profiles associated with the specified cluster in your AWS account in the specified Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFargateProfilesPaginator(
        _ input: ListFargateProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFargateProfilesRequest, ListFargateProfilesResponse> {
        return .init(
            input: input,
            command: listFargateProfiles,
            inputKey: \ListFargateProfilesRequest.nextToken,
            outputKey: \ListFargateProfilesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  A list of identity provider configurations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listIdentityProviderConfigsPaginator(
        _ input: ListIdentityProviderConfigsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListIdentityProviderConfigsRequest, ListIdentityProviderConfigsResponse> {
        return .init(
            input: input,
            command: listIdentityProviderConfigs,
            inputKey: \ListIdentityProviderConfigsRequest.nextToken,
            outputKey: \ListIdentityProviderConfigsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the Amazon EKS managed node groups associated with the specified cluster in your AWS account in the specified Region. Self-managed node groups are not listed.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listNodegroupsPaginator(
        _ input: ListNodegroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListNodegroupsRequest, ListNodegroupsResponse> {
        return .init(
            input: input,
            command: listNodegroups,
            inputKey: \ListNodegroupsRequest.nextToken,
            outputKey: \ListNodegroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the updates associated with an Amazon EKS cluster or managed node group in your AWS account, in the specified Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUpdatesPaginator(
        _ input: ListUpdatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUpdatesRequest, ListUpdatesResponse> {
        return .init(
            input: input,
            command: listUpdates,
            inputKey: \ListUpdatesRequest.nextToken,
            outputKey: \ListUpdatesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
