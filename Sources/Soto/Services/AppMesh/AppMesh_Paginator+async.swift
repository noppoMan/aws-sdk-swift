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
extension AppMesh {
    ///  Returns a list of existing gateway routes that are associated to a virtual gateway.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGatewayRoutesPaginator(
        _ input: ListGatewayRoutesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGatewayRoutesInput, ListGatewayRoutesOutput> {
        return .init(
            input: input,
            command: listGatewayRoutes,
            inputKey: \ListGatewayRoutesInput.nextToken,
            outputKey: \ListGatewayRoutesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of existing service meshes.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMeshesPaginator(
        _ input: ListMeshesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMeshesInput, ListMeshesOutput> {
        return .init(
            input: input,
            command: listMeshes,
            inputKey: \ListMeshesInput.nextToken,
            outputKey: \ListMeshesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of existing routes in a service mesh.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRoutesPaginator(
        _ input: ListRoutesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRoutesInput, ListRoutesOutput> {
        return .init(
            input: input,
            command: listRoutes,
            inputKey: \ListRoutesInput.nextToken,
            outputKey: \ListRoutesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the tags for an App Mesh resource.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput> {
        return .init(
            input: input,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceInput.nextToken,
            outputKey: \ListTagsForResourceOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of existing virtual gateways in a service mesh.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listVirtualGatewaysPaginator(
        _ input: ListVirtualGatewaysInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListVirtualGatewaysInput, ListVirtualGatewaysOutput> {
        return .init(
            input: input,
            command: listVirtualGateways,
            inputKey: \ListVirtualGatewaysInput.nextToken,
            outputKey: \ListVirtualGatewaysOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of existing virtual nodes.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listVirtualNodesPaginator(
        _ input: ListVirtualNodesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListVirtualNodesInput, ListVirtualNodesOutput> {
        return .init(
            input: input,
            command: listVirtualNodes,
            inputKey: \ListVirtualNodesInput.nextToken,
            outputKey: \ListVirtualNodesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of existing virtual routers in a service mesh.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listVirtualRoutersPaginator(
        _ input: ListVirtualRoutersInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListVirtualRoutersInput, ListVirtualRoutersOutput> {
        return .init(
            input: input,
            command: listVirtualRouters,
            inputKey: \ListVirtualRoutersInput.nextToken,
            outputKey: \ListVirtualRoutersOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of existing virtual services in a service mesh.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listVirtualServicesPaginator(
        _ input: ListVirtualServicesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListVirtualServicesInput, ListVirtualServicesOutput> {
        return .init(
            input: input,
            command: listVirtualServices,
            inputKey: \ListVirtualServicesInput.nextToken,
            outputKey: \ListVirtualServicesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
