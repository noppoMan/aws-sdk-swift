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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore

/*
Client object for interacting with AWS AppMesh service.

AWS App Mesh is a service mesh based on the Envoy proxy that makes it easy to monitor and
         control microservices. App Mesh standardizes how your microservices communicate, giving you
         end-to-end visibility and helping to ensure high availability for your applications.
         App Mesh gives you consistent visibility and network traffic controls for every
         microservice in an application. You can use App Mesh with AWS Fargate, Amazon ECS, Amazon EKS,
         Kubernetes on AWS, and Amazon EC2.
         
            App Mesh supports microservice applications that use service discovery naming for their
            components. For more information about service discovery on Amazon ECS, see Service Discovery in the Amazon Elastic Container Service Developer Guide. Kubernetes
               kube-dns and coredns are supported. For more information,
            see DNS
               for Services and Pods in the Kubernetes documentation.
         
*/
public struct AppMesh: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the AppMesh client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "appmesh",
            serviceProtocol: .restjson,
            apiVersion: "2019-01-25",
            endpoint: endpoint,
            possibleErrorTypes: [AppMeshErrorType.self],
            timeout: timeout
        )
    }
    
    // MARK: API Calls

    ///  Creates a gateway route.
    ///           A gateway route is attached to a virtual gateway and routes traffic to an existing
    ///           virtual service. If a route matches a request, it can distribute traffic to a target virtual service.
    ///           For more information about gateway routes, see Gateway routes.
    public func createGatewayRoute(_ input: CreateGatewayRouteInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateGatewayRouteOutput> {
        return self.client.execute(operation: "CreateGatewayRoute", path: "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a service mesh.
    ///            A service mesh is a logical boundary for network traffic between services that are
    ///           represented by resources within the mesh. After you create your service mesh, you can
    ///           create virtual services, virtual nodes, virtual routers, and routes to distribute traffic
    ///           between the applications in your mesh.
    ///           For more information about service meshes, see Service meshes.
    public func createMesh(_ input: CreateMeshInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateMeshOutput> {
        return self.client.execute(operation: "CreateMesh", path: "/v20190125/meshes", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a route that is associated with a virtual router.
    ///            You can route several different protocols and define a retry policy for a route.
    ///           Traffic can be routed to one or more virtual nodes.
    ///           For more information about routes, see Routes.
    public func createRoute(_ input: CreateRouteInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateRouteOutput> {
        return self.client.execute(operation: "CreateRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a virtual gateway.
    ///           A virtual gateway allows resources outside your mesh to communicate to resources that
    ///           are inside your mesh. The virtual gateway represents an Envoy proxy running in an Amazon ECS
    ///           task, in a Kubernetes service, or on an Amazon EC2 instance. Unlike a virtual node, which
    ///           represents an Envoy running with an application, a virtual gateway represents Envoy deployed by itself.
    ///           For more information about virtual gateways, see Virtual gateways.
    public func createVirtualGateway(_ input: CreateVirtualGatewayInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateVirtualGatewayOutput> {
        return self.client.execute(operation: "CreateVirtualGateway", path: "/v20190125/meshes/{meshName}/virtualGateways", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a virtual node within a service mesh.
    ///            A virtual node acts as a logical pointer to a particular task group, such as an Amazon ECS
    ///           service or a Kubernetes deployment. When you create a virtual node, you can specify the
    ///           service discovery information for your task group, and whether the proxy running in a task
    ///           group will communicate with other proxies using Transport Layer Security (TLS).
    ///           You define a listener for any inbound traffic that your virtual node
    ///           expects. Any virtual service that your virtual node expects to communicate to is specified
    ///           as a backend.
    ///           The response metadata for your new virtual node contains the arn that is
    ///           associated with the virtual node. Set this value (either the full ARN or the truncated
    ///           resource name: for example, mesh/default/virtualNode/simpleapp) as the
    ///              APPMESH_VIRTUAL_NODE_NAME environment variable for your task group's Envoy
    ///           proxy container in your task definition or pod spec. This is then mapped to the
    ///              node.id and node.cluster Envoy parameters.
    ///           
    ///              If you require your Envoy stats or tracing to use a different name, you can override
    ///              the node.cluster value that is set by
    ///                 APPMESH_VIRTUAL_NODE_NAME with the
    ///                 APPMESH_VIRTUAL_NODE_CLUSTER environment variable.
    ///           
    ///           For more information about virtual nodes, see Virtual nodes.
    public func createVirtualNode(_ input: CreateVirtualNodeInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateVirtualNodeOutput> {
        return self.client.execute(operation: "CreateVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a virtual router within a service mesh.
    ///           Specify a listener for any inbound traffic that your virtual router
    ///           receives. Create a virtual router for each protocol and port that you need to route.
    ///           Virtual routers handle traffic for one or more virtual services within your mesh. After you
    ///           create your virtual router, create and associate routes for your virtual router that direct
    ///           incoming requests to different virtual nodes.
    ///           For more information about virtual routers, see Virtual routers.
    public func createVirtualRouter(_ input: CreateVirtualRouterInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateVirtualRouterOutput> {
        return self.client.execute(operation: "CreateVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a virtual service within a service mesh.
    ///           A virtual service is an abstraction of a real service that is provided by a virtual node
    ///           directly or indirectly by means of a virtual router. Dependent services call your virtual
    ///           service by its virtualServiceName, and those requests are routed to the
    ///           virtual node or virtual router that is specified as the provider for the virtual
    ///           service.
    ///           For more information about virtual services, see Virtual services.
    public func createVirtualService(_ input: CreateVirtualServiceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateVirtualServiceOutput> {
        return self.client.execute(operation: "CreateVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an existing gateway route.
    public func deleteGatewayRoute(_ input: DeleteGatewayRouteInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteGatewayRouteOutput> {
        return self.client.execute(operation: "DeleteGatewayRoute", path: "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an existing service mesh.
    ///           You must delete all resources (virtual services, routes, virtual routers, and virtual
    ///           nodes) in the service mesh before you can delete the mesh itself.
    public func deleteMesh(_ input: DeleteMeshInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteMeshOutput> {
        return self.client.execute(operation: "DeleteMesh", path: "/v20190125/meshes/{meshName}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an existing route.
    public func deleteRoute(_ input: DeleteRouteInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteRouteOutput> {
        return self.client.execute(operation: "DeleteRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an existing virtual gateway. You cannot delete a virtual gateway if any gateway
    ///           routes are associated to it.
    public func deleteVirtualGateway(_ input: DeleteVirtualGatewayInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteVirtualGatewayOutput> {
        return self.client.execute(operation: "DeleteVirtualGateway", path: "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an existing virtual node.
    ///           You must delete any virtual services that list a virtual node as a service provider
    ///           before you can delete the virtual node itself.
    public func deleteVirtualNode(_ input: DeleteVirtualNodeInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteVirtualNodeOutput> {
        return self.client.execute(operation: "DeleteVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an existing virtual router.
    ///           You must delete any routes associated with the virtual router before you can delete the
    ///           router itself.
    public func deleteVirtualRouter(_ input: DeleteVirtualRouterInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteVirtualRouterOutput> {
        return self.client.execute(operation: "DeleteVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an existing virtual service.
    public func deleteVirtualService(_ input: DeleteVirtualServiceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteVirtualServiceOutput> {
        return self.client.execute(operation: "DeleteVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes an existing gateway route.
    public func describeGatewayRoute(_ input: DescribeGatewayRouteInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeGatewayRouteOutput> {
        return self.client.execute(operation: "DescribeGatewayRoute", path: "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes an existing service mesh.
    public func describeMesh(_ input: DescribeMeshInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeMeshOutput> {
        return self.client.execute(operation: "DescribeMesh", path: "/v20190125/meshes/{meshName}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes an existing route.
    public func describeRoute(_ input: DescribeRouteInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeRouteOutput> {
        return self.client.execute(operation: "DescribeRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes an existing virtual gateway.
    public func describeVirtualGateway(_ input: DescribeVirtualGatewayInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeVirtualGatewayOutput> {
        return self.client.execute(operation: "DescribeVirtualGateway", path: "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes an existing virtual node.
    public func describeVirtualNode(_ input: DescribeVirtualNodeInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeVirtualNodeOutput> {
        return self.client.execute(operation: "DescribeVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes an existing virtual router.
    public func describeVirtualRouter(_ input: DescribeVirtualRouterInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeVirtualRouterOutput> {
        return self.client.execute(operation: "DescribeVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes an existing virtual service.
    public func describeVirtualService(_ input: DescribeVirtualServiceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeVirtualServiceOutput> {
        return self.client.execute(operation: "DescribeVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of existing gateway routes that are associated to a virtual
    ///           gateway.
    public func listGatewayRoutes(_ input: ListGatewayRoutesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListGatewayRoutesOutput> {
        return self.client.execute(operation: "ListGatewayRoutes", path: "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of existing service meshes.
    public func listMeshes(_ input: ListMeshesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListMeshesOutput> {
        return self.client.execute(operation: "ListMeshes", path: "/v20190125/meshes", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of existing routes in a service mesh.
    public func listRoutes(_ input: ListRoutesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListRoutesOutput> {
        return self.client.execute(operation: "ListRoutes", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  List the tags for an App Mesh resource.
    public func listTagsForResource(_ input: ListTagsForResourceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceOutput> {
        return self.client.execute(operation: "ListTagsForResource", path: "/v20190125/tags", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of existing virtual gateways in a service mesh.
    public func listVirtualGateways(_ input: ListVirtualGatewaysInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListVirtualGatewaysOutput> {
        return self.client.execute(operation: "ListVirtualGateways", path: "/v20190125/meshes/{meshName}/virtualGateways", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of existing virtual nodes.
    public func listVirtualNodes(_ input: ListVirtualNodesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListVirtualNodesOutput> {
        return self.client.execute(operation: "ListVirtualNodes", path: "/v20190125/meshes/{meshName}/virtualNodes", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of existing virtual routers in a service mesh.
    public func listVirtualRouters(_ input: ListVirtualRoutersInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListVirtualRoutersOutput> {
        return self.client.execute(operation: "ListVirtualRouters", path: "/v20190125/meshes/{meshName}/virtualRouters", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of existing virtual services in a service mesh.
    public func listVirtualServices(_ input: ListVirtualServicesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListVirtualServicesOutput> {
        return self.client.execute(operation: "ListVirtualServices", path: "/v20190125/meshes/{meshName}/virtualServices", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Associates the specified tags to a resource with the specified resourceArn.
    ///           If existing tags on a resource aren't specified in the request parameters, they aren't
    ///           changed. When a resource is deleted, the tags associated with that resource are also
    ///           deleted.
    public func tagResource(_ input: TagResourceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceOutput> {
        return self.client.execute(operation: "TagResource", path: "/v20190125/tag", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes specified tags from a resource.
    public func untagResource(_ input: UntagResourceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceOutput> {
        return self.client.execute(operation: "UntagResource", path: "/v20190125/untag", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing gateway route that is associated to a specified virtual gateway in a
    ///           service mesh.
    public func updateGatewayRoute(_ input: UpdateGatewayRouteInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateGatewayRouteOutput> {
        return self.client.execute(operation: "UpdateGatewayRoute", path: "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing service mesh.
    public func updateMesh(_ input: UpdateMeshInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateMeshOutput> {
        return self.client.execute(operation: "UpdateMesh", path: "/v20190125/meshes/{meshName}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing route for a specified service mesh and virtual router.
    public func updateRoute(_ input: UpdateRouteInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateRouteOutput> {
        return self.client.execute(operation: "UpdateRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing virtual gateway in a specified service mesh.
    public func updateVirtualGateway(_ input: UpdateVirtualGatewayInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateVirtualGatewayOutput> {
        return self.client.execute(operation: "UpdateVirtualGateway", path: "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing virtual node in a specified service mesh.
    public func updateVirtualNode(_ input: UpdateVirtualNodeInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateVirtualNodeOutput> {
        return self.client.execute(operation: "UpdateVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing virtual router in a specified service mesh.
    public func updateVirtualRouter(_ input: UpdateVirtualRouterInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateVirtualRouterOutput> {
        return self.client.execute(operation: "UpdateVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing virtual service in a specified service mesh.
    public func updateVirtualService(_ input: UpdateVirtualServiceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateVirtualServiceOutput> {
        return self.client.execute(operation: "UpdateVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }
}
