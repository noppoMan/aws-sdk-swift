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

extension Snowball {
    ///  Returns a specified number of ADDRESS objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.
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
    public func describeAddressesPaginator<Result>(
        _ input: DescribeAddressesRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, DescribeAddressesResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeAddresses,
            tokenKey: \DescribeAddressesResult.nextToken,
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
    public func describeAddressesPaginator(
        _ input: DescribeAddressesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeAddressesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeAddresses,
            tokenKey: \DescribeAddressesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns an array of JobListEntry objects of the specified length. Each JobListEntry object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.
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
    public func listJobsPaginator<Result>(
        _ input: ListJobsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListJobsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listJobs,
            tokenKey: \ListJobsResult.nextToken,
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
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListJobsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listJobs,
            tokenKey: \ListJobsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Snowball.DescribeAddressesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Snowball.DescribeAddressesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Snowball.ListJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Snowball.ListJobsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
