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

@_exported import SotoCore

/// Service object for interacting with AWS RAM service.
///
/// Use AWS Resource Access Manager to share AWS resources between AWS accounts. To share a resource, you create a resource share, associate the resource with the resource share, and specify the principals that can access the resources associated with the resource share. The following principals are supported: AWS accounts, organizational units (OU) from AWS Organizations, and organizations from AWS Organizations. For more information, see the AWS Resource Access Manager User Guide.
public struct RAM: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the RAM client
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
            service: "ram",
            serviceProtocol: .restjson,
            apiVersion: "2018-01-04",
            endpoint: endpoint,
            serviceEndpoints: ["us-gov-east-1": "ram.us-gov-east-1.amazonaws.com", "us-gov-west-1": "ram.us-gov-west-1.amazonaws.com"],
            errorType: RAMErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Accepts an invitation to a resource share from another AWS account.
    public func acceptResourceShareInvitation(_ input: AcceptResourceShareInvitationRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AcceptResourceShareInvitationResponse> {
        return self.client.execute(operation: "AcceptResourceShareInvitation", path: "/acceptresourceshareinvitation", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Associates the specified resource share with the specified principals and resources.
    public func associateResourceShare(_ input: AssociateResourceShareRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateResourceShareResponse> {
        return self.client.execute(operation: "AssociateResourceShare", path: "/associateresourceshare", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Associates a permission with a resource share.
    public func associateResourceSharePermission(_ input: AssociateResourceSharePermissionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateResourceSharePermissionResponse> {
        return self.client.execute(operation: "AssociateResourceSharePermission", path: "/associateresourcesharepermission", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates a resource share.
    public func createResourceShare(_ input: CreateResourceShareRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateResourceShareResponse> {
        return self.client.execute(operation: "CreateResourceShare", path: "/createresourceshare", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes the specified resource share.
    public func deleteResourceShare(_ input: DeleteResourceShareRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteResourceShareResponse> {
        return self.client.execute(operation: "DeleteResourceShare", path: "/deleteresourceshare", httpMethod: .DELETE, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Disassociates the specified principals or resources from the specified resource share.
    public func disassociateResourceShare(_ input: DisassociateResourceShareRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateResourceShareResponse> {
        return self.client.execute(operation: "DisassociateResourceShare", path: "/disassociateresourceshare", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Disassociates an AWS RAM permission from a resource share.
    public func disassociateResourceSharePermission(_ input: DisassociateResourceSharePermissionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateResourceSharePermissionResponse> {
        return self.client.execute(operation: "DisassociateResourceSharePermission", path: "/disassociateresourcesharepermission", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Enables resource sharing within your AWS Organization. The caller must be the master account for the AWS Organization.
    public func enableSharingWithAwsOrganization(_ input: EnableSharingWithAwsOrganizationRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableSharingWithAwsOrganizationResponse> {
        return self.client.execute(operation: "EnableSharingWithAwsOrganization", path: "/enablesharingwithawsorganization", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets the contents of an AWS RAM permission in JSON format.
    public func getPermission(_ input: GetPermissionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPermissionResponse> {
        return self.client.execute(operation: "GetPermission", path: "/getpermission", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets the policies for the specified resources that you own and have shared.
    public func getResourcePolicies(_ input: GetResourcePoliciesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourcePoliciesResponse> {
        return self.client.execute(operation: "GetResourcePolicies", path: "/getresourcepolicies", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets the resources or principals for the resource shares that you own.
    public func getResourceShareAssociations(_ input: GetResourceShareAssociationsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourceShareAssociationsResponse> {
        return self.client.execute(operation: "GetResourceShareAssociations", path: "/getresourceshareassociations", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets the invitations for resource sharing that you've received.
    public func getResourceShareInvitations(_ input: GetResourceShareInvitationsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourceShareInvitationsResponse> {
        return self.client.execute(operation: "GetResourceShareInvitations", path: "/getresourceshareinvitations", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets the resource shares that you own or the resource shares that are shared with you.
    public func getResourceShares(_ input: GetResourceSharesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourceSharesResponse> {
        return self.client.execute(operation: "GetResourceShares", path: "/getresourceshares", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the resources in a resource share that is shared with you but that the invitation is still pending for.
    public func listPendingInvitationResources(_ input: ListPendingInvitationResourcesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPendingInvitationResourcesResponse> {
        return self.client.execute(operation: "ListPendingInvitationResources", path: "/listpendinginvitationresources", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the AWS RAM permissions.
    public func listPermissions(_ input: ListPermissionsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPermissionsResponse> {
        return self.client.execute(operation: "ListPermissions", path: "/listpermissions", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the principals that you have shared resources with or that have shared resources with you.
    public func listPrincipals(_ input: ListPrincipalsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPrincipalsResponse> {
        return self.client.execute(operation: "ListPrincipals", path: "/listprincipals", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the AWS RAM permissions that are associated with a resource share.
    public func listResourceSharePermissions(_ input: ListResourceSharePermissionsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResourceSharePermissionsResponse> {
        return self.client.execute(operation: "ListResourceSharePermissions", path: "/listresourcesharepermissions", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the shareable resource types supported by AWS RAM.
    public func listResourceTypes(_ input: ListResourceTypesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResourceTypesResponse> {
        return self.client.execute(operation: "ListResourceTypes", path: "/listresourcetypes", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the resources that you added to a resource shares or the resources that are shared with you.
    public func listResources(_ input: ListResourcesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResourcesResponse> {
        return self.client.execute(operation: "ListResources", path: "/listresources", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Resource shares that were created by attaching a policy to a resource are visible only to the resource share owner, and the resource share cannot be modified in AWS RAM. Use this API action to promote the resource share. When you promote the resource share, it becomes:   Visible to all principals that it is shared with.   Modifiable in AWS RAM.
    public func promoteResourceShareCreatedFromPolicy(_ input: PromoteResourceShareCreatedFromPolicyRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PromoteResourceShareCreatedFromPolicyResponse> {
        return self.client.execute(operation: "PromoteResourceShareCreatedFromPolicy", path: "/promoteresourcesharecreatedfrompolicy", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Rejects an invitation to a resource share from another AWS account.
    public func rejectResourceShareInvitation(_ input: RejectResourceShareInvitationRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RejectResourceShareInvitationResponse> {
        return self.client.execute(operation: "RejectResourceShareInvitation", path: "/rejectresourceshareinvitation", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Adds the specified tags to the specified resource share that you own.
    public func tagResource(_ input: TagResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tagresource", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Removes the specified tags from the specified resource share that you own.
    public func untagResource(_ input: UntagResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/untagresource", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates the specified resource share that you own.
    public func updateResourceShare(_ input: UpdateResourceShareRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateResourceShareResponse> {
        return self.client.execute(operation: "UpdateResourceShare", path: "/updateresourceshare", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }
}

extension RAM {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: RAM, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
