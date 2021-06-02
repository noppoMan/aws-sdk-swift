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

import SotoCore

// MARK: Paginators

extension FSx {
    ///  Returns the description of specific Amazon FSx backups, if a BackupIds value is provided for that backup. Otherwise, it returns all backups owned by your AWS account in the AWS Region of the endpoint that you're calling. When retrieving all backups, you can optionally specify the MaxResults parameter to limit the number of backups in a response. If more backups remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of NextToken from the last response. This action is used in an iterative process to retrieve a list of your backups. DescribeBackups is called first without a NextTokenvalue. Then the action continues to be called with the NextToken parameter set to the value of the last NextToken value until a response has no NextToken. When using this action, keep the following in mind:   The implementation might return fewer than MaxResults file system descriptions while still including a NextToken value.   The order of backups returned in the response of one DescribeBackups call and the order of backups returned across the responses of a multi-call iteration is unspecified.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeBackupsPaginator<Result>(
        _ input: DescribeBackupsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeBackupsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeBackups,
            inputKey: \DescribeBackupsRequest.nextToken,
            outputKey: \DescribeBackupsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeBackupsPaginator(
        _ input: DescribeBackupsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeBackupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeBackups,
            inputKey: \DescribeBackupsRequest.nextToken,
            outputKey: \DescribeBackupsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the description of specific Amazon FSx for Lustre data repository tasks, if one or more TaskIds values are provided in the request, or if filters are used in the request. You can use filters to narrow the response to include just tasks for specific file systems, or tasks in a specific lifecycle state. Otherwise, it returns all data repository tasks owned by your AWS account in the AWS Region of the endpoint that you're calling. When retrieving all tasks, you can paginate the response by using the optional MaxResults parameter to limit the number of tasks returned in a response. If more tasks remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of NextToken from the last response.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeDataRepositoryTasksPaginator<Result>(
        _ input: DescribeDataRepositoryTasksRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeDataRepositoryTasksResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeDataRepositoryTasks,
            inputKey: \DescribeDataRepositoryTasksRequest.nextToken,
            outputKey: \DescribeDataRepositoryTasksResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeDataRepositoryTasksPaginator(
        _ input: DescribeDataRepositoryTasksRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeDataRepositoryTasksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeDataRepositoryTasks,
            inputKey: \DescribeDataRepositoryTasksRequest.nextToken,
            outputKey: \DescribeDataRepositoryTasksResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the DNS aliases that are associated with the specified Amazon FSx for Windows File Server file system. A history of all DNS aliases that have been associated with and disassociated from the file system is available in the list of AdministrativeAction provided in the DescribeFileSystems operation response.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeFileSystemAliasesPaginator<Result>(
        _ input: DescribeFileSystemAliasesRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeFileSystemAliasesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeFileSystemAliases,
            inputKey: \DescribeFileSystemAliasesRequest.nextToken,
            outputKey: \DescribeFileSystemAliasesResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeFileSystemAliasesPaginator(
        _ input: DescribeFileSystemAliasesRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeFileSystemAliasesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeFileSystemAliases,
            inputKey: \DescribeFileSystemAliasesRequest.nextToken,
            outputKey: \DescribeFileSystemAliasesResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the description of specific Amazon FSx file systems, if a FileSystemIds value is provided for that file system. Otherwise, it returns descriptions of all file systems owned by your AWS account in the AWS Region of the endpoint that you're calling. When retrieving all file system descriptions, you can optionally specify the MaxResults parameter to limit the number of descriptions in a response. If more file system descriptions remain, Amazon FSx returns a NextToken value in the response. In this case, send a later request with the NextToken request parameter set to the value of NextToken from the last response. This action is used in an iterative process to retrieve a list of your file system descriptions. DescribeFileSystems is called first without a NextTokenvalue. Then the action continues to be called with the NextToken parameter set to the value of the last NextToken value until a response has no NextToken. When using this action, keep the following in mind:   The implementation might return fewer than MaxResults file system descriptions while still including a NextToken value.   The order of file systems returned in the response of one DescribeFileSystems call and the order of file systems returned across the responses of a multicall iteration is unspecified.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeFileSystemsPaginator<Result>(
        _ input: DescribeFileSystemsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeFileSystemsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeFileSystems,
            inputKey: \DescribeFileSystemsRequest.nextToken,
            outputKey: \DescribeFileSystemsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeFileSystemsPaginator(
        _ input: DescribeFileSystemsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeFileSystemsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeFileSystems,
            inputKey: \DescribeFileSystemsRequest.nextToken,
            outputKey: \DescribeFileSystemsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension FSx.DescribeBackupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FSx.DescribeBackupsRequest {
        return .init(
            backupIds: self.backupIds,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension FSx.DescribeDataRepositoryTasksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FSx.DescribeDataRepositoryTasksRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            taskIds: self.taskIds
        )
    }
}

extension FSx.DescribeFileSystemAliasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FSx.DescribeFileSystemAliasesRequest {
        return .init(
            clientRequestToken: self.clientRequestToken,
            fileSystemId: self.fileSystemId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension FSx.DescribeFileSystemsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FSx.DescribeFileSystemsRequest {
        return .init(
            fileSystemIds: self.fileSystemIds,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
