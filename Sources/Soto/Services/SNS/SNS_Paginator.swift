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

extension SNS {
    ///  Lists the endpoints and endpoint attributes for devices in a supported push notification service, such as GCM (Firebase Cloud Messaging) and APNS. The results for ListEndpointsByPlatformApplication are paginated and return a limited list of endpoints, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call ListEndpointsByPlatformApplication again using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see Using Amazon SNS Mobile Push Notifications.  This action is throttled at 30 transactions per second (TPS).
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
    public func listEndpointsByPlatformApplicationPaginator<Result>(
        _ input: ListEndpointsByPlatformApplicationInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListEndpointsByPlatformApplicationResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEndpointsByPlatformApplication,
            tokenKey: \ListEndpointsByPlatformApplicationResponse.nextToken,
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
    public func listEndpointsByPlatformApplicationPaginator(
        _ input: ListEndpointsByPlatformApplicationInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListEndpointsByPlatformApplicationResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEndpointsByPlatformApplication,
            tokenKey: \ListEndpointsByPlatformApplicationResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the platform application objects for the supported push notification services, such as APNS and GCM (Firebase Cloud Messaging). The results for ListPlatformApplications are paginated and return a limited list of applications, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call ListPlatformApplications using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see Using Amazon SNS Mobile Push Notifications.  This action is throttled at 15 transactions per second (TPS).
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
    public func listPlatformApplicationsPaginator<Result>(
        _ input: ListPlatformApplicationsInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListPlatformApplicationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPlatformApplications,
            tokenKey: \ListPlatformApplicationsResponse.nextToken,
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
    public func listPlatformApplicationsPaginator(
        _ input: ListPlatformApplicationsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPlatformApplicationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPlatformApplications,
            tokenKey: \ListPlatformApplicationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of the requester's subscriptions. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a NextToken is also returned. Use the NextToken parameter in a new ListSubscriptions call to get further results. This action is throttled at 30 transactions per second (TPS).
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
    public func listSubscriptionsPaginator<Result>(
        _ input: ListSubscriptionsInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListSubscriptionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSubscriptions,
            tokenKey: \ListSubscriptionsResponse.nextToken,
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
    public func listSubscriptionsPaginator(
        _ input: ListSubscriptionsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSubscriptionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSubscriptions,
            tokenKey: \ListSubscriptionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of the subscriptions to a specific topic. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a NextToken is also returned. Use the NextToken parameter in a new ListSubscriptionsByTopic call to get further results. This action is throttled at 30 transactions per second (TPS).
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
    public func listSubscriptionsByTopicPaginator<Result>(
        _ input: ListSubscriptionsByTopicInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListSubscriptionsByTopicResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSubscriptionsByTopic,
            tokenKey: \ListSubscriptionsByTopicResponse.nextToken,
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
    public func listSubscriptionsByTopicPaginator(
        _ input: ListSubscriptionsByTopicInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSubscriptionsByTopicResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSubscriptionsByTopic,
            tokenKey: \ListSubscriptionsByTopicResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of the requester's topics. Each call returns a limited list of topics, up to 100. If there are more topics, a NextToken is also returned. Use the NextToken parameter in a new ListTopics call to get further results. This action is throttled at 30 transactions per second (TPS).
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
    public func listTopicsPaginator<Result>(
        _ input: ListTopicsInput,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListTopicsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTopics,
            tokenKey: \ListTopicsResponse.nextToken,
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
    public func listTopicsPaginator(
        _ input: ListTopicsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTopicsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTopics,
            tokenKey: \ListTopicsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension SNS.ListEndpointsByPlatformApplicationInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SNS.ListEndpointsByPlatformApplicationInput {
        return .init(
            nextToken: token,
            platformApplicationArn: self.platformApplicationArn
        )
    }
}

extension SNS.ListPlatformApplicationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SNS.ListPlatformApplicationsInput {
        return .init(
            nextToken: token
        )
    }
}

extension SNS.ListSubscriptionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SNS.ListSubscriptionsInput {
        return .init(
            nextToken: token
        )
    }
}

extension SNS.ListSubscriptionsByTopicInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SNS.ListSubscriptionsByTopicInput {
        return .init(
            nextToken: token,
            topicArn: self.topicArn
        )
    }
}

extension SNS.ListTopicsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SNS.ListTopicsInput {
        return .init(
            nextToken: token
        )
    }
}
