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

import AWSSDKSwiftCore

// MARK: Paginators

extension CloudWatchLogs {

    ///  Lists all your destinations. The results are ASCII-sorted by destination name.
    public func describeDestinationsPaginator(
        _ input: DescribeDestinationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeDestinationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDestinations, tokenKey: \DescribeDestinationsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name.
    public func describeLogGroupsPaginator(
        _ input: DescribeLogGroupsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeLogGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeLogGroups, tokenKey: \DescribeLogGroupsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered. This operation has a limit of five transactions per second, after which transactions are throttled.
    public func describeLogStreamsPaginator(
        _ input: DescribeLogStreamsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeLogStreamsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeLogStreams, tokenKey: \DescribeLogStreamsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the specified metric filters. You can list all the metric filters or filter the results by log name, prefix, metric name, or metric namespace. The results are ASCII-sorted by filter name.
    public func describeMetricFiltersPaginator(
        _ input: DescribeMetricFiltersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeMetricFiltersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeMetricFilters, tokenKey: \DescribeMetricFiltersResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.
    public func describeSubscriptionFiltersPaginator(
        _ input: DescribeSubscriptionFiltersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeSubscriptionFiltersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeSubscriptionFilters, tokenKey: \DescribeSubscriptionFiltersResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream. By default, this operation returns as many log events as can fit in 1 MB (up to 10,000 log events), or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call.
    public func filterLogEventsPaginator(
        _ input: FilterLogEventsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (FilterLogEventsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: filterLogEvents, tokenKey: \FilterLogEventsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists log events from the specified log stream. You can list all the log events or filter using a time range. By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events). You can get additional log events by specifying one of the tokens in a subsequent call.
    public func getLogEventsPaginator(
        _ input: GetLogEventsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetLogEventsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getLogEvents, tokenKey: \GetLogEventsResponse.nextForwardToken, on: eventLoop, onPage: onPage)
    }

}

extension CloudWatchLogs.DescribeDestinationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudWatchLogs.DescribeDestinationsRequest {
        return .init(
            destinationNamePrefix: self.destinationNamePrefix,
            limit: self.limit,
            nextToken: token
        )

    }
}

extension CloudWatchLogs.DescribeLogGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudWatchLogs.DescribeLogGroupsRequest {
        return .init(
            limit: self.limit,
            logGroupNamePrefix: self.logGroupNamePrefix,
            nextToken: token
        )

    }
}

extension CloudWatchLogs.DescribeLogStreamsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudWatchLogs.DescribeLogStreamsRequest {
        return .init(
            descending: self.descending,
            limit: self.limit,
            logGroupName: self.logGroupName,
            logStreamNamePrefix: self.logStreamNamePrefix,
            nextToken: token,
            orderBy: self.orderBy
        )

    }
}

extension CloudWatchLogs.DescribeMetricFiltersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudWatchLogs.DescribeMetricFiltersRequest {
        return .init(
            filterNamePrefix: self.filterNamePrefix,
            limit: self.limit,
            logGroupName: self.logGroupName,
            metricName: self.metricName,
            metricNamespace: self.metricNamespace,
            nextToken: token
        )

    }
}

extension CloudWatchLogs.DescribeSubscriptionFiltersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudWatchLogs.DescribeSubscriptionFiltersRequest {
        return .init(
            filterNamePrefix: self.filterNamePrefix,
            limit: self.limit,
            logGroupName: self.logGroupName,
            nextToken: token
        )

    }
}

extension CloudWatchLogs.FilterLogEventsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudWatchLogs.FilterLogEventsRequest {
        return .init(
            endTime: self.endTime,
            filterPattern: self.filterPattern,
            limit: self.limit,
            logGroupName: self.logGroupName,
            logStreamNamePrefix: self.logStreamNamePrefix,
            logStreamNames: self.logStreamNames,
            nextToken: token,
            startTime: self.startTime
        )

    }
}

extension CloudWatchLogs.GetLogEventsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudWatchLogs.GetLogEventsRequest {
        return .init(
            endTime: self.endTime,
            limit: self.limit,
            logGroupName: self.logGroupName,
            logStreamName: self.logStreamName,
            nextToken: token,
            startFromHead: self.startFromHead,
            startTime: self.startTime
        )

    }
}

