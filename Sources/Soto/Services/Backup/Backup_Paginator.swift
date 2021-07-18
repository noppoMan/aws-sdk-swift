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

import SotoCore

// MARK: Paginators

extension Backup {
    ///  Returns a list of existing backup jobs for an authenticated account for the last 30 days. For a longer period of time, consider using these monitoring tools.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBackupJobsPaginator<Result>(
        _ input: ListBackupJobsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBackupJobsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBackupJobs,
            inputKey: \ListBackupJobsInput.nextToken,
            outputKey: \ListBackupJobsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBackupJobsPaginator(
        _ input: ListBackupJobsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBackupJobsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBackupJobs,
            inputKey: \ListBackupJobsInput.nextToken,
            outputKey: \ListBackupJobsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBackupPlanTemplatesPaginator<Result>(
        _ input: ListBackupPlanTemplatesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBackupPlanTemplatesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBackupPlanTemplates,
            inputKey: \ListBackupPlanTemplatesInput.nextToken,
            outputKey: \ListBackupPlanTemplatesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBackupPlanTemplatesPaginator(
        _ input: ListBackupPlanTemplatesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBackupPlanTemplatesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBackupPlanTemplates,
            inputKey: \ListBackupPlanTemplatesInput.nextToken,
            outputKey: \ListBackupPlanTemplatesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns version metadata of your backup plans, including Amazon Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and version IDs.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBackupPlanVersionsPaginator<Result>(
        _ input: ListBackupPlanVersionsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBackupPlanVersionsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBackupPlanVersions,
            inputKey: \ListBackupPlanVersionsInput.nextToken,
            outputKey: \ListBackupPlanVersionsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBackupPlanVersionsPaginator(
        _ input: ListBackupPlanVersionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBackupPlanVersionsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBackupPlanVersions,
            inputKey: \ListBackupPlanVersionsInput.nextToken,
            outputKey: \ListBackupPlanVersionsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of existing backup plans for an authenticated account. The list is populated only if the advanced option is set for the backup plan. The list contains information such as Amazon Resource Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan names, and creator request IDs.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBackupPlansPaginator<Result>(
        _ input: ListBackupPlansInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBackupPlansOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBackupPlans,
            inputKey: \ListBackupPlansInput.nextToken,
            outputKey: \ListBackupPlansOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBackupPlansPaginator(
        _ input: ListBackupPlansInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBackupPlansOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBackupPlans,
            inputKey: \ListBackupPlansInput.nextToken,
            outputKey: \ListBackupPlansOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns an array containing metadata of the resources associated with the target backup plan.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBackupSelectionsPaginator<Result>(
        _ input: ListBackupSelectionsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBackupSelectionsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBackupSelections,
            inputKey: \ListBackupSelectionsInput.nextToken,
            outputKey: \ListBackupSelectionsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBackupSelectionsPaginator(
        _ input: ListBackupSelectionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBackupSelectionsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBackupSelections,
            inputKey: \ListBackupSelectionsInput.nextToken,
            outputKey: \ListBackupSelectionsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of recovery point storage containers along with information about them.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBackupVaultsPaginator<Result>(
        _ input: ListBackupVaultsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBackupVaultsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBackupVaults,
            inputKey: \ListBackupVaultsInput.nextToken,
            outputKey: \ListBackupVaultsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBackupVaultsPaginator(
        _ input: ListBackupVaultsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBackupVaultsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBackupVaults,
            inputKey: \ListBackupVaultsInput.nextToken,
            outputKey: \ListBackupVaultsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns metadata about your copy jobs.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listCopyJobsPaginator<Result>(
        _ input: ListCopyJobsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCopyJobsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCopyJobs,
            inputKey: \ListCopyJobsInput.nextToken,
            outputKey: \ListCopyJobsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listCopyJobsPaginator(
        _ input: ListCopyJobsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCopyJobsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCopyJobs,
            inputKey: \ListCopyJobsInput.nextToken,
            outputKey: \ListCopyJobsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns an array of resources successfully backed up by AWS Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listProtectedResourcesPaginator<Result>(
        _ input: ListProtectedResourcesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListProtectedResourcesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listProtectedResources,
            inputKey: \ListProtectedResourcesInput.nextToken,
            outputKey: \ListProtectedResourcesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listProtectedResourcesPaginator(
        _ input: ListProtectedResourcesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListProtectedResourcesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProtectedResources,
            inputKey: \ListProtectedResourcesInput.nextToken,
            outputKey: \ListProtectedResourcesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns detailed information about the recovery points stored in a backup vault.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listRecoveryPointsByBackupVaultPaginator<Result>(
        _ input: ListRecoveryPointsByBackupVaultInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRecoveryPointsByBackupVaultOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRecoveryPointsByBackupVault,
            inputKey: \ListRecoveryPointsByBackupVaultInput.nextToken,
            outputKey: \ListRecoveryPointsByBackupVaultOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listRecoveryPointsByBackupVaultPaginator(
        _ input: ListRecoveryPointsByBackupVaultInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRecoveryPointsByBackupVaultOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRecoveryPointsByBackupVault,
            inputKey: \ListRecoveryPointsByBackupVaultInput.nextToken,
            outputKey: \ListRecoveryPointsByBackupVaultOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns detailed information about recovery points of the type specified by a resource Amazon Resource Name (ARN).
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listRecoveryPointsByResourcePaginator<Result>(
        _ input: ListRecoveryPointsByResourceInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRecoveryPointsByResourceOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRecoveryPointsByResource,
            inputKey: \ListRecoveryPointsByResourceInput.nextToken,
            outputKey: \ListRecoveryPointsByResourceOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listRecoveryPointsByResourcePaginator(
        _ input: ListRecoveryPointsByResourceInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRecoveryPointsByResourceOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRecoveryPointsByResource,
            inputKey: \ListRecoveryPointsByResourceInput.nextToken,
            outputKey: \ListRecoveryPointsByResourceOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of jobs that AWS Backup initiated to restore a saved resource, including metadata about the recovery process.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listRestoreJobsPaginator<Result>(
        _ input: ListRestoreJobsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRestoreJobsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRestoreJobs,
            inputKey: \ListRestoreJobsInput.nextToken,
            outputKey: \ListRestoreJobsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listRestoreJobsPaginator(
        _ input: ListRestoreJobsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRestoreJobsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRestoreJobs,
            inputKey: \ListRestoreJobsInput.nextToken,
            outputKey: \ListRestoreJobsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of key-value pairs assigned to a target recovery point, backup plan, or backup vault.   ListTags are currently only supported with Amazon EFS backups. 
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listTagsPaginator<Result>(
        _ input: ListTagsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTagsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTags,
            inputKey: \ListTagsInput.nextToken,
            outputKey: \ListTagsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listTagsPaginator(
        _ input: ListTagsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTagsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTags,
            inputKey: \ListTagsInput.nextToken,
            outputKey: \ListTagsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Backup.ListBackupJobsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListBackupJobsInput {
        return .init(
            byAccountId: self.byAccountId,
            byBackupVaultName: self.byBackupVaultName,
            byCreatedAfter: self.byCreatedAfter,
            byCreatedBefore: self.byCreatedBefore,
            byResourceArn: self.byResourceArn,
            byResourceType: self.byResourceType,
            byState: self.byState,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListBackupPlanTemplatesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListBackupPlanTemplatesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListBackupPlanVersionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListBackupPlanVersionsInput {
        return .init(
            backupPlanId: self.backupPlanId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListBackupPlansInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListBackupPlansInput {
        return .init(
            includeDeleted: self.includeDeleted,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListBackupSelectionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListBackupSelectionsInput {
        return .init(
            backupPlanId: self.backupPlanId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListBackupVaultsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListBackupVaultsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListCopyJobsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListCopyJobsInput {
        return .init(
            byAccountId: self.byAccountId,
            byCreatedAfter: self.byCreatedAfter,
            byCreatedBefore: self.byCreatedBefore,
            byDestinationVaultArn: self.byDestinationVaultArn,
            byResourceArn: self.byResourceArn,
            byResourceType: self.byResourceType,
            byState: self.byState,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListProtectedResourcesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListProtectedResourcesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListRecoveryPointsByBackupVaultInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListRecoveryPointsByBackupVaultInput {
        return .init(
            backupVaultName: self.backupVaultName,
            byBackupPlanId: self.byBackupPlanId,
            byCreatedAfter: self.byCreatedAfter,
            byCreatedBefore: self.byCreatedBefore,
            byResourceArn: self.byResourceArn,
            byResourceType: self.byResourceType,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListRecoveryPointsByResourceInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListRecoveryPointsByResourceInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )
    }
}

extension Backup.ListRestoreJobsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListRestoreJobsInput {
        return .init(
            byAccountId: self.byAccountId,
            byCreatedAfter: self.byCreatedAfter,
            byCreatedBefore: self.byCreatedBefore,
            byStatus: self.byStatus,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Backup.ListTagsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Backup.ListTagsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )
    }
}
