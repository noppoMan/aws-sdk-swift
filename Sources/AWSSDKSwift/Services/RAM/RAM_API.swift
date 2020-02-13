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
Client object for interacting with AWS RAM service.

Use AWS Resource Access Manager to share AWS resources between AWS accounts. To share a resource, you create a resource share, associate the resource with the resource share, and specify the principals that can access the resources associated with the resource share. The following principals are supported: AWS accounts, organizational units (OU) from AWS Organizations, and organizations from AWS Organizations. For more information, see the AWS Resource Access Manager User Guide.
*/
public struct RAM {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the RAM client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `useAWSClientShared` if the client shall manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "ram",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-01-04",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [RAMErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Accepts an invitation to a resource share from another AWS account.
    public func acceptResourceShareInvitation(_ input: AcceptResourceShareInvitationRequest) -> EventLoopFuture<AcceptResourceShareInvitationResponse> {
        return client.send(operation: "AcceptResourceShareInvitation", path: "/acceptresourceshareinvitation", httpMethod: "POST", input: input)
    }

    ///  Associates the specified resource share with the specified principals and resources.
    public func associateResourceShare(_ input: AssociateResourceShareRequest) -> EventLoopFuture<AssociateResourceShareResponse> {
        return client.send(operation: "AssociateResourceShare", path: "/associateresourceshare", httpMethod: "POST", input: input)
    }

    ///  Associates a permission with a resource share.
    public func associateResourceSharePermission(_ input: AssociateResourceSharePermissionRequest) -> EventLoopFuture<AssociateResourceSharePermissionResponse> {
        return client.send(operation: "AssociateResourceSharePermission", path: "/associateresourcesharepermission", httpMethod: "POST", input: input)
    }

