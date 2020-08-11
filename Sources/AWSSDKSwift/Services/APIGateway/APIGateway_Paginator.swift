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

extension APIGateway {

    ///  Gets information about the current ApiKeys resource.
    public func getApiKeysPaginator(
        _ input: GetApiKeysRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ApiKeys, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getApiKeys, tokenKey: \ApiKeys.position, on: eventLoop, onPage: onPage)
    }

    ///  Represents a collection of BasePathMapping resources.
    public func getBasePathMappingsPaginator(
        _ input: GetBasePathMappingsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (BasePathMappings, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getBasePathMappings, tokenKey: \BasePathMappings.position, on: eventLoop, onPage: onPage)
    }

    ///  Gets a collection of ClientCertificate resources.
    public func getClientCertificatesPaginator(
        _ input: GetClientCertificatesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ClientCertificates, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getClientCertificates, tokenKey: \ClientCertificates.position, on: eventLoop, onPage: onPage)
    }

    ///  Gets information about a Deployments collection.
    public func getDeploymentsPaginator(
        _ input: GetDeploymentsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Deployments, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getDeployments, tokenKey: \Deployments.position, on: eventLoop, onPage: onPage)
    }

    ///  Represents a collection of DomainName resources.
    public func getDomainNamesPaginator(
        _ input: GetDomainNamesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DomainNames, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getDomainNames, tokenKey: \DomainNames.position, on: eventLoop, onPage: onPage)
    }

    ///  Describes existing Models defined for a RestApi resource.
    public func getModelsPaginator(
        _ input: GetModelsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Models, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getModels, tokenKey: \Models.position, on: eventLoop, onPage: onPage)
    }

    ///  Lists information about a collection of Resource resources.
    public func getResourcesPaginator(
        _ input: GetResourcesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Resources, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getResources, tokenKey: \Resources.position, on: eventLoop, onPage: onPage)
    }

    ///  Lists the RestApis resources for your collection.
    public func getRestApisPaginator(
        _ input: GetRestApisRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (RestApis, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getRestApis, tokenKey: \RestApis.position, on: eventLoop, onPage: onPage)
    }

    ///  Gets the usage data of a usage plan in a specified time interval.
    public func getUsagePaginator(
        _ input: GetUsageRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Usage, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getUsage, tokenKey: \Usage.position, on: eventLoop, onPage: onPage)
    }

    ///  Gets all the usage plan keys representing the API keys added to a specified usage plan.
    public func getUsagePlanKeysPaginator(
        _ input: GetUsagePlanKeysRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (UsagePlanKeys, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getUsagePlanKeys, tokenKey: \UsagePlanKeys.position, on: eventLoop, onPage: onPage)
    }

    ///  Gets all the usage plans of the caller's account.
    public func getUsagePlansPaginator(
        _ input: GetUsagePlansRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (UsagePlans, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getUsagePlans, tokenKey: \UsagePlans.position, on: eventLoop, onPage: onPage)
    }

    ///  Gets the VpcLinks collection under the caller's account in a selected region.
    public func getVpcLinksPaginator(
        _ input: GetVpcLinksRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (VpcLinks, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getVpcLinks, tokenKey: \VpcLinks.position, on: eventLoop, onPage: onPage)
    }

}

extension APIGateway.GetApiKeysRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> APIGateway.GetApiKeysRequest {
        return .init(
            customerId: self.customerId,
            includeValues: self.includeValues,
            limit: self.limit,
            nameQuery: self.nameQuery,
            position: token
        )

    }
}

extension APIGateway.GetBasePathMappingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> APIGateway.GetBasePathMappingsRequest {
        return .init(
            domainName: self.domainName,
            limit: self.limit,
            position: token
        )

    }
}

extension APIGateway.GetClientCertificatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> APIGateway.GetClientCertificatesRequest {
        return .init(
            limit: self.limit,
            position: token
        )

    }
}

extension APIGateway.GetDeploymentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> APIGateway.GetDeploymentsRequest {
        return .init(
            limit: self.limit,
            position: token,
            restApiId: self.restApiId
        )

    }
}

extension APIGateway.GetDomainNamesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> APIGateway.GetDomainNamesRequest {
        return .init(
            limit: self.limit,
            position: token
        )

    }
}

extension APIGateway.GetModelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> APIGateway.GetModelsRequest {
        return .init(
            limit: self.limit,
            position: token,
            restApiId: self.restApiId
        )

    }
}

extension APIGateway.GetResourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> APIGateway.GetResourcesRequest {
        return .init(
            embed: self.embed,
            limit: self.limit,
            position: token,
            restApiId: self.restApiId
        )

    }
}

extension APIGateway.GetRestApisRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> APIGateway.GetRestApisRequest {
        return .init(
            limit: self.limit,
            position: token
        )

    }
}

extension APIGateway.GetUsageRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> APIGateway.GetUsageRequest {
        return .init(
            endDate: self.endDate,
            keyId: self.keyId,
            limit: self.limit,
            position: token,
            startDate: self.startDate,
            usagePlanId: self.usagePlanId
        )

    }
}

extension APIGateway.GetUsagePlanKeysRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> APIGateway.GetUsagePlanKeysRequest {
        return .init(
            limit: self.limit,
            nameQuery: self.nameQuery,
            position: token,
            usagePlanId: self.usagePlanId
        )

    }
}

extension APIGateway.GetUsagePlansRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> APIGateway.GetUsagePlansRequest {
        return .init(
            keyId: self.keyId,
            limit: self.limit,
            position: token
        )

    }
}

extension APIGateway.GetVpcLinksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> APIGateway.GetVpcLinksRequest {
        return .init(
            limit: self.limit,
            position: token
        )

    }
}


