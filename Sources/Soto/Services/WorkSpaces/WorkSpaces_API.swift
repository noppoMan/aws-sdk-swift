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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS WorkSpaces service.
///
/// Amazon WorkSpaces Service Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft Windows and Amazon Linux desktops for your users.
public struct WorkSpaces: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the WorkSpaces client
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
            amzTarget: "WorkspacesService",
            service: "workspaces",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2015-04-08",
            endpoint: endpoint,
            errorType: WorkSpacesErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Associates the specified connection alias with the specified directory to enable cross-Region redirection. For more information, see  Cross-Region Redirection for Amazon WorkSpaces.  Before performing this operation, call  DescribeConnectionAliases to make sure that the current state of the connection alias is CREATED.
    public func associateConnectionAlias(_ input: AssociateConnectionAliasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateConnectionAliasResult> {
        return self.client.execute(operation: "AssociateConnectionAlias", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates the specified IP access control group with the specified directory.
    public func associateIpGroups(_ input: AssociateIpGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateIpGroupsResult> {
        return self.client.execute(operation: "AssociateIpGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more rules to the specified IP access control group. This action gives users permission to access their WorkSpaces from the CIDR address ranges specified in the rules.
    public func authorizeIpRules(_ input: AuthorizeIpRulesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AuthorizeIpRulesResult> {
        return self.client.execute(operation: "AuthorizeIpRules", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Copies the specified image from the specified Region to the current Region. For more information about copying images, see  Copy a Custom WorkSpaces Image.  Before copying a shared image, be sure to verify that it has been shared from the correct AWS account. To determine if an image has been shared and to see the AWS account ID that owns an image, use the DescribeWorkSpaceImages and DescribeWorkspaceImagePermissions API operations.
    public func copyWorkspaceImage(_ input: CopyWorkspaceImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyWorkspaceImageResult> {
        return self.client.execute(operation: "CopyWorkspaceImage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates the specified connection alias for use with cross-Region redirection. For more information, see  Cross-Region Redirection for Amazon WorkSpaces.
    public func createConnectionAlias(_ input: CreateConnectionAliasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConnectionAliasResult> {
        return self.client.execute(operation: "CreateConnectionAlias", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an IP access control group. An IP access control group provides you with the ability to control the IP addresses from which users are allowed to access their WorkSpaces. To specify the CIDR address ranges, add rules to your IP access control group and then associate the group with your directory. You can add rules when you create the group or at any time using AuthorizeIpRules. There is a default IP access control group associated with your directory. If you don't associate an IP access control group with your directory, the default group is used. The default group includes a default rule that allows users to access their WorkSpaces from anywhere. You cannot modify the default IP access control group for your directory.
    public func createIpGroup(_ input: CreateIpGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIpGroupResult> {
        return self.client.execute(operation: "CreateIpGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates the specified tags for the specified WorkSpaces resource.
    public func createTags(_ input: CreateTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTagsResult> {
        return self.client.execute(operation: "CreateTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates one or more WorkSpaces. This operation is asynchronous and returns before the WorkSpaces are created.
    public func createWorkspaces(_ input: CreateWorkspacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkspacesResult> {
        return self.client.execute(operation: "CreateWorkspaces", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified connection alias. For more information, see  Cross-Region Redirection for Amazon WorkSpaces.   If you will no longer be using a fully qualified domain name (FQDN) as the registration code for your WorkSpaces users, you must take certain precautions to prevent potential security issues. For more information, see  Security Considerations if You Stop Using Cross-Region Redirection.   To delete a connection alias that has been shared, the shared account must first disassociate the connection alias from any directories it has been associated with. Then you must unshare the connection alias from the account it has been shared with. You can delete a connection alias only after it is no longer shared with any accounts or associated with any directories.
    public func deleteConnectionAlias(_ input: DeleteConnectionAliasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConnectionAliasResult> {
        return self.client.execute(operation: "DeleteConnectionAlias", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified IP access control group. You cannot delete an IP access control group that is associated with a directory.
    public func deleteIpGroup(_ input: DeleteIpGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIpGroupResult> {
        return self.client.execute(operation: "DeleteIpGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified tags from the specified WorkSpaces resource.
    public func deleteTags(_ input: DeleteTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTagsResult> {
        return self.client.execute(operation: "DeleteTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified image from your account. To delete an image, you must first delete any bundles that are associated with the image and unshare the image if it is shared with other accounts.
    public func deleteWorkspaceImage(_ input: DeleteWorkspaceImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWorkspaceImageResult> {
        return self.client.execute(operation: "DeleteWorkspaceImage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deregisters the specified directory. This operation is asynchronous and returns before the WorkSpace directory is deregistered. If any WorkSpaces are registered to this directory, you must remove them before you can deregister the directory.
    public func deregisterWorkspaceDirectory(_ input: DeregisterWorkspaceDirectoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterWorkspaceDirectoryResult> {
        return self.client.execute(operation: "DeregisterWorkspaceDirectory", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes the configuration of Bring Your Own License (BYOL) for the specified account.
    public func describeAccount(_ input: DescribeAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountResult> {
        return self.client.execute(operation: "DescribeAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes modifications to the configuration of Bring Your Own License (BYOL) for the specified account.
    public func describeAccountModifications(_ input: DescribeAccountModificationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountModificationsResult> {
        return self.client.execute(operation: "DescribeAccountModifications", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes one or more specified Amazon WorkSpaces clients.
    public func describeClientProperties(_ input: DescribeClientPropertiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClientPropertiesResult> {
        return self.client.execute(operation: "DescribeClientProperties", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the permissions that the owner of a connection alias has granted to another AWS account for the specified connection alias. For more information, see  Cross-Region Redirection for Amazon WorkSpaces.
    public func describeConnectionAliasPermissions(_ input: DescribeConnectionAliasPermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConnectionAliasPermissionsResult> {
        return self.client.execute(operation: "DescribeConnectionAliasPermissions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes the connection aliases used for cross-Region redirection. For more information, see  Cross-Region Redirection for Amazon WorkSpaces.
    public func describeConnectionAliases(_ input: DescribeConnectionAliasesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConnectionAliasesResult> {
        return self.client.execute(operation: "DescribeConnectionAliases", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes one or more of your IP access control groups.
    public func describeIpGroups(_ input: DescribeIpGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIpGroupsResult> {
        return self.client.execute(operation: "DescribeIpGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified tags for the specified WorkSpaces resource.
    public func describeTags(_ input: DescribeTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagsResult> {
        return self.client.execute(operation: "DescribeTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes the available WorkSpace bundles. You can filter the results using either bundle ID or owner, but not both.
    public func describeWorkspaceBundles(_ input: DescribeWorkspaceBundlesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceBundlesResult> {
        return self.client.execute(operation: "DescribeWorkspaceBundles", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the available directories that are registered with Amazon WorkSpaces.
    public func describeWorkspaceDirectories(_ input: DescribeWorkspaceDirectoriesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceDirectoriesResult> {
        return self.client.execute(operation: "DescribeWorkspaceDirectories", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the permissions that the owner of an image has granted to other AWS accounts for an image.
    public func describeWorkspaceImagePermissions(_ input: DescribeWorkspaceImagePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceImagePermissionsResult> {
        return self.client.execute(operation: "DescribeWorkspaceImagePermissions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list that describes one or more specified images, if the image identifiers are provided. Otherwise, all images in the account are described.
    public func describeWorkspaceImages(_ input: DescribeWorkspaceImagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceImagesResult> {
        return self.client.execute(operation: "DescribeWorkspaceImages", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the snapshots for the specified WorkSpace.
    public func describeWorkspaceSnapshots(_ input: DescribeWorkspaceSnapshotsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceSnapshotsResult> {
        return self.client.execute(operation: "DescribeWorkspaceSnapshots", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified WorkSpaces. You can filter the results by using the bundle identifier, directory identifier, or owner, but you can specify only one filter at a time.
    public func describeWorkspaces(_ input: DescribeWorkspacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspacesResult> {
        return self.client.execute(operation: "DescribeWorkspaces", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the connection status of the specified WorkSpaces.
    public func describeWorkspacesConnectionStatus(_ input: DescribeWorkspacesConnectionStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspacesConnectionStatusResult> {
        return self.client.execute(operation: "DescribeWorkspacesConnectionStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates a connection alias from a directory. Disassociating a connection alias disables cross-Region redirection between two directories in different AWS Regions. For more information, see  Cross-Region Redirection for Amazon WorkSpaces.  Before performing this operation, call  DescribeConnectionAliases to make sure that the current state of the connection alias is CREATED.
    public func disassociateConnectionAlias(_ input: DisassociateConnectionAliasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateConnectionAliasResult> {
        return self.client.execute(operation: "DisassociateConnectionAlias", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates the specified IP access control group from the specified directory.
    public func disassociateIpGroups(_ input: DisassociateIpGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateIpGroupsResult> {
        return self.client.execute(operation: "DisassociateIpGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Imports the specified Windows 10 Bring Your Own License (BYOL) image into Amazon WorkSpaces. The image must be an already licensed Amazon EC2 image that is in your AWS account, and you must own the image. For more information about creating BYOL images, see  Bring Your Own Windows Desktop Licenses.
    public func importWorkspaceImage(_ input: ImportWorkspaceImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportWorkspaceImageResult> {
        return self.client.execute(operation: "ImportWorkspaceImage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks, that you can use for the network management interface when you enable Bring Your Own License (BYOL).  This operation can be run only by AWS accounts that are enabled for BYOL. If your account isn't enabled for BYOL, you'll receive an AccessDeniedException error. The management network interface is connected to a secure Amazon WorkSpaces management network. It is used for interactive streaming of the WorkSpace desktop to Amazon WorkSpaces clients, and to allow Amazon WorkSpaces to manage the WorkSpace.
    public func listAvailableManagementCidrRanges(_ input: ListAvailableManagementCidrRangesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAvailableManagementCidrRangesResult> {
        return self.client.execute(operation: "ListAvailableManagementCidrRanges", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Migrates a WorkSpace from one operating system or bundle type to another, while retaining the data on the user volume. The migration process recreates the WorkSpace by using a new root volume from the target bundle image and the user volume from the last available snapshot of the original WorkSpace. During migration, the original D:\Users\%USERNAME% user profile folder is renamed to D:\Users\%USERNAME%MMddyyTHHmmss%.NotMigrated. A new D:\Users\%USERNAME%\ folder is generated by the new OS. Certain files in the old user profile are moved to the new user profile. For available migration scenarios, details about what happens during migration, and best practices, see Migrate a WorkSpace.
    public func migrateWorkspace(_ input: MigrateWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MigrateWorkspaceResult> {
        return self.client.execute(operation: "MigrateWorkspace", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the configuration of Bring Your Own License (BYOL) for the specified account.
    public func modifyAccount(_ input: ModifyAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountResult> {
        return self.client.execute(operation: "ModifyAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the properties of the specified Amazon WorkSpaces clients.
    public func modifyClientProperties(_ input: ModifyClientPropertiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClientPropertiesResult> {
        return self.client.execute(operation: "ModifyClientProperties", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the self-service WorkSpace management capabilities for your users. For more information, see Enable Self-Service WorkSpace Management Capabilities for Your Users.
    public func modifySelfservicePermissions(_ input: ModifySelfservicePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySelfservicePermissionsResult> {
        return self.client.execute(operation: "ModifySelfservicePermissions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Specifies which devices and operating systems users can use to access their WorkSpaces. For more information, see  Control Device Access.
    public func modifyWorkspaceAccessProperties(_ input: ModifyWorkspaceAccessPropertiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWorkspaceAccessPropertiesResult> {
        return self.client.execute(operation: "ModifyWorkspaceAccessProperties", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modify the default properties used to create WorkSpaces.
    public func modifyWorkspaceCreationProperties(_ input: ModifyWorkspaceCreationPropertiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWorkspaceCreationPropertiesResult> {
        return self.client.execute(operation: "ModifyWorkspaceCreationProperties", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the specified WorkSpace properties. For important information about how to modify the size of the root and user volumes, see  Modify a WorkSpace.
    public func modifyWorkspaceProperties(_ input: ModifyWorkspacePropertiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWorkspacePropertiesResult> {
        return self.client.execute(operation: "ModifyWorkspaceProperties", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets the state of the specified WorkSpace. To maintain a WorkSpace without being interrupted, set the WorkSpace state to ADMIN_MAINTENANCE. WorkSpaces in this state do not respond to requests to reboot, stop, start, rebuild, or restore. An AutoStop WorkSpace in this state is not stopped. Users cannot log into a WorkSpace in the ADMIN_MAINTENANCE state.
    public func modifyWorkspaceState(_ input: ModifyWorkspaceStateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWorkspaceStateResult> {
        return self.client.execute(operation: "ModifyWorkspaceState", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Reboots the specified WorkSpaces. You cannot reboot a WorkSpace unless its state is AVAILABLE or UNHEALTHY. This operation is asynchronous and returns before the WorkSpaces have rebooted.
    public func rebootWorkspaces(_ input: RebootWorkspacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RebootWorkspacesResult> {
        return self.client.execute(operation: "RebootWorkspaces", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Rebuilds the specified WorkSpace. You cannot rebuild a WorkSpace unless its state is AVAILABLE, ERROR, UNHEALTHY, STOPPED, or REBOOTING. Rebuilding a WorkSpace is a potentially destructive action that can result in the loss of data. For more information, see Rebuild a WorkSpace. This operation is asynchronous and returns before the WorkSpaces have been completely rebuilt.
    public func rebuildWorkspaces(_ input: RebuildWorkspacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RebuildWorkspacesResult> {
        return self.client.execute(operation: "RebuildWorkspaces", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers the specified directory. This operation is asynchronous and returns before the WorkSpace directory is registered. If this is the first time you are registering a directory, you will need to create the workspaces_DefaultRole role before you can register a directory. For more information, see  Creating the workspaces_DefaultRole Role.
    public func registerWorkspaceDirectory(_ input: RegisterWorkspaceDirectoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterWorkspaceDirectoryResult> {
        return self.client.execute(operation: "RegisterWorkspaceDirectory", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Restores the specified WorkSpace to its last known healthy state. You cannot restore a WorkSpace unless its state is  AVAILABLE, ERROR, UNHEALTHY, or STOPPED. Restoring a WorkSpace is a potentially destructive action that can result in the loss of data. For more information, see Restore a WorkSpace. This operation is asynchronous and returns before the WorkSpace is completely restored.
    public func restoreWorkspace(_ input: RestoreWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestoreWorkspaceResult> {
        return self.client.execute(operation: "RestoreWorkspace", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more rules from the specified IP access control group.
    public func revokeIpRules(_ input: RevokeIpRulesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeIpRulesResult> {
        return self.client.execute(operation: "RevokeIpRules", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts the specified WorkSpaces. You cannot start a WorkSpace unless it has a running mode of AutoStop and a state of STOPPED.
    public func startWorkspaces(_ input: StartWorkspacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartWorkspacesResult> {
        return self.client.execute(operation: "StartWorkspaces", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Stops the specified WorkSpaces. You cannot stop a WorkSpace unless it has a running mode of AutoStop and a state of AVAILABLE, IMPAIRED, UNHEALTHY, or ERROR.
    public func stopWorkspaces(_ input: StopWorkspacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopWorkspacesResult> {
        return self.client.execute(operation: "StopWorkspaces", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Terminates the specified WorkSpaces.  Terminating a WorkSpace is a permanent action and cannot be undone. The user's data is destroyed. If you need to archive any user data, contact AWS Support before terminating the WorkSpace.  You can terminate a WorkSpace that is in any state except SUSPENDED. This operation is asynchronous and returns before the WorkSpaces have been completely terminated. After a WorkSpace is terminated, the TERMINATED state is returned only briefly before the WorkSpace directory metadata is cleaned up, so this state is rarely returned. To confirm that a WorkSpace is terminated, check for the WorkSpace ID by using  DescribeWorkSpaces. If the WorkSpace ID isn't returned, then the WorkSpace has been successfully terminated.
    public func terminateWorkspaces(_ input: TerminateWorkspacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateWorkspacesResult> {
        return self.client.execute(operation: "TerminateWorkspaces", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Shares or unshares a connection alias with one account by specifying whether that account has permission to associate the connection alias with a directory. If the association permission is granted, the connection alias is shared with that account. If the association permission is revoked, the connection alias is unshared with the account. For more information, see  Cross-Region Redirection for Amazon WorkSpaces.    Before performing this operation, call  DescribeConnectionAliases to make sure that the current state of the connection alias is CREATED.   To delete a connection alias that has been shared, the shared account must first disassociate the connection alias from any directories it has been associated with. Then you must unshare the connection alias from the account it has been shared with. You can delete a connection alias only after it is no longer shared with any accounts or associated with any directories.
    public func updateConnectionAliasPermission(_ input: UpdateConnectionAliasPermissionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateConnectionAliasPermissionResult> {
        return self.client.execute(operation: "UpdateConnectionAliasPermission", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Replaces the current rules of the specified IP access control group with the specified rules.
    public func updateRulesOfIpGroup(_ input: UpdateRulesOfIpGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRulesOfIpGroupResult> {
        return self.client.execute(operation: "UpdateRulesOfIpGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Shares or unshares an image with one account by specifying whether that account has permission to copy the image. If the copy image permission is granted, the image is shared with that account. If the copy image permission is revoked, the image is unshared with the account. For more information about sharing images, see  Share or Unshare a Custom WorkSpaces Image.    To delete an image that has been shared, you must unshare the image before you delete it.   Sharing Bring Your Own License (BYOL) images across AWS accounts isn't supported at this time in the AWS GovCloud (US-West) Region. To share BYOL images across accounts in the AWS GovCloud (US-West) Region, contact AWS Support.
    public func updateWorkspaceImagePermission(_ input: UpdateWorkspaceImagePermissionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateWorkspaceImagePermissionResult> {
        return self.client.execute(operation: "UpdateWorkspaceImagePermission", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension WorkSpaces {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: WorkSpaces, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
