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

import SotoCore

// MARK: Paginators

extension CodeGuruProfiler {
    ///   Returns a list of  FindingsReportSummary  objects that contain analysis results for all profiling groups in your AWS account. 
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getFindingsReportAccountSummaryPaginator<Result>(
        _ input: GetFindingsReportAccountSummaryRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetFindingsReportAccountSummaryResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getFindingsReportAccountSummary,
            tokenKey: \GetFindingsReportAccountSummaryResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getFindingsReportAccountSummaryPaginator(
        _ input: GetFindingsReportAccountSummaryRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetFindingsReportAccountSummaryResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getFindingsReportAccountSummary,
            tokenKey: \GetFindingsReportAccountSummaryResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the available reports for a given profiling group and time range.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listFindingsReportsPaginator<Result>(
        _ input: ListFindingsReportsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListFindingsReportsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listFindingsReports,
            tokenKey: \ListFindingsReportsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listFindingsReportsPaginator(
        _ input: ListFindingsReportsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListFindingsReportsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFindingsReports,
            tokenKey: \ListFindingsReportsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the start times of the available aggregated profiles of a profiling group for an aggregation period within the specified time range.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listProfileTimesPaginator<Result>(
        _ input: ListProfileTimesRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListProfileTimesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listProfileTimes,
            tokenKey: \ListProfileTimesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listProfileTimesPaginator(
        _ input: ListProfileTimesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListProfileTimesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProfileTimes,
            tokenKey: \ListProfileTimesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of profiling groups. The profiling groups are returned as  ProfilingGroupDescription  objects. 
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listProfilingGroupsPaginator<Result>(
        _ input: ListProfilingGroupsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListProfilingGroupsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listProfilingGroups,
            tokenKey: \ListProfilingGroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listProfilingGroupsPaginator(
        _ input: ListProfilingGroupsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListProfilingGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProfilingGroups,
            tokenKey: \ListProfilingGroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension CodeGuruProfiler.GetFindingsReportAccountSummaryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeGuruProfiler.GetFindingsReportAccountSummaryRequest {
        return .init(
            dailyReportsOnly: self.dailyReportsOnly,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension CodeGuruProfiler.ListFindingsReportsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeGuruProfiler.ListFindingsReportsRequest {
        return .init(
            dailyReportsOnly: self.dailyReportsOnly,
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            profilingGroupName: self.profilingGroupName,
            startTime: self.startTime
        )
    }
}

extension CodeGuruProfiler.ListProfileTimesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeGuruProfiler.ListProfileTimesRequest {
        return .init(
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            orderBy: self.orderBy,
            period: self.period,
            profilingGroupName: self.profilingGroupName,
            startTime: self.startTime
        )
    }
}

extension CodeGuruProfiler.ListProfilingGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeGuruProfiler.ListProfilingGroupsRequest {
        return .init(
            includeDescription: self.includeDescription,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
