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
Client object for interacting with AWS Backup service.

AWS Backup AWS Backup is a unified backup service designed to protect AWS services and their associated data. AWS Backup simplifies the creation, migration, restoration, and deletion of backups, while also providing reporting and auditing.
*/
public struct Backup: AWSService {

    // MARK: Member variables

    public let client: AWSClient
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
            possibleErrorTypes: [BackupErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }
    
    // MARK: API Calls

    ///  Creates a backup plan using a backup plan name and backup rules. A backup plan is a document that contains information that AWS Backup uses to schedule tasks that create recovery points for resources. If you call CreateBackupPlan with a plan that already exists, an AlreadyExistsException is returned.
    public func createBackupPlan(_ input: CreateBackupPlanInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateBackupPlanOutput> {
        return self.client.execute(operation: "CreateBackupPlan", path: "/backup/plans/", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a JSON document that specifies a set of resources to assign to a backup plan. Resources can be included by specifying patterns for a ListOfTags and selected Resources.  For example, consider the following patterns:    Resources: "arn:aws:ec2:region:account-id:volume/volume-id"     ConditionKey:"department"   ConditionValue:"finance"   ConditionType:"StringEquals"     ConditionKey:"importance"   ConditionValue:"critical"   ConditionType:"StringEquals"    Using these patterns would back up all Amazon Elastic Block Store (Amazon EBS) volumes that are tagged as "department=finance", "importance=critical", in addition to an EBS volume with the specified volume ID. Resources and conditions are additive in that all resources that match the pattern are selected. This shouldn't be confused with a logical AND, where all conditions must match. The matching patterns are logically put together using the OR operator. In other words, all patterns that match are selected for backup.
    public func createBackupSelection(_ input: CreateBackupSelectionInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateBackupSelectionOutput> {
        return self.client.execute(operation: "CreateBackupSelection", path: "/backup/plans/{backupPlanId}/selections/", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a logical container where backups are stored. A CreateBackupVault request includes a name, optionally one or more resource tags, an encryption key, and a request ID.  Sensitive data, such as passport numbers, should not be included the name of a backup vault. 
    public func createBackupVault(_ input: CreateBackupVaultInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateBackupVaultOutput> {
        return self.client.execute(operation: "CreateBackupVault", path: "/backup-vaults/{backupVaultName}", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a backup plan. A backup plan can only be deleted after all associated selections of resources have been deleted. Deleting a backup plan deletes the current version of a backup plan. Previous versions, if any, will still exist.
    public func deleteBackupPlan(_ input: DeleteBackupPlanInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteBackupPlanOutput> {
        return self.client.execute(operation: "DeleteBackupPlan", path: "/backup/plans/{backupPlanId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the resource selection associated with a backup plan that is specified by the SelectionId.
    @discardableResult public func deleteBackupSelection(_ input: DeleteBackupSelectionInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteBackupSelection", path: "/backup/plans/{backupPlanId}/selections/{selectionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the backup vault identified by its name. A vault can be deleted only if it is empty.
    @discardableResult public func deleteBackupVault(_ input: DeleteBackupVaultInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteBackupVault", path: "/backup-vaults/{backupVaultName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the policy document that manages permissions on a backup vault.
    @discardableResult public func deleteBackupVaultAccessPolicy(_ input: DeleteBackupVaultAccessPolicyInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteBackupVaultAccessPolicy", path: "/backup-vaults/{backupVaultName}/access-policy", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes event notifications for the specified backup vault.
    @discardableResult public func deleteBackupVaultNotifications(_ input: DeleteBackupVaultNotificationsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteBackupVaultNotifications", path: "/backup-vaults/{backupVaultName}/notification-configuration", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the recovery point specified by a recovery point ID.
    @discardableResult public func deleteRecoveryPoint(_ input: DeleteRecoveryPointInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteRecoveryPoint", path: "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns backup job details for the specified BackupJobId.
    public func describeBackupJob(_ input: DescribeBackupJobInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeBackupJobOutput> {
        return self.client.execute(operation: "DescribeBackupJob", path: "/backup-jobs/{backupJobId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns metadata about a backup vault specified by its name.
    public func describeBackupVault(_ input: DescribeBackupVaultInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeBackupVaultOutput> {
        return self.client.execute(operation: "DescribeBackupVault", path: "/backup-vaults/{backupVaultName}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns metadata associated with creating a copy of a resource.
    public func describeCopyJob(_ input: DescribeCopyJobInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeCopyJobOutput> {
        return self.client.execute(operation: "DescribeCopyJob", path: "/copy-jobs/{copyJobId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about a saved resource, including the last time it was backed up, its Amazon Resource Name (ARN), and the AWS service type of the saved resource.
    public func describeProtectedResource(_ input: DescribeProtectedResourceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeProtectedResourceOutput> {
        return self.client.execute(operation: "DescribeProtectedResource", path: "/resources/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns metadata associated with a recovery point, including ID, status, encryption, and lifecycle.
    public func describeRecoveryPoint(_ input: DescribeRecoveryPointInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeRecoveryPointOutput> {
        return self.client.execute(operation: "DescribeRecoveryPoint", path: "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the current service opt-in settings for the Region. If the service has a value set to true, AWS Backup tries to protect that service's resources in this Region, when included in an on-demand backup or scheduled backup plan. If the value is set to false for a service, AWS Backup does not try to protect that service's resources in this Region.
    public func describeRegionSettings(_ input: DescribeRegionSettingsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeRegionSettingsOutput> {
        return self.client.execute(operation: "DescribeRegionSettings", path: "/account-settings", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns metadata associated with a restore job that is specified by a job ID.
    public func describeRestoreJob(_ input: DescribeRestoreJobInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeRestoreJobOutput> {
        return self.client.execute(operation: "DescribeRestoreJob", path: "/restore-jobs/{restoreJobId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the backup plan that is specified by the plan ID as a backup template.
    public func exportBackupPlanTemplate(_ input: ExportBackupPlanTemplateInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ExportBackupPlanTemplateOutput> {
        return self.client.execute(operation: "ExportBackupPlanTemplate", path: "/backup/plans/{backupPlanId}/toTemplate/", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns BackupPlan details for the specified BackupPlanId. Returns the body of a backup plan in JSON format, in addition to plan metadata.
    public func getBackupPlan(_ input: GetBackupPlanInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetBackupPlanOutput> {
        return self.client.execute(operation: "GetBackupPlan", path: "/backup/plans/{backupPlanId}/", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a valid JSON document specifying a backup plan or an error.
    public func getBackupPlanFromJSON(_ input: GetBackupPlanFromJSONInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetBackupPlanFromJSONOutput> {
        return self.client.execute(operation: "GetBackupPlanFromJSON", path: "/backup/template/json/toPlan", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the template specified by its templateId as a backup plan.
    public func getBackupPlanFromTemplate(_ input: GetBackupPlanFromTemplateInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetBackupPlanFromTemplateOutput> {
        return self.client.execute(operation: "GetBackupPlanFromTemplate", path: "/backup/template/plans/{templateId}/toPlan", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns selection metadata and a document in JSON format that specifies a list of resources that are associated with a backup plan.
    public func getBackupSelection(_ input: GetBackupSelectionInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetBackupSelectionOutput> {
        return self.client.execute(operation: "GetBackupSelection", path: "/backup/plans/{backupPlanId}/selections/{selectionId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the access policy document that is associated with the named backup vault.
    public func getBackupVaultAccessPolicy(_ input: GetBackupVaultAccessPolicyInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetBackupVaultAccessPolicyOutput> {
        return self.client.execute(operation: "GetBackupVaultAccessPolicy", path: "/backup-vaults/{backupVaultName}/access-policy", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns event notifications for the specified backup vault.
    public func getBackupVaultNotifications(_ input: GetBackupVaultNotificationsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetBackupVaultNotificationsOutput> {
        return self.client.execute(operation: "GetBackupVaultNotifications", path: "/backup-vaults/{backupVaultName}/notification-configuration", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a set of metadata key-value pairs that were used to create the backup.
    public func getRecoveryPointRestoreMetadata(_ input: GetRecoveryPointRestoreMetadataInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetRecoveryPointRestoreMetadataOutput> {
        return self.client.execute(operation: "GetRecoveryPointRestoreMetadata", path: "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}/restore-metadata", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the AWS resource types supported by AWS Backup.
    public func getSupportedResourceTypes(on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetSupportedResourceTypesOutput> {
        return self.client.execute(operation: "GetSupportedResourceTypes", path: "/supported-resource-types", httpMethod: .GET, serviceConfig: self.config, on: eventLoop, logger: logger)
    }

    ///  Returns a list of existing backup jobs for an authenticated account.
    public func listBackupJobs(_ input: ListBackupJobsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListBackupJobsOutput> {
        return self.client.execute(operation: "ListBackupJobs", path: "/backup-jobs/", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates.
    public func listBackupPlanTemplates(_ input: ListBackupPlanTemplatesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListBackupPlanTemplatesOutput> {
        return self.client.execute(operation: "ListBackupPlanTemplates", path: "/backup/template/plans", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns version metadata of your backup plans, including Amazon Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and version IDs.
    public func listBackupPlanVersions(_ input: ListBackupPlanVersionsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListBackupPlanVersionsOutput> {
        return self.client.execute(operation: "ListBackupPlanVersions", path: "/backup/plans/{backupPlanId}/versions/", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of existing backup plans for an authenticated account. The list is populated only if the advanced option is set for the backup plan. The list contains information such as Amazon Resource Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan names, and creator request IDs.
    public func listBackupPlans(_ input: ListBackupPlansInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListBackupPlansOutput> {
        return self.client.execute(operation: "ListBackupPlans", path: "/backup/plans/", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns an array containing metadata of the resources associated with the target backup plan.
    public func listBackupSelections(_ input: ListBackupSelectionsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListBackupSelectionsOutput> {
        return self.client.execute(operation: "ListBackupSelections", path: "/backup/plans/{backupPlanId}/selections/", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of recovery point storage containers along with information about them.
    public func listBackupVaults(_ input: ListBackupVaultsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListBackupVaultsOutput> {
        return self.client.execute(operation: "ListBackupVaults", path: "/backup-vaults/", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns metadata about your copy jobs.
    public func listCopyJobs(_ input: ListCopyJobsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListCopyJobsOutput> {
        return self.client.execute(operation: "ListCopyJobs", path: "/copy-jobs/", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns an array of resources successfully backed up by AWS Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type.
    public func listProtectedResources(_ input: ListProtectedResourcesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListProtectedResourcesOutput> {
        return self.client.execute(operation: "ListProtectedResources", path: "/resources/", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns detailed information about the recovery points stored in a backup vault.
    public func listRecoveryPointsByBackupVault(_ input: ListRecoveryPointsByBackupVaultInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListRecoveryPointsByBackupVaultOutput> {
        return self.client.execute(operation: "ListRecoveryPointsByBackupVault", path: "/backup-vaults/{backupVaultName}/recovery-points/", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns detailed information about recovery points of the type specified by a resource Amazon Resource Name (ARN).
    public func listRecoveryPointsByResource(_ input: ListRecoveryPointsByResourceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListRecoveryPointsByResourceOutput> {
        return self.client.execute(operation: "ListRecoveryPointsByResource", path: "/resources/{resourceArn}/recovery-points/", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of jobs that AWS Backup initiated to restore a saved resource, including metadata about the recovery process.
    public func listRestoreJobs(_ input: ListRestoreJobsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListRestoreJobsOutput> {
        return self.client.execute(operation: "ListRestoreJobs", path: "/restore-jobs/", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of key-value pairs assigned to a target recovery point, backup plan, or backup vault.   ListTags are currently only supported with Amazon EFS backups. 
    public func listTags(_ input: ListTagsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsOutput> {
        return self.client.execute(operation: "ListTags", path: "/tags/{resourceArn}/", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Sets a resource-based policy that is used to manage access permissions on the target backup vault. Requires a backup vault name and an access policy document in JSON format.
    @discardableResult public func putBackupVaultAccessPolicy(_ input: PutBackupVaultAccessPolicyInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "PutBackupVaultAccessPolicy", path: "/backup-vaults/{backupVaultName}/access-policy", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Turns on notifications on a backup vault for the specified topic and events.
    @discardableResult public func putBackupVaultNotifications(_ input: PutBackupVaultNotificationsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "PutBackupVaultNotifications", path: "/backup-vaults/{backupVaultName}/notification-configuration", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts an on-demand backup job for the specified resource.
    public func startBackupJob(_ input: StartBackupJobInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartBackupJobOutput> {
        return self.client.execute(operation: "StartBackupJob", path: "/backup-jobs", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts a job to create a one-time copy of the specified resource.
    public func startCopyJob(_ input: StartCopyJobInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartCopyJobOutput> {
        return self.client.execute(operation: "StartCopyJob", path: "/copy-jobs", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Recovers the saved resource identified by an Amazon Resource Name (ARN).  If the resource ARN is included in the request, then the last complete backup of that resource is recovered. If the ARN of a recovery point is supplied, then that recovery point is restored.
    public func startRestoreJob(_ input: StartRestoreJobInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartRestoreJobOutput> {
        return self.client.execute(operation: "StartRestoreJob", path: "/restore-jobs", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Attempts to cancel a job to create a one-time backup of a resource.
    @discardableResult public func stopBackupJob(_ input: StopBackupJobInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "StopBackupJob", path: "/backup-jobs/{backupJobId}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Assigns a set of key-value pairs to a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN).
    @discardableResult public func tagResource(_ input: TagResourceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes a set of key-value pairs from a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN)
    @discardableResult public func untagResource(_ input: UntagResourceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UntagResource", path: "/untag/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing backup plan identified by its backupPlanId with the input document in JSON format. The new version is uniquely identified by a VersionId.
    public func updateBackupPlan(_ input: UpdateBackupPlanInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateBackupPlanOutput> {
        return self.client.execute(operation: "UpdateBackupPlan", path: "/backup/plans/{backupPlanId}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Sets the transition lifecycle of a recovery point. The lifecycle defines when a protected resource is transitioned to cold storage and when it expires. AWS Backup transitions and expires backups automatically according to the lifecycle that you define.  Backups transitioned to cold storage must be stored in cold storage for a minimum of 90 days. Therefore, the “expire after days” setting must be 90 days greater than the “transition to cold after days” setting. The “transition to cold after days” setting cannot be changed after a backup has been transitioned to cold. 
    public func updateRecoveryPointLifecycle(_ input: UpdateRecoveryPointLifecycleInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateRecoveryPointLifecycleOutput> {
        return self.client.execute(operation: "UpdateRecoveryPointLifecycle", path: "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the current service opt-in settings for the Region. If the service has a value set to true, AWS Backup tries to protect that service's resources in this Region, when included in an on-demand backup or scheduled backup plan. If the value is set to false for a service, AWS Backup does not try to protect that service's resources in this Region.
    @discardableResult public func updateRegionSettings(_ input: UpdateRegionSettingsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateRegionSettings", path: "/account-settings", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
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
