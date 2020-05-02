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

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS MediaConnect service.

API for AWS Elemental MediaConnect
*/
public struct MediaConnect {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the MediaConnect client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? .aws,
            service: "mediaconnect",
            serviceProtocol: .restjson,
            apiVersion: "2018-11-14",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MediaConnectErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Adds outputs to an existing flow. You can create up to 50 outputs per flow.
    public func addFlowOutputs(_ input: AddFlowOutputsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddFlowOutputsResponse> {
        return client.send(operation: "AddFlowOutputs", path: "/v1/flows/{flowArn}/outputs", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds Sources to flow
    public func addFlowSources(_ input: AddFlowSourcesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddFlowSourcesResponse> {
        return client.send(operation: "AddFlowSources", path: "/v1/flows/{flowArn}/source", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds VPC interfaces to flow
    public func addFlowVpcInterfaces(_ input: AddFlowVpcInterfacesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddFlowVpcInterfacesResponse> {
        return client.send(operation: "AddFlowVpcInterfaces", path: "/v1/flows/{flowArn}/vpcInterfaces", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new flow. The request must include one source. The request optionally can include outputs (up to 50) and entitlements (up to 50).
    public func createFlow(_ input: CreateFlowRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowResponse> {
        return client.send(operation: "CreateFlow", path: "/v1/flows", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a flow. Before you can delete a flow, you must stop the flow.
    public func deleteFlow(_ input: DeleteFlowRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFlowResponse> {
        return client.send(operation: "DeleteFlow", path: "/v1/flows/{flowArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Displays the details of a flow. The response includes the flow ARN, name, and Availability Zone, as well as details about the source, outputs, and entitlements.
    public func describeFlow(_ input: DescribeFlowRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowResponse> {
        return client.send(operation: "DescribeFlow", path: "/v1/flows/{flowArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Grants entitlements to an existing flow.
    public func grantFlowEntitlements(_ input: GrantFlowEntitlementsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GrantFlowEntitlementsResponse> {
        return client.send(operation: "GrantFlowEntitlements", path: "/v1/flows/{flowArn}/entitlements", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Displays a list of all entitlements that have been granted to this account. This request returns 20 results per page.
    public func listEntitlements(_ input: ListEntitlementsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEntitlementsResponse> {
        return client.send(operation: "ListEntitlements", path: "/v1/entitlements", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Displays a list of flows that are associated with this account. This request returns a paginated result.
    public func listFlows(_ input: ListFlowsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFlowsResponse> {
        return client.send(operation: "ListFlows", path: "/v1/flows", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  List all tags on an AWS Elemental MediaConnect resource
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Removes an output from an existing flow. This request can be made only on an output that does not have an entitlement associated with it. If the output has an entitlement, you must revoke the entitlement instead. When an entitlement is revoked from a flow, the service automatically removes the associated output.
    public func removeFlowOutput(_ input: RemoveFlowOutputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveFlowOutputResponse> {
        return client.send(operation: "RemoveFlowOutput", path: "/v1/flows/{flowArn}/outputs/{outputArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Removes a source from an existing flow. This request can be made only if there is more than one source on the flow.
    public func removeFlowSource(_ input: RemoveFlowSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveFlowSourceResponse> {
        return client.send(operation: "RemoveFlowSource", path: "/v1/flows/{flowArn}/source/{sourceArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Removes a VPC Interface from an existing flow. This request can be made only on a VPC interface that does not have a Source or Output associated with it. If the VPC interface is referenced by a Source or Output, you must first delete or update the Source or Output to no longer reference the VPC interface.
    public func removeFlowVpcInterface(_ input: RemoveFlowVpcInterfaceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveFlowVpcInterfaceResponse> {
        return client.send(operation: "RemoveFlowVpcInterface", path: "/v1/flows/{flowArn}/vpcInterfaces/{vpcInterfaceName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Revokes an entitlement from a flow. Once an entitlement is revoked, the content becomes unavailable to the subscriber and the associated output is removed.
    public func revokeFlowEntitlement(_ input: RevokeFlowEntitlementRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeFlowEntitlementResponse> {
        return client.send(operation: "RevokeFlowEntitlement", path: "/v1/flows/{flowArn}/entitlements/{entitlementArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Starts a flow.
    public func startFlow(_ input: StartFlowRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartFlowResponse> {
        return client.send(operation: "StartFlow", path: "/v1/flows/start/{flowArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops a flow.
    public func stopFlow(_ input: StopFlowRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopFlowResponse> {
        return client.send(operation: "StopFlow", path: "/v1/flows/stop/{flowArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes specified tags from a resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Updates flow
    public func updateFlow(_ input: UpdateFlowRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFlowResponse> {
        return client.send(operation: "UpdateFlow", path: "/v1/flows/{flowArn}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  You can change an entitlement's description, subscribers, and encryption. If you change the subscribers, the service will remove the outputs that are are used by the subscribers that are removed.
    public func updateFlowEntitlement(_ input: UpdateFlowEntitlementRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFlowEntitlementResponse> {
        return client.send(operation: "UpdateFlowEntitlement", path: "/v1/flows/{flowArn}/entitlements/{entitlementArn}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates an existing flow output.
    public func updateFlowOutput(_ input: UpdateFlowOutputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFlowOutputResponse> {
        return client.send(operation: "UpdateFlowOutput", path: "/v1/flows/{flowArn}/outputs/{outputArn}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates the source of a flow.
    public func updateFlowSource(_ input: UpdateFlowSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFlowSourceResponse> {
        return client.send(operation: "UpdateFlowSource", path: "/v1/flows/{flowArn}/source/{sourceArn}", httpMethod: "PUT", input: input, on: eventLoop)
    }
}
