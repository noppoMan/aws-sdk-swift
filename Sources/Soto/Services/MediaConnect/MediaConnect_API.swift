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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import SotoCore

/*
Client object for interacting with AWS MediaConnect service.

API for AWS Elemental MediaConnect
*/
public struct MediaConnect: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MediaConnect client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "mediaconnect",
            serviceProtocol: .restjson,
            apiVersion: "2018-11-14",
            endpoint: endpoint,
            possibleErrorTypes: [MediaConnectErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }
    
    // MARK: API Calls

    ///  Adds outputs to an existing flow. You can create up to 50 outputs per flow.
    public func addFlowOutputs(_ input: AddFlowOutputsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AddFlowOutputsResponse> {
        return self.client.execute(operation: "AddFlowOutputs", path: "/v1/flows/{flowArn}/outputs", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds Sources to flow
    public func addFlowSources(_ input: AddFlowSourcesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AddFlowSourcesResponse> {
        return self.client.execute(operation: "AddFlowSources", path: "/v1/flows/{flowArn}/source", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds VPC interfaces to flow
    public func addFlowVpcInterfaces(_ input: AddFlowVpcInterfacesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AddFlowVpcInterfacesResponse> {
        return self.client.execute(operation: "AddFlowVpcInterfaces", path: "/v1/flows/{flowArn}/vpcInterfaces", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new flow. The request must include one source. The request optionally can include outputs (up to 50) and entitlements (up to 50).
    public func createFlow(_ input: CreateFlowRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateFlowResponse> {
        return self.client.execute(operation: "CreateFlow", path: "/v1/flows", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a flow. Before you can delete a flow, you must stop the flow.
    public func deleteFlow(_ input: DeleteFlowRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteFlowResponse> {
        return self.client.execute(operation: "DeleteFlow", path: "/v1/flows/{flowArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Displays the details of a flow. The response includes the flow ARN, name, and Availability Zone, as well as details about the source, outputs, and entitlements.
    public func describeFlow(_ input: DescribeFlowRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeFlowResponse> {
        return self.client.execute(operation: "DescribeFlow", path: "/v1/flows/{flowArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Displays the details of an offering. The response includes the offering description, duration, outbound bandwidth, price, and Amazon Resource Name (ARN).
    public func describeOffering(_ input: DescribeOfferingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeOfferingResponse> {
        return self.client.execute(operation: "DescribeOffering", path: "/v1/offerings/{offeringArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Displays the details of a reservation. The response includes the reservation name, state, start date and time, and the details of the offering that make up the rest of the reservation (such as price, duration, and outbound bandwidth).
    public func describeReservation(_ input: DescribeReservationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeReservationResponse> {
        return self.client.execute(operation: "DescribeReservation", path: "/v1/reservations/{reservationArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Grants entitlements to an existing flow.
    public func grantFlowEntitlements(_ input: GrantFlowEntitlementsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GrantFlowEntitlementsResponse> {
        return self.client.execute(operation: "GrantFlowEntitlements", path: "/v1/flows/{flowArn}/entitlements", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Displays a list of all entitlements that have been granted to this account. This request returns 20 results per page.
    public func listEntitlements(_ input: ListEntitlementsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListEntitlementsResponse> {
        return self.client.execute(operation: "ListEntitlements", path: "/v1/entitlements", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Displays a list of flows that are associated with this account. This request returns a paginated result.
    public func listFlows(_ input: ListFlowsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListFlowsResponse> {
        return self.client.execute(operation: "ListFlows", path: "/v1/flows", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Displays a list of all offerings that are available to this account in the current AWS Region. If you have an active reservation (which means you've purchased an offering that has already started and hasn't expired yet), your account isn't eligible for other offerings.
    public func listOfferings(_ input: ListOfferingsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListOfferingsResponse> {
        return self.client.execute(operation: "ListOfferings", path: "/v1/offerings", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Displays a list of all reservations that have been purchased by this account in the current AWS Region. This list includes all reservations in all states (such as active and expired).
    public func listReservations(_ input: ListReservationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListReservationsResponse> {
        return self.client.execute(operation: "ListReservations", path: "/v1/reservations", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  List all tags on an AWS Elemental MediaConnect resource
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Submits a request to purchase an offering. If you already have an active reservation, you can't purchase another offering.
    public func purchaseOffering(_ input: PurchaseOfferingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PurchaseOfferingResponse> {
        return self.client.execute(operation: "PurchaseOffering", path: "/v1/offerings/{offeringArn}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes an output from an existing flow. This request can be made only on an output that does not have an entitlement associated with it. If the output has an entitlement, you must revoke the entitlement instead. When an entitlement is revoked from a flow, the service automatically removes the associated output.
    public func removeFlowOutput(_ input: RemoveFlowOutputRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RemoveFlowOutputResponse> {
        return self.client.execute(operation: "RemoveFlowOutput", path: "/v1/flows/{flowArn}/outputs/{outputArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes a source from an existing flow. This request can be made only if there is more than one source on the flow.
    public func removeFlowSource(_ input: RemoveFlowSourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RemoveFlowSourceResponse> {
        return self.client.execute(operation: "RemoveFlowSource", path: "/v1/flows/{flowArn}/source/{sourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes a VPC Interface from an existing flow. This request can be made only on a VPC interface that does not have a Source or Output associated with it. If the VPC interface is referenced by a Source or Output, you must first delete or update the Source or Output to no longer reference the VPC interface.
    public func removeFlowVpcInterface(_ input: RemoveFlowVpcInterfaceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RemoveFlowVpcInterfaceResponse> {
        return self.client.execute(operation: "RemoveFlowVpcInterface", path: "/v1/flows/{flowArn}/vpcInterfaces/{vpcInterfaceName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Revokes an entitlement from a flow. Once an entitlement is revoked, the content becomes unavailable to the subscriber and the associated output is removed.
    public func revokeFlowEntitlement(_ input: RevokeFlowEntitlementRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RevokeFlowEntitlementResponse> {
        return self.client.execute(operation: "RevokeFlowEntitlement", path: "/v1/flows/{flowArn}/entitlements/{entitlementArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts a flow.
    public func startFlow(_ input: StartFlowRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartFlowResponse> {
        return self.client.execute(operation: "StartFlow", path: "/v1/flows/start/{flowArn}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Stops a flow.
    public func stopFlow(_ input: StopFlowRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopFlowResponse> {
        return self.client.execute(operation: "StopFlow", path: "/v1/flows/stop/{flowArn}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes specified tags from a resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates flow
    public func updateFlow(_ input: UpdateFlowRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateFlowResponse> {
        return self.client.execute(operation: "UpdateFlow", path: "/v1/flows/{flowArn}", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  You can change an entitlement's description, subscribers, and encryption. If you change the subscribers, the service will remove the outputs that are are used by the subscribers that are removed.
    public func updateFlowEntitlement(_ input: UpdateFlowEntitlementRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateFlowEntitlementResponse> {
        return self.client.execute(operation: "UpdateFlowEntitlement", path: "/v1/flows/{flowArn}/entitlements/{entitlementArn}", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing flow output.
    public func updateFlowOutput(_ input: UpdateFlowOutputRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateFlowOutputResponse> {
        return self.client.execute(operation: "UpdateFlowOutput", path: "/v1/flows/{flowArn}/outputs/{outputArn}", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the source of a flow.
    public func updateFlowSource(_ input: UpdateFlowSourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateFlowSourceResponse> {
        return self.client.execute(operation: "UpdateFlowSource", path: "/v1/flows/{flowArn}/source/{sourceArn}", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }
}

extension MediaConnect {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: MediaConnect, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
