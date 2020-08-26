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
Client object for interacting with AWS WorkMail service.

Amazon WorkMail is a secure, managed business email and calendaring service with support for existing desktop and mobile email clients. You can access your email, contacts, and calendars using Microsoft Outlook, your browser, or other native iOS and Android email applications. You can integrate WorkMail with your existing corporate directory and control both the keys that encrypt your data and the location in which your data is stored. The WorkMail API is designed for the following scenarios:   Listing and describing organizations     Managing users     Managing groups     Managing resources   All WorkMail API operations are Amazon-authenticated and certificate-signed. They not only require the use of the AWS SDK, but also allow for the exclusive use of AWS Identity and Access Management users and roles to help facilitate access, trust, and permission policies. By creating a role and allowing an IAM user to access the WorkMail site, the IAM user gains full administrative visibility into the entire WorkMail organization (or as set in the IAM policy). This includes, but is not limited to, the ability to create, update, and delete users, groups, and resources. This allows developers to perform the scenarios listed above, as well as give users the ability to grant access on a selective basis using the IAM model.
*/
public struct WorkMail: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the WorkMail client
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
            amzTarget: "WorkMailService",
            service: "workmail",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-10-01",
            endpoint: endpoint,
            possibleErrorTypes: [WorkMailErrorType.self],
            timeout: timeout
        )
    }
    
    // MARK: API Calls

    ///  Adds a member (user or group) to the resource's set of delegates.
    public func associateDelegateToResource(_ input: AssociateDelegateToResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AssociateDelegateToResourceResponse> {
        return self.client.execute(operation: "AssociateDelegateToResource", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds a member (user or group) to the group's set.
    public func associateMemberToGroup(_ input: AssociateMemberToGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AssociateMemberToGroupResponse> {
        return self.client.execute(operation: "AssociateMemberToGroup", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds an alias to the set of a given member (user or group) of Amazon WorkMail.
    public func createAlias(_ input: CreateAliasRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateAliasResponse> {
        return self.client.execute(operation: "CreateAlias", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a group that can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.
    public func createGroup(_ input: CreateGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateGroupResponse> {
        return self.client.execute(operation: "CreateGroup", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new Amazon WorkMail resource. 
    public func createResource(_ input: CreateResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateResourceResponse> {
        return self.client.execute(operation: "CreateResource", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a user who can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.
    public func createUser(_ input: CreateUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateUserResponse> {
        return self.client.execute(operation: "CreateUser", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an access control rule for the specified WorkMail organization.
    public func deleteAccessControlRule(_ input: DeleteAccessControlRuleRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteAccessControlRuleResponse> {
        return self.client.execute(operation: "DeleteAccessControlRule", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Remove one or more specified aliases from a set of aliases for a given user.
    public func deleteAlias(_ input: DeleteAliasRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteAliasResponse> {
        return self.client.execute(operation: "DeleteAlias", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a group from Amazon WorkMail.
    public func deleteGroup(_ input: DeleteGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteGroupResponse> {
        return self.client.execute(operation: "DeleteGroup", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes permissions granted to a member (user or group).
    public func deleteMailboxPermissions(_ input: DeleteMailboxPermissionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteMailboxPermissionsResponse> {
        return self.client.execute(operation: "DeleteMailboxPermissions", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the specified resource. 
    public func deleteResource(_ input: DeleteResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteResourceResponse> {
        return self.client.execute(operation: "DeleteResource", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the specified retention policy from the specified organization.
    public func deleteRetentionPolicy(_ input: DeleteRetentionPolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteRetentionPolicyResponse> {
        return self.client.execute(operation: "DeleteRetentionPolicy", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a user from Amazon WorkMail and all subsequent systems. Before you can delete a user, the user state must be DISABLED. Use the DescribeUser action to confirm the user state. Deleting a user is permanent and cannot be undone. WorkMail archives user mailboxes for 30 days before they are permanently removed.
    public func deleteUser(_ input: DeleteUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteUserResponse> {
        return self.client.execute(operation: "DeleteUser", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Mark a user, group, or resource as no longer used in Amazon WorkMail. This action disassociates the mailbox and schedules it for clean-up. WorkMail keeps mailboxes for 30 days before they are permanently removed. The functionality in the console is Disable.
    public func deregisterFromWorkMail(_ input: DeregisterFromWorkMailRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeregisterFromWorkMailResponse> {
        return self.client.execute(operation: "DeregisterFromWorkMail", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the data available for the group.
    public func describeGroup(_ input: DescribeGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeGroupResponse> {
        return self.client.execute(operation: "DescribeGroup", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides more information regarding a given organization based on its identifier.
    public func describeOrganization(_ input: DescribeOrganizationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeOrganizationResponse> {
        return self.client.execute(operation: "DescribeOrganization", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the data available for the resource.
    public func describeResource(_ input: DescribeResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeResourceResponse> {
        return self.client.execute(operation: "DescribeResource", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides information regarding the user.
    public func describeUser(_ input: DescribeUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeUserResponse> {
        return self.client.execute(operation: "DescribeUser", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes a member from the resource's set of delegates.
    public func disassociateDelegateFromResource(_ input: DisassociateDelegateFromResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DisassociateDelegateFromResourceResponse> {
        return self.client.execute(operation: "DisassociateDelegateFromResource", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes a member from a group.
    public func disassociateMemberFromGroup(_ input: DisassociateMemberFromGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DisassociateMemberFromGroupResponse> {
        return self.client.execute(operation: "DisassociateMemberFromGroup", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the effects of an organization's access control rules as they apply to a specified IPv4 address, access protocol action, or user ID. 
    public func getAccessControlEffect(_ input: GetAccessControlEffectRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAccessControlEffectResponse> {
        return self.client.execute(operation: "GetAccessControlEffect", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the default retention policy details for the specified organization.
    public func getDefaultRetentionPolicy(_ input: GetDefaultRetentionPolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDefaultRetentionPolicyResponse> {
        return self.client.execute(operation: "GetDefaultRetentionPolicy", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Requests a user's mailbox details for a specified organization and user.
    public func getMailboxDetails(_ input: GetMailboxDetailsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetMailboxDetailsResponse> {
        return self.client.execute(operation: "GetMailboxDetails", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the access control rules for the specified organization.
    public func listAccessControlRules(_ input: ListAccessControlRulesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListAccessControlRulesResponse> {
        return self.client.execute(operation: "ListAccessControlRules", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a paginated call to list the aliases associated with a given entity.
    public func listAliases(_ input: ListAliasesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListAliasesResponse> {
        return self.client.execute(operation: "ListAliases", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns an overview of the members of a group. Users and groups can be members of a group.
    public func listGroupMembers(_ input: ListGroupMembersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListGroupMembersResponse> {
        return self.client.execute(operation: "ListGroupMembers", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns summaries of the organization's groups.
    public func listGroups(_ input: ListGroupsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListGroupsResponse> {
        return self.client.execute(operation: "ListGroups", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the mailbox permissions associated with a user, group, or resource mailbox.
    public func listMailboxPermissions(_ input: ListMailboxPermissionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListMailboxPermissionsResponse> {
        return self.client.execute(operation: "ListMailboxPermissions", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns summaries of the customer's organizations.
    public func listOrganizations(_ input: ListOrganizationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListOrganizationsResponse> {
        return self.client.execute(operation: "ListOrganizations", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the delegates associated with a resource. Users and groups can be resource delegates and answer requests on behalf of the resource.
    public func listResourceDelegates(_ input: ListResourceDelegatesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListResourceDelegatesResponse> {
        return self.client.execute(operation: "ListResourceDelegates", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns summaries of the organization's resources.
    public func listResources(_ input: ListResourcesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListResourcesResponse> {
        return self.client.execute(operation: "ListResources", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the tags applied to an Amazon WorkMail organization resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns summaries of the organization's users.
    public func listUsers(_ input: ListUsersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListUsersResponse> {
        return self.client.execute(operation: "ListUsers", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds a new access control rule for the specified organization. The rule allows or denies access to the organization for the specified IPv4 addresses, access protocol actions, and user IDs. Adding a new rule with the same name as an existing rule replaces the older rule.
    public func putAccessControlRule(_ input: PutAccessControlRuleRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutAccessControlRuleResponse> {
        return self.client.execute(operation: "PutAccessControlRule", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Sets permissions for a user, group, or resource. This replaces any pre-existing permissions.
    public func putMailboxPermissions(_ input: PutMailboxPermissionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutMailboxPermissionsResponse> {
        return self.client.execute(operation: "PutMailboxPermissions", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Puts a retention policy to the specified organization.
    public func putRetentionPolicy(_ input: PutRetentionPolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutRetentionPolicyResponse> {
        return self.client.execute(operation: "PutRetentionPolicy", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Registers an existing and disabled user, group, or resource for Amazon WorkMail use by associating a mailbox and calendaring capabilities. It performs no change if the user, group, or resource is enabled and fails if the user, group, or resource is deleted. This operation results in the accumulation of costs. For more information, see Pricing. The equivalent console functionality for this operation is Enable.  Users can either be created by calling the CreateUser API operation or they can be synchronized from your directory. For more information, see DeregisterFromWorkMail.
    public func registerToWorkMail(_ input: RegisterToWorkMailRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RegisterToWorkMailResponse> {
        return self.client.execute(operation: "RegisterToWorkMail", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Allows the administrator to reset the password for a user.
    public func resetPassword(_ input: ResetPasswordRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ResetPasswordResponse> {
        return self.client.execute(operation: "ResetPassword", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Applies the specified tags to the specified Amazon WorkMail organization resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Untags the specified tags from the specified Amazon WorkMail organization resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a user's current mailbox quota for a specified organization and user.
    public func updateMailboxQuota(_ input: UpdateMailboxQuotaRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateMailboxQuotaResponse> {
        return self.client.execute(operation: "UpdateMailboxQuota", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the primary email for a user, group, or resource. The current email is moved into the list of aliases (or swapped between an existing alias and the current primary email), and the email provided in the input is promoted as the primary.
    public func updatePrimaryEmailAddress(_ input: UpdatePrimaryEmailAddressRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdatePrimaryEmailAddressResponse> {
        return self.client.execute(operation: "UpdatePrimaryEmailAddress", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates data for the resource. To have the latest information, it must be preceded by a DescribeResource call. The dataset in the request should be the one expected when performing another DescribeResource call.
    public func updateResource(_ input: UpdateResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateResourceResponse> {
        return self.client.execute(operation: "UpdateResource", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }
}
