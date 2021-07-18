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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS Backup service.
///
/// AWS Backup AWS Backup is a unified backup service designed to protect AWS services and their associated data. AWS Backup simplifies the creation, migration, restoration, and deletion of backups, while also providing reporting and auditing.
public struct Backup: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Backup client
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
            service: "backup",
            serviceProtocol: .restjson,
            apiVersion: "2018-11-15",
            endpoint: endpoint,
            errorType: BackupErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a backup plan using a backup plan name and backup rules. A backup plan is a document that contains information that AWS Backup uses to schedule tasks that create recovery points for resources. If you call CreateBackupPlan with a plan that already exists, an AlreadyExistsException is returned.
    public func createBackupPlan(_ input: CreateBackupPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackupPlanOutput> {
        return self.client.execute(operation: "CreateBackupPlan", path: "/backup/plans", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a JSON document that specifies a set of resources to assign to a backup plan. Resources can be included by specifying patterns for a ListOfTags and selected Resources.  For example, consider the following patterns:    Resources: "arn:aws:ec2:region:account-id:volume/volume-id"     ConditionKey:"department"   ConditionValue:"finance"   ConditionType:"StringEquals"     ConditionKey:"importance"   ConditionValue:"critical"   ConditionType:"StringEquals"    Using these patterns would back up all Amazon Elastic Block Store (Amazon EBS) volumes that are tagged as "department=finance", "importance=critical", in addition to an EBS volume with the specified volume ID. Resources and conditions are additive in that all resources that match the pattern are selected. This shouldn't be confused with a logical AND, where all conditions must match. The matching patterns are logically put together using the OR operator. In other words, all patterns that match are selected for backup.
    public func createBackupSelection(_ input: CreateBackupSelectionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackupSelectionOutput> {
        return self.client.execute(operation: "CreateBackupSelection", path: "/backup/plans/{BackupPlanId}/selections", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a logical container where backups are stored. A CreateBackupVault request includes a name, optionally one or more resource tags, an encryption key, and a request ID.  Sensitive data, such as passport numbers, should not be included the name of a backup vault.
    public func createBackupVault(_ input: CreateBackupVaultInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackupVaultOutput> {
        return self.client.execute(operation: "CreateBackupVault", path: "/backup-vaults/{BackupVaultName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a backup plan. A backup plan can only be deleted after all associated selections of resources have been deleted. Deleting a backup plan deletes the current version of a backup plan. Previous versions, if any, will still exist.
    public func deleteBackupPlan(_ input: DeleteBackupPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBackupPlanOutput> {
        return self.client.execute(operation: "DeleteBackupPlan", path: "/backup/plans/{BackupPlanId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the resource selection associated with a backup plan that is specified by the SelectionId.
    @discardableResult public func deleteBackupSelection(_ input: DeleteBackupSelectionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteBackupSelection", path: "/backup/plans/{BackupPlanId}/selections/{SelectionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the backup vault identified by its name. A vault can be deleted only if it is empty.
    @discardableResult public func deleteBackupVault(_ input: DeleteBackupVaultInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteBackupVault", path: "/backup-vaults/{BackupVaultName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the policy document that manages permissions on a backup vault.
    @discardableResult public func deleteBackupVaultAccessPolicy(_ input: DeleteBackupVaultAccessPolicyInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteBackupVaultAccessPolicy", path: "/backup-vaults/{BackupVaultName}/access-policy", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes event notifications for the specified backup vault.
    @discardableResult public func deleteBackupVaultNotifications(_ input: DeleteBackupVaultNotificationsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteBackupVaultNotifications", path: "/backup-vaults/{BackupVaultName}/notification-configuration", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the recovery point specified by a recovery point ID. If the recovery point ID belongs to a continuous backup, calling this endpoint deletes the existing continuous backup and stops future continuous backup.
    @discardableResult public func deleteRecoveryPoint(_ input: DeleteRecoveryPointInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteRecoveryPoint", path: "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns backup job details for the specified BackupJobId.
    public func describeBackupJob(_ input: DescribeBackupJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupJobOutput> {
        return self.client.execute(operation: "DescribeBackupJob", path: "/backup-jobs/{BackupJobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata about a backup vault specified by its name.
    public func describeBackupVault(_ input: DescribeBackupVaultInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupVaultOutput> {
        return self.client.execute(operation: "DescribeBackupVault", path: "/backup-vaults/{BackupVaultName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata associated with creating a copy of a resource.
    public func describeCopyJob(_ input: DescribeCopyJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCopyJobOutput> {
        return self.client.execute(operation: "DescribeCopyJob", path: "/copy-jobs/{CopyJobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the global settings of the AWS account, including whether it is opted in to cross-account backup.
    public func describeGlobalSettings(_ input: DescribeGlobalSettingsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGlobalSettingsOutput> {
        return self.client.execute(operation: "DescribeGlobalSettings", path: "/global-settings", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a saved resource, including the last time it was backed up, its Amazon Resource Name (ARN), and the AWS service type of the saved resource.
    public func describeProtectedResource(_ input: DescribeProtectedResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProtectedResourceOutput> {
        return self.client.execute(operation: "DescribeProtectedResource", path: "/resources/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata associated with a recovery point, including ID, status, encryption, and lifecycle.
    public func describeRecoveryPoint(_ input: DescribeRecoveryPointInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecoveryPointOutput> {
        return self.client.execute(operation: "DescribeRecoveryPoint", path: "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the current service opt-in settings for the Region. If service-opt-in is enabled for a service, AWS Backup tries to protect that service's resources in this Region, when the resource is included in an on-demand backup or scheduled backup plan. Otherwise, AWS Backup does not try to protect that service's resources in this Region, AWS Backup does not try to protect that service's resources in this Region.
    public func describeRegionSettings(_ input: DescribeRegionSettingsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegionSettingsOutput> {
        return self.client.execute(operation: "DescribeRegionSettings", path: "/account-settings", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata associated with a restore job that is specified by a job ID.
    public func describeRestoreJob(_ input: DescribeRestoreJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRestoreJobOutput> {
        return self.client.execute(operation: "DescribeRestoreJob", path: "/restore-jobs/{RestoreJobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified continuous backup recovery point from AWS Backup and releases control of that continuous backup to the source service, such as Amazon RDS. The source service will continue to create and retain continuous backups using the lifecycle that you specified in your original backup plan. Does not support snapshot backup recovery points.
    @discardableResult public func disassociateRecoveryPoint(_ input: DisassociateRecoveryPointInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DisassociateRecoveryPoint", path: "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/disassociate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the backup plan that is specified by the plan ID as a backup template.
    public func exportBackupPlanTemplate(_ input: ExportBackupPlanTemplateInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportBackupPlanTemplateOutput> {
        return self.client.execute(operation: "ExportBackupPlanTemplate", path: "/backup/plans/{BackupPlanId}/toTemplate", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns BackupPlan details for the specified BackupPlanId. The details are the body of a backup plan in JSON format, in addition to plan metadata.
    public func getBackupPlan(_ input: GetBackupPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBackupPlanOutput> {
        return self.client.execute(operation: "GetBackupPlan", path: "/backup/plans/{BackupPlanId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a valid JSON document specifying a backup plan or an error.
    public func getBackupPlanFromJSON(_ input: GetBackupPlanFromJSONInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBackupPlanFromJSONOutput> {
        return self.client.execute(operation: "GetBackupPlanFromJSON", path: "/backup/template/json/toPlan", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the template specified by its templateId as a backup plan.
    public func getBackupPlanFromTemplate(_ input: GetBackupPlanFromTemplateInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBackupPlanFromTemplateOutput> {
        return self.client.execute(operation: "GetBackupPlanFromTemplate", path: "/backup/template/plans/{BackupPlanTemplateId}/toPlan", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns selection metadata and a document in JSON format that specifies a list of resources that are associated with a backup plan.
    public func getBackupSelection(_ input: GetBackupSelectionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBackupSelectionOutput> {
        return self.client.execute(operation: "GetBackupSelection", path: "/backup/plans/{BackupPlanId}/selections/{SelectionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the access policy document that is associated with the named backup vault.
    public func getBackupVaultAccessPolicy(_ input: GetBackupVaultAccessPolicyInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBackupVaultAccessPolicyOutput> {
        return self.client.execute(operation: "GetBackupVaultAccessPolicy", path: "/backup-vaults/{BackupVaultName}/access-policy", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns event notifications for the specified backup vault.
    public func getBackupVaultNotifications(_ input: GetBackupVaultNotificationsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBackupVaultNotificationsOutput> {
        return self.client.execute(operation: "GetBackupVaultNotifications", path: "/backup-vaults/{BackupVaultName}/notification-configuration", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a set of metadata key-value pairs that were used to create the backup.
    public func getRecoveryPointRestoreMetadata(_ input: GetRecoveryPointRestoreMetadataInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRecoveryPointRestoreMetadataOutput> {
        return self.client.execute(operation: "GetRecoveryPointRestoreMetadata", path: "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/restore-metadata", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the AWS resource types supported by AWS Backup.
    public func getSupportedResourceTypes(logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSupportedResourceTypesOutput> {
        return self.client.execute(operation: "GetSupportedResourceTypes", path: "/supported-resource-types", httpMethod: .GET, serviceConfig: self.config, logger: logger, on: eventLoop)
    }

    /// Returns a list of existing backup jobs for an authenticated account for the last 30 days. For a longer period of time, consider using these monitoring tools.
    public func listBackupJobs(_ input: ListBackupJobsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBackupJobsOutput> {
        return self.client.execute(operation: "ListBackupJobs", path: "/backup-jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates.
    public func listBackupPlanTemplates(_ input: ListBackupPlanTemplatesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBackupPlanTemplatesOutput> {
        return self.client.execute(operation: "ListBackupPlanTemplates", path: "/backup/template/plans", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns version metadata of your backup plans, including Amazon Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and version IDs.
    public func listBackupPlanVersions(_ input: ListBackupPlanVersionsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBackupPlanVersionsOutput> {
        return self.client.execute(operation: "ListBackupPlanVersions", path: "/backup/plans/{BackupPlanId}/versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of existing backup plans for an authenticated account. The list is populated only if the advanced option is set for the backup plan. The list contains information such as Amazon Resource Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan names, and creator request IDs.
    public func listBackupPlans(_ input: ListBackupPlansInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBackupPlansOutput> {
        return self.client.execute(operation: "ListBackupPlans", path: "/backup/plans", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array containing metadata of the resources associated with the target backup plan.
    public func listBackupSelections(_ input: ListBackupSelectionsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBackupSelectionsOutput> {
        return self.client.execute(operation: "ListBackupSelections", path: "/backup/plans/{BackupPlanId}/selections", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of recovery point storage containers along with information about them.
    public func listBackupVaults(_ input: ListBackupVaultsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBackupVaultsOutput> {
        return self.client.execute(operation: "ListBackupVaults", path: "/backup-vaults", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata about your copy jobs.
    public func listCopyJobs(_ input: ListCopyJobsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCopyJobsOutput> {
        return self.client.execute(operation: "ListCopyJobs", path: "/copy-jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of resources successfully backed up by AWS Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type.
    public func listProtectedResources(_ input: ListProtectedResourcesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProtectedResourcesOutput> {
        return self.client.execute(operation: "ListProtectedResources", path: "/resources", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns detailed information about the recovery points stored in a backup vault.
    public func listRecoveryPointsByBackupVault(_ input: ListRecoveryPointsByBackupVaultInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecoveryPointsByBackupVaultOutput> {
        return self.client.execute(operation: "ListRecoveryPointsByBackupVault", path: "/backup-vaults/{BackupVaultName}/recovery-points", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns detailed information about recovery points of the type specified by a resource Amazon Resource Name (ARN).
    public func listRecoveryPointsByResource(_ input: ListRecoveryPointsByResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecoveryPointsByResourceOutput> {
        return self.client.execute(operation: "ListRecoveryPointsByResource", path: "/resources/{ResourceArn}/recovery-points", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of jobs that AWS Backup initiated to restore a saved resource, including metadata about the recovery process.
    public func listRestoreJobs(_ input: ListRestoreJobsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRestoreJobsOutput> {
        return self.client.execute(operation: "ListRestoreJobs", path: "/restore-jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of key-value pairs assigned to a target recovery point, backup plan, or backup vault.   ListTags are currently only supported with Amazon EFS backups.
    public func listTags(_ input: ListTagsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsOutput> {
        return self.client.execute(operation: "ListTags", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets a resource-based policy that is used to manage access permissions on the target backup vault. Requires a backup vault name and an access policy document in JSON format.
    @discardableResult public func putBackupVaultAccessPolicy(_ input: PutBackupVaultAccessPolicyInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "PutBackupVaultAccessPolicy", path: "/backup-vaults/{BackupVaultName}/access-policy", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Turns on notifications on a backup vault for the specified topic and events.
    @discardableResult public func putBackupVaultNotifications(_ input: PutBackupVaultNotificationsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "PutBackupVaultNotifications", path: "/backup-vaults/{BackupVaultName}/notification-configuration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an on-demand backup job for the specified resource.
    public func startBackupJob(_ input: StartBackupJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartBackupJobOutput> {
        return self.client.execute(operation: "StartBackupJob", path: "/backup-jobs", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a job to create a one-time copy of the specified resource. Does not support continuous backups.
    public func startCopyJob(_ input: StartCopyJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartCopyJobOutput> {
        return self.client.execute(operation: "StartCopyJob", path: "/copy-jobs", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Recovers the saved resource identified by an Amazon Resource Name (ARN).
    public func startRestoreJob(_ input: StartRestoreJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartRestoreJobOutput> {
        return self.client.execute(operation: "StartRestoreJob", path: "/restore-jobs", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attempts to cancel a job to create a one-time backup of a resource.
    @discardableResult public func stopBackupJob(_ input: StopBackupJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "StopBackupJob", path: "/backup-jobs/{BackupJobId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Assigns a set of key-value pairs to a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN).
    @discardableResult public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a set of key-value pairs from a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN)
    @discardableResult public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UntagResource", path: "/untag/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing backup plan identified by its backupPlanId with the input document in JSON format. The new version is uniquely identified by a VersionId.
    public func updateBackupPlan(_ input: UpdateBackupPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBackupPlanOutput> {
        return self.client.execute(operation: "UpdateBackupPlan", path: "/backup/plans/{BackupPlanId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the current global settings for the AWS account. Use the DescribeGlobalSettings API to determine the current settings.
    @discardableResult public func updateGlobalSettings(_ input: UpdateGlobalSettingsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateGlobalSettings", path: "/global-settings", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets the transition lifecycle of a recovery point. The lifecycle defines when a protected resource is transitioned to cold storage and when it expires. AWS Backup transitions and expires backups automatically according to the lifecycle that you define. Backups transitioned to cold storage must be stored in cold storage for a minimum of 90 days. Therefore, the “expire after days” setting must be 90 days greater than the “transition to cold after days” setting. The “transition to cold after days” setting cannot be changed after a backup has been transitioned to cold. Only Amazon EFS file system backups can be transitioned to cold storage. Does not support continuous backups.
    public func updateRecoveryPointLifecycle(_ input: UpdateRecoveryPointLifecycleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRecoveryPointLifecycleOutput> {
        return self.client.execute(operation: "UpdateRecoveryPointLifecycle", path: "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the current service opt-in settings for the Region. If service-opt-in is enabled for a service, AWS Backup tries to protect that service's resources in this Region, when the resource is included in an on-demand backup or scheduled backup plan. Otherwise, AWS Backup does not try to protect that service's resources in this Region. Use the DescribeRegionSettings API to determine the resource types that are supported.
    @discardableResult public func updateRegionSettings(_ input: UpdateRegionSettingsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateRegionSettings", path: "/account-settings", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension Backup {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Backup, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