    ///  Creates a resource share.
    public func createResourceShare(_ input: CreateResourceShareRequest) -> EventLoopFuture<CreateResourceShareResponse> {
        return client.send(operation: "CreateResourceShare", path: "/createresourceshare", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified resource share.
    public func deleteResourceShare(_ input: DeleteResourceShareRequest) -> EventLoopFuture<DeleteResourceShareResponse> {
        return client.send(operation: "DeleteResourceShare", path: "/deleteresourceshare", httpMethod: "DELETE", input: input)
    }

    ///  Disassociates the specified principals or resources from the specified resource share.
    public func disassociateResourceShare(_ input: DisassociateResourceShareRequest) -> EventLoopFuture<DisassociateResourceShareResponse> {
        return client.send(operation: "DisassociateResourceShare", path: "/disassociateresourceshare", httpMethod: "POST", input: input)
    }

    ///  Disassociates an AWS RAM permission from a resource share.
    public func disassociateResourceSharePermission(_ input: DisassociateResourceSharePermissionRequest) -> EventLoopFuture<DisassociateResourceSharePermissionResponse> {
        return client.send(operation: "DisassociateResourceSharePermission", path: "/disassociateresourcesharepermission", httpMethod: "POST", input: input)
    }

    ///  Enables resource sharing within your AWS Organization. The caller must be the master account for the AWS Organization.
    public func enableSharingWithAwsOrganization(_ input: EnableSharingWithAwsOrganizationRequest) -> EventLoopFuture<EnableSharingWithAwsOrganizationResponse> {
        return client.send(operation: "EnableSharingWithAwsOrganization", path: "/enablesharingwithawsorganization", httpMethod: "POST", input: input)
    }

    ///  Gets the contents of an AWS RAM permission in JSON format.
    public func getPermission(_ input: GetPermissionRequest) -> EventLoopFuture<GetPermissionResponse> {
        return client.send(operation: "GetPermission", path: "/getpermission", httpMethod: "POST", input: input)
    }

    ///  Gets the policies for the specified resources that you own and have shared.
    public func getResourcePolicies(_ input: GetResourcePoliciesRequest) -> EventLoopFuture<GetResourcePoliciesResponse> {
        return client.send(operation: "GetResourcePolicies", path: "/getresourcepolicies", httpMethod: "POST", input: input)
    }

    ///  Gets the resources or principals for the resource shares that you own.
    public func getResourceShareAssociations(_ input: GetResourceShareAssociationsRequest) -> EventLoopFuture<GetResourceShareAssociationsResponse> {
        return client.send(operation: "GetResourceShareAssociations", path: "/getresourceshareassociations", httpMethod: "POST", input: input)
    }

    ///  Gets the invitations for resource sharing that you've received.
    public func getResourceShareInvitations(_ input: GetResourceShareInvitationsRequest) -> EventLoopFuture<GetResourceShareInvitationsResponse> {
        return client.send(operation: "GetResourceShareInvitations", path: "/getresourceshareinvitations", httpMethod: "POST", input: input)
    }

    ///  Gets the resource shares that you own or the resource shares that are shared with you.
    public func getResourceShares(_ input: GetResourceSharesRequest) -> EventLoopFuture<GetResourceSharesResponse> {
        return client.send(operation: "GetResourceShares", path: "/getresourceshares", httpMethod: "POST", input: input)
    }

    ///  Lists the resources in a resource share that is shared with you but that the invitation is still pending for.
    public func listPendingInvitationResources(_ input: ListPendingInvitationResourcesRequest) -> EventLoopFuture<ListPendingInvitationResourcesResponse> {
        return client.send(operation: "ListPendingInvitationResources", path: "/listpendinginvitationresources", httpMethod: "POST", input: input)
    }

    ///  Lists the AWS RAM permissions.
    public func listPermissions(_ input: ListPermissionsRequest) -> EventLoopFuture<ListPermissionsResponse> {
        return client.send(operation: "ListPermissions", path: "/listpermissions", httpMethod: "POST", input: input)
    }

    ///  Lists the principals that you have shared resources with or that have shared resources with you.
    public func listPrincipals(_ input: ListPrincipalsRequest) -> EventLoopFuture<ListPrincipalsResponse> {
        return client.send(operation: "ListPrincipals", path: "/listprincipals", httpMethod: "POST", input: input)
    }

    ///  Lists the AWS RAM permissions that are associated with a resource share.
    public func listResourceSharePermissions(_ input: ListResourceSharePermissionsRequest) -> EventLoopFuture<ListResourceSharePermissionsResponse> {
        return client.send(operation: "ListResourceSharePermissions", path: "/listresourcesharepermissions", httpMethod: "POST", input: input)
    }

    ///  Lists the resources that you added to a resource shares or the resources that are shared with you.
    public func listResources(_ input: ListResourcesRequest) -> EventLoopFuture<ListResourcesResponse> {
        return client.send(operation: "ListResources", path: "/listresources", httpMethod: "POST", input: input)
    }

    ///  Resource shares that were created by attaching a policy to a resource are visible only to the resource share owner, and the resource share cannot be modified in AWS RAM. Use this API action to promote the resource share. When you promote the resource share, it becomes:   Visible to all principals that it is shared with.   Modifiable in AWS RAM.  
    public func promoteResourceShareCreatedFromPolicy(_ input: PromoteResourceShareCreatedFromPolicyRequest) -> EventLoopFuture<PromoteResourceShareCreatedFromPolicyResponse> {
        return client.send(operation: "PromoteResourceShareCreatedFromPolicy", path: "/promoteresourcesharecreatedfrompolicy", httpMethod: "POST", input: input)
    }

    ///  Rejects an invitation to a resource share from another AWS account.
    public func rejectResourceShareInvitation(_ input: RejectResourceShareInvitationRequest) -> EventLoopFuture<RejectResourceShareInvitationResponse> {
        return client.send(operation: "RejectResourceShareInvitation", path: "/rejectresourceshareinvitation", httpMethod: "POST", input: input)
    }

    ///  Adds the specified tags to the specified resource share that you own.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tagresource", httpMethod: "POST", input: input)
    }

    ///  Removes the specified tags from the specified resource share that you own.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/untagresource", httpMethod: "POST", input: input)
    }

    ///  Updates the specified resource share that you own.
    public func updateResourceShare(_ input: UpdateResourceShareRequest) -> EventLoopFuture<UpdateResourceShareResponse> {
        return client.send(operation: "UpdateResourceShare", path: "/updateresourceshare", httpMethod: "POST", input: input)
    }
}
