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

extension AppMesh {

    ///  Returns a list of existing gateway routes that are associated to a virtual
    ///           gateway.
    public func listGatewayRoutesPaginator(
        _ input: ListGatewayRoutesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListGatewayRoutesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGatewayRoutes, tokenKey: \ListGatewayRoutesOutput.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of existing service meshes.
    public func listMeshesPaginator(
        _ input: ListMeshesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListMeshesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listMeshes, tokenKey: \ListMeshesOutput.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of existing routes in a service mesh.
    public func listRoutesPaginator(
        _ input: ListRoutesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRoutesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRoutes, tokenKey: \ListRoutesOutput.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  List the tags for an App Mesh resource.
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTagsForResourceOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTagsForResource, tokenKey: \ListTagsForResourceOutput.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of existing virtual gateways in a service mesh.
    public func listVirtualGatewaysPaginator(
        _ input: ListVirtualGatewaysInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListVirtualGatewaysOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listVirtualGateways, tokenKey: \ListVirtualGatewaysOutput.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of existing virtual nodes.
    public func listVirtualNodesPaginator(
        _ input: ListVirtualNodesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListVirtualNodesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listVirtualNodes, tokenKey: \ListVirtualNodesOutput.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of existing virtual routers in a service mesh.
    public func listVirtualRoutersPaginator(
        _ input: ListVirtualRoutersInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListVirtualRoutersOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listVirtualRouters, tokenKey: \ListVirtualRoutersOutput.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of existing virtual services in a service mesh.
    public func listVirtualServicesPaginator(
        _ input: ListVirtualServicesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListVirtualServicesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listVirtualServices, tokenKey: \ListVirtualServicesOutput.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension AppMesh.ListGatewayRoutesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppMesh.ListGatewayRoutesInput {
        return .init(
            limit: self.limit,
            meshName: self.meshName,
            meshOwner: self.meshOwner,
            nextToken: token,
            virtualGatewayName: self.virtualGatewayName
        )

    }
}

extension AppMesh.ListMeshesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppMesh.ListMeshesInput {
        return .init(
            limit: self.limit,
            nextToken: token
        )

    }
}

extension AppMesh.ListRoutesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppMesh.ListRoutesInput {
        return .init(
            limit: self.limit,
            meshName: self.meshName,
            meshOwner: self.meshOwner,
            nextToken: token,
            virtualRouterName: self.virtualRouterName
        )

    }
}

extension AppMesh.ListTagsForResourceInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppMesh.ListTagsForResourceInput {
        return .init(
            limit: self.limit,
            nextToken: token,
            resourceArn: self.resourceArn
        )

    }
}

extension AppMesh.ListVirtualGatewaysInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppMesh.ListVirtualGatewaysInput {
        return .init(
            limit: self.limit,
            meshName: self.meshName,
            meshOwner: self.meshOwner,
            nextToken: token
        )

    }
}

extension AppMesh.ListVirtualNodesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppMesh.ListVirtualNodesInput {
        return .init(
            limit: self.limit,
            meshName: self.meshName,
            meshOwner: self.meshOwner,
            nextToken: token
        )

    }
}

extension AppMesh.ListVirtualRoutersInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppMesh.ListVirtualRoutersInput {
        return .init(
            limit: self.limit,
            meshName: self.meshName,
            meshOwner: self.meshOwner,
            nextToken: token
        )

    }
}

extension AppMesh.ListVirtualServicesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppMesh.ListVirtualServicesInput {
        return .init(
            limit: self.limit,
            meshName: self.meshName,
            meshOwner: self.meshOwner,
            nextToken: token
        )

    }
}


