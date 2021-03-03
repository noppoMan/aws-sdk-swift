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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension Route53Resolver {
    ///  Lists the configurations for DNSSEC validation that are associated with the current AWS account.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listResolverDnssecConfigsPaginator<Result>(
        _ input: ListResolverDnssecConfigsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListResolverDnssecConfigsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listResolverDnssecConfigs,
            inputKey: \ListResolverDnssecConfigsRequest.nextToken,
            outputKey: \ListResolverDnssecConfigsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listResolverDnssecConfigsPaginator(
        _ input: ListResolverDnssecConfigsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListResolverDnssecConfigsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResolverDnssecConfigs,
            inputKey: \ListResolverDnssecConfigsRequest.nextToken,
            outputKey: \ListResolverDnssecConfigsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets the IP addresses for a specified Resolver endpoint.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listResolverEndpointIpAddressesPaginator<Result>(
        _ input: ListResolverEndpointIpAddressesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListResolverEndpointIpAddressesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listResolverEndpointIpAddresses,
            inputKey: \ListResolverEndpointIpAddressesRequest.nextToken,
            outputKey: \ListResolverEndpointIpAddressesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listResolverEndpointIpAddressesPaginator(
        _ input: ListResolverEndpointIpAddressesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListResolverEndpointIpAddressesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResolverEndpointIpAddresses,
            inputKey: \ListResolverEndpointIpAddressesRequest.nextToken,
            outputKey: \ListResolverEndpointIpAddressesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all the Resolver endpoints that were created using the current AWS account.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listResolverEndpointsPaginator<Result>(
        _ input: ListResolverEndpointsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListResolverEndpointsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listResolverEndpoints,
            inputKey: \ListResolverEndpointsRequest.nextToken,
            outputKey: \ListResolverEndpointsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listResolverEndpointsPaginator(
        _ input: ListResolverEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListResolverEndpointsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResolverEndpoints,
            inputKey: \ListResolverEndpointsRequest.nextToken,
            outputKey: \ListResolverEndpointsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists information about associations between Amazon VPCs and query logging configurations.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listResolverQueryLogConfigAssociationsPaginator<Result>(
        _ input: ListResolverQueryLogConfigAssociationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListResolverQueryLogConfigAssociationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listResolverQueryLogConfigAssociations,
            inputKey: \ListResolverQueryLogConfigAssociationsRequest.nextToken,
            outputKey: \ListResolverQueryLogConfigAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listResolverQueryLogConfigAssociationsPaginator(
        _ input: ListResolverQueryLogConfigAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListResolverQueryLogConfigAssociationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResolverQueryLogConfigAssociations,
            inputKey: \ListResolverQueryLogConfigAssociationsRequest.nextToken,
            outputKey: \ListResolverQueryLogConfigAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists information about the specified query logging configurations. Each configuration defines where you want Resolver to save DNS query logs and specifies the VPCs that you want to log queries for.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listResolverQueryLogConfigsPaginator<Result>(
        _ input: ListResolverQueryLogConfigsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListResolverQueryLogConfigsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listResolverQueryLogConfigs,
            inputKey: \ListResolverQueryLogConfigsRequest.nextToken,
            outputKey: \ListResolverQueryLogConfigsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listResolverQueryLogConfigsPaginator(
        _ input: ListResolverQueryLogConfigsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListResolverQueryLogConfigsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResolverQueryLogConfigs,
            inputKey: \ListResolverQueryLogConfigsRequest.nextToken,
            outputKey: \ListResolverQueryLogConfigsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the associations that were created between Resolver rules and VPCs using the current AWS account.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listResolverRuleAssociationsPaginator<Result>(
        _ input: ListResolverRuleAssociationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListResolverRuleAssociationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listResolverRuleAssociations,
            inputKey: \ListResolverRuleAssociationsRequest.nextToken,
            outputKey: \ListResolverRuleAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listResolverRuleAssociationsPaginator(
        _ input: ListResolverRuleAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListResolverRuleAssociationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResolverRuleAssociations,
            inputKey: \ListResolverRuleAssociationsRequest.nextToken,
            outputKey: \ListResolverRuleAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the Resolver rules that were created using the current AWS account.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listResolverRulesPaginator<Result>(
        _ input: ListResolverRulesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListResolverRulesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listResolverRules,
            inputKey: \ListResolverRulesRequest.nextToken,
            outputKey: \ListResolverRulesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listResolverRulesPaginator(
        _ input: ListResolverRulesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListResolverRulesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResolverRules,
            inputKey: \ListResolverRulesRequest.nextToken,
            outputKey: \ListResolverRulesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the tags that you associated with the specified resource.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listTagsForResourcePaginator<Result>(
        _ input: ListTagsForResourceRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTagsForResourceResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceRequest.nextToken,
            outputKey: \ListTagsForResourceResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTagsForResourceResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceRequest.nextToken,
            outputKey: \ListTagsForResourceResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Route53Resolver.ListResolverDnssecConfigsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverDnssecConfigsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Route53Resolver.ListResolverEndpointIpAddressesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverEndpointIpAddressesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resolverEndpointId: self.resolverEndpointId
        )
    }
}

extension Route53Resolver.ListResolverEndpointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverEndpointsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Route53Resolver.ListResolverQueryLogConfigAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverQueryLogConfigAssociationsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )
    }
}

extension Route53Resolver.ListResolverQueryLogConfigsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverQueryLogConfigsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )
    }
}

extension Route53Resolver.ListResolverRuleAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverRuleAssociationsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Route53Resolver.ListResolverRulesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverRulesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Route53Resolver.ListTagsForResourceRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListTagsForResourceRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )
    }
}
