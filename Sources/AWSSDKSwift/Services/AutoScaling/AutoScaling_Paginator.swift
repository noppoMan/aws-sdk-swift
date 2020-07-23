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

//MARK: Paginators

extension AutoScaling {

    ///  Describes one or more Auto Scaling groups.
    public func describeAutoScalingGroupsPaginator(
        _ input: AutoScalingGroupNamesType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (AutoScalingGroupsType, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeAutoScalingGroups, tokenKey: \AutoScalingGroupsType.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Describes one or more Auto Scaling instances.
    public func describeAutoScalingInstancesPaginator(
        _ input: DescribeAutoScalingInstancesType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (AutoScalingInstancesType, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeAutoScalingInstances, tokenKey: \AutoScalingInstancesType.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Describes one or more launch configurations.
    public func describeLaunchConfigurationsPaginator(
        _ input: LaunchConfigurationNamesType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (LaunchConfigurationsType, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeLaunchConfigurations, tokenKey: \LaunchConfigurationsType.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Describes the notification actions associated with the specified Auto Scaling group.
    public func describeNotificationConfigurationsPaginator(
        _ input: DescribeNotificationConfigurationsType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeNotificationConfigurationsAnswer, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeNotificationConfigurations, tokenKey: \DescribeNotificationConfigurationsAnswer.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Describes the policies for the specified Auto Scaling group.
    public func describePoliciesPaginator(
        _ input: DescribePoliciesType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (PoliciesType, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describePolicies, tokenKey: \PoliciesType.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Describes one or more scaling activities for the specified Auto Scaling group.
    public func describeScalingActivitiesPaginator(
        _ input: DescribeScalingActivitiesType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ActivitiesType, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeScalingActivities, tokenKey: \ActivitiesType.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Describes the actions scheduled for your Auto Scaling group that haven't run or that have not reached their end time. To describe the actions that have already run, call the DescribeScalingActivities API.
    public func describeScheduledActionsPaginator(
        _ input: DescribeScheduledActionsType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ScheduledActionsType, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeScheduledActions, tokenKey: \ScheduledActionsType.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Describes the specified tags. You can use filters to limit the results. For example, you can query for the tags for a specific Auto Scaling group. You can specify multiple values for a filter. A tag must match at least one of the specified values for it to be included in the results. You can also specify multiple filters. The result includes information for a particular tag only if it matches all the filters. If there's no match, no special message is returned. For more information, see Tagging Auto Scaling Groups and Instances in the Amazon EC2 Auto Scaling User Guide.
    public func describeTagsPaginator(
        _ input: DescribeTagsType,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (TagsType, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeTags, tokenKey: \TagsType.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension AutoScaling.AutoScalingGroupNamesType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.AutoScalingGroupNamesType {
        return .init(
            autoScalingGroupNames: self.autoScalingGroupNames,
            maxRecords: self.maxRecords,
            nextToken: token
        )

    }
}

extension AutoScaling.DescribeAutoScalingInstancesType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.DescribeAutoScalingInstancesType {
        return .init(
            instanceIds: self.instanceIds,
            maxRecords: self.maxRecords,
            nextToken: token
        )

    }
}

extension AutoScaling.LaunchConfigurationNamesType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.LaunchConfigurationNamesType {
        return .init(
            launchConfigurationNames: self.launchConfigurationNames,
            maxRecords: self.maxRecords,
            nextToken: token
        )

    }
}

extension AutoScaling.DescribeNotificationConfigurationsType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.DescribeNotificationConfigurationsType {
        return .init(
            autoScalingGroupNames: self.autoScalingGroupNames,
            maxRecords: self.maxRecords,
            nextToken: token
        )

    }
}

extension AutoScaling.DescribePoliciesType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.DescribePoliciesType {
        return .init(
            autoScalingGroupName: self.autoScalingGroupName,
            maxRecords: self.maxRecords,
            nextToken: token,
            policyNames: self.policyNames,
            policyTypes: self.policyTypes
        )

    }
}

extension AutoScaling.DescribeScalingActivitiesType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.DescribeScalingActivitiesType {
        return .init(
            activityIds: self.activityIds,
            autoScalingGroupName: self.autoScalingGroupName,
            maxRecords: self.maxRecords,
            nextToken: token
        )

    }
}

extension AutoScaling.DescribeScheduledActionsType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.DescribeScheduledActionsType {
        return .init(
            autoScalingGroupName: self.autoScalingGroupName,
            endTime: self.endTime,
            maxRecords: self.maxRecords,
            nextToken: token,
            scheduledActionNames: self.scheduledActionNames,
            startTime: self.startTime
        )

    }
}

extension AutoScaling.DescribeTagsType: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AutoScaling.DescribeTagsType {
        return .init(
            filters: self.filters,
            maxRecords: self.maxRecords,
            nextToken: token
        )

    }
}


