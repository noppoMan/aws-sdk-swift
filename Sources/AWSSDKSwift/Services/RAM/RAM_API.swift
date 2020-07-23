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

/**
Client object for interacting with AWS RAM service.

Use AWS Resource Access Manager to share AWS resources between AWS accounts. To share a resource, you create a resource share, associate the resource with the resource share, and specify the principals that can access the resources associated with the resource share. The following principals are supported: AWS accounts, organizational units (OU) from AWS Organizations, and organizations from AWS Organizations. For more information, see the AWS Resource Access Manager User Guide.
*/
public struct RAM {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the RAM client
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
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "ram",
            serviceProtocol: .restjson,
            apiVersion: "2018-01-04",
            endpoint: endpoint,
            possibleErrorTypes: [RAMErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Accepts an invitation to a resource share from another AWS account.
    public func acceptResourceShareInvitation(_ input: AcceptResourceShareInvitationRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AcceptResourceShareInvitationResponse> {
        return client.execute(operation: "AcceptResourceShareInvitation", path: "/acceptresourceshareinvitation", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Associates the specified resource share with the specified principals and resources.
    public func associateResourceShare(_ input: AssociateResourceShareRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AssociateResourceShareResponse> {
        return client.execute(operation: "AssociateResourceShare", path: "/associateresourceshare", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Associates a permission with a resource share.
    public func associateResourceSharePermission(_ input: AssociateResourceSharePermissionRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AssociateResourceSharePermissionResponse> {
        return client.execute(operation: "AssociateResourceSharePermission", path: "/associateresourcesharepermission", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a resource share.
    public func createResourceShare(_ input: CreateResourceShareRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateResourceShareResponse> {
        return client.execute(operation: "CreateResourceShare", path: "/createresourceshare", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the specified resource share.
    public func deleteResourceShare(_ input: DeleteResourceShareRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteResourceShareResponse> {
        return client.execute(operation: "DeleteResourceShare", path: "/deleteresourceshare", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Disassociates the specified principals or resources from the specified resource share.
    public func disassociateResourceShare(_ input: DisassociateResourceShareRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DisassociateResourceShareResponse> {
        return client.execute(operation: "DisassociateResourceShare", path: "/disassociateresourceshare", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Disassociates an AWS RAM permission from a resource share.
    public func disassociateResourceSharePermission(_ input: DisassociateResourceSharePermissionRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DisassociateResourceSharePermissionResponse> {
        return client.execute(operation: "DisassociateResourceSharePermission", path: "/disassociateresourcesharepermission", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Enables resource sharing within your AWS Organization. The caller must be the master account for the AWS Organization.
    public func enableSharingWithAwsOrganization(_ input: EnableSharingWithAwsOrganizationRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<EnableSharingWithAwsOrganizationResponse> {
        return client.execute(operation: "EnableSharingWithAwsOrganization", path: "/enablesharingwithawsorganization", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the contents of an AWS RAM permission in JSON format.
    public func getPermission(_ input: GetPermissionRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetPermissionResponse> {
        return client.execute(operation: "GetPermission", path: "/getpermission", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the policies for the specified resources that you own and have shared.
    public func getResourcePolicies(_ input: GetResourcePoliciesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetResourcePoliciesResponse> {
        return client.execute(operation: "GetResourcePolicies", path: "/getresourcepolicies", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the resources or principals for the resource shares that you own.
    public func getResourceShareAssociations(_ input: GetResourceShareAssociationsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetResourceShareAssociationsResponse> {
        return client.execute(operation: "GetResourceShareAssociations", path: "/getresourceshareassociations", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the invitations for resource sharing that you've received.
    public func getResourceShareInvitations(_ input: GetResourceShareInvitationsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetResourceShareInvitationsResponse> {
        return client.execute(operation: "GetResourceShareInvitations", path: "/getresourceshareinvitations", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the resource shares that you own or the resource shares that are shared with you.
    public func getResourceShares(_ input: GetResourceSharesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetResourceSharesResponse> {
        return client.execute(operation: "GetResourceShares", path: "/getresourceshares", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the resources in a resource share that is shared with you but that the invitation is still pending for.
    public func listPendingInvitationResources(_ input: ListPendingInvitationResourcesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListPendingInvitationResourcesResponse> {
        return client.execute(operation: "ListPendingInvitationResources", path: "/listpendinginvitationresources", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the AWS RAM permissions.
    public func listPermissions(_ input: ListPermissionsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListPermissionsResponse> {
        return client.execute(operation: "ListPermissions", path: "/listpermissions", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the principals that you have shared resources with or that have shared resources with you.
    public func listPrincipals(_ input: ListPrincipalsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListPrincipalsResponse> {
        return client.execute(operation: "ListPrincipals", path: "/listprincipals", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the AWS RAM permissions that are associated with a resource share.
    public func listResourceSharePermissions(_ input: ListResourceSharePermissionsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListResourceSharePermissionsResponse> {
        return client.execute(operation: "ListResourceSharePermissions", path: "/listresourcesharepermissions", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the shareable resource types supported by AWS RAM.
    public func listResourceTypes(_ input: ListResourceTypesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListResourceTypesResponse> {
        return client.execute(operation: "ListResourceTypes", path: "/listresourcetypes", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the resources that you added to a resource shares or the resources that are shared with you.
    public func listResources(_ input: ListResourcesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListResourcesResponse> {
        return client.execute(operation: "ListResources", path: "/listresources", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Resource shares that were created by attaching a policy to a resource are visible only to the resource share owner, and the resource share cannot be modified in AWS RAM. Use this API action to promote the resource share. When you promote the resource share, it becomes:   Visible to all principals that it is shared with.   Modifiable in AWS RAM.  
    public func promoteResourceShareCreatedFromPolicy(_ input: PromoteResourceShareCreatedFromPolicyRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PromoteResourceShareCreatedFromPolicyResponse> {
        return client.execute(operation: "PromoteResourceShareCreatedFromPolicy", path: "/promoteresourcesharecreatedfrompolicy", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Rejects an invitation to a resource share from another AWS account.
    public func rejectResourceShareInvitation(_ input: RejectResourceShareInvitationRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RejectResourceShareInvitationResponse> {
        return client.execute(operation: "RejectResourceShareInvitation", path: "/rejectresourceshareinvitation", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds the specified tags to the specified resource share that you own.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/tagresource", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes the specified tags from the specified resource share that you own.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/untagresource", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the specified resource share that you own.
    public func updateResourceShare(_ input: UpdateResourceShareRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateResourceShareResponse> {
        return client.execute(operation: "UpdateResourceShare", path: "/updateresourceshare", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
