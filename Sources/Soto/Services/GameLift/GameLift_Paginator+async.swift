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

#if compiler(>=5.5) && $AsyncAwait

import SotoCore

// MARK: Paginators

@available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
extension GameLift {
    ///  Retrieves core fleet-wide properties, including the computing hardware and deployment configuration for all instances in the fleet. This operation can be used in the following ways:    To get attributes for one or more specific fleets, provide a list of fleet IDs or fleet ARNs.    To get attributes for all fleets, do not provide a fleet identifier.    When requesting attributes for multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages.  If successful, a FleetAttributes object is returned for each fleet requested, unless the fleet identifier is not found.   Some API operations limit the number of fleet IDs that allowed in one request. If a request exceeds this limit, the request fails and the error message contains the maximum allowed number.   Learn more   Setting up GameLift fleets   Related actions   ListFleets | DescribeEC2InstanceLimits | DescribeFleetAttributes | DescribeFleetCapacity | DescribeFleetEvents | DescribeFleetLocationAttributes | DescribeFleetPortSettings | DescribeFleetUtilization | DescribeRuntimeConfiguration | DescribeScalingPolicies | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeFleetAttributesPaginator(
        _ input: DescribeFleetAttributesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeFleetAttributesInput, DescribeFleetAttributesOutput> {
        return .init(
            input: input,
            command: describeFleetAttributes,
            inputKey: \DescribeFleetAttributesInput.nextToken,
            outputKey: \DescribeFleetAttributesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the resource capacity settings for one or more fleets. The data returned includes the current fleet capacity (number of EC2 instances), and settings that can control how capacity scaling. For fleets with remote locations, this operation retrieves data for the fleet's home Region only. See DescribeFleetLocationCapacity to get capacity settings for a fleet's remote locations. This operation can be used in the following ways:    To get capacity data for one or more specific fleets, provide a list of fleet IDs or fleet ARNs.    To get capacity data for all fleets, do not provide a fleet identifier.    When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages.  If successful, a FleetCapacity object is returned for each requested fleet ID. Each FleetCapacity object includes a Location property, which is set to the fleet's home Region. When a list of fleet IDs is provided, attribute objects are returned only for fleets that currently exist.  Some API operations may limit the number of fleet IDs that are allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.   Learn more   Setting up GameLift fleets   GameLift metrics for fleets   Related actions   ListFleets | DescribeEC2InstanceLimits | DescribeFleetAttributes | DescribeFleetCapacity | DescribeFleetEvents | DescribeFleetLocationAttributes | DescribeFleetPortSettings | DescribeFleetUtilization | DescribeRuntimeConfiguration | DescribeScalingPolicies | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeFleetCapacityPaginator(
        _ input: DescribeFleetCapacityInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeFleetCapacityInput, DescribeFleetCapacityOutput> {
        return .init(
            input: input,
            command: describeFleetCapacity,
            inputKey: \DescribeFleetCapacityInput.nextToken,
            outputKey: \DescribeFleetCapacityOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves entries from a fleet's event log. Fleet events are initiated by changes in status, such as during fleet creation and termination, changes in capacity, etc. If a fleet has multiple locations, events are also initiated by changes to status and capacity in remote locations.  You can specify a time range to limit the result set. Use the pagination parameters to retrieve results as a set of sequential pages.  If successful, a collection of event log entries matching the request are returned.  Learn more   Setting up GameLift fleets   Related actions   ListFleets | DescribeEC2InstanceLimits | DescribeFleetAttributes | DescribeFleetCapacity | DescribeFleetEvents | DescribeFleetLocationAttributes | DescribeFleetPortSettings | DescribeFleetUtilization | DescribeRuntimeConfiguration | DescribeScalingPolicies | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeFleetEventsPaginator(
        _ input: DescribeFleetEventsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeFleetEventsInput, DescribeFleetEventsOutput> {
        return .init(
            input: input,
            command: describeFleetEvents,
            inputKey: \DescribeFleetEventsInput.nextToken,
            outputKey: \DescribeFleetEventsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves information on a fleet's remote locations, including life-cycle status and any suspended fleet activity.  This operation can be used in the following ways:    To get data for specific locations, provide a fleet identifier and a list of locations. Location data is returned in the order that it is requested.    To get data for all locations, provide a fleet identifier only. Location data is returned in no particular order.    When requesting attributes for multiple locations, use the pagination parameters to retrieve results as a set of sequential pages.  If successful, a LocationAttributes object is returned for each requested location. If the fleet does not have a requested location, no information is returned. This operation does not return the home Region. To get information on a fleet's home Region, call DescribeFleetAttributes.  Learn more   Setting up GameLift fleets   Related actions   CreateFleetLocations | DescribeFleetLocationAttributes | DescribeFleetLocationCapacity | DescribeFleetLocationUtilization | DescribeFleetAttributes | DescribeFleetCapacity | DescribeFleetUtilization | UpdateFleetCapacity | StopFleetActions | DeleteFleetLocations | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeFleetLocationAttributesPaginator(
        _ input: DescribeFleetLocationAttributesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeFleetLocationAttributesInput, DescribeFleetLocationAttributesOutput> {
        return .init(
            input: input,
            command: describeFleetLocationAttributes,
            inputKey: \DescribeFleetLocationAttributesInput.nextToken,
            outputKey: \DescribeFleetLocationAttributesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves utilization statistics for one or more fleets. Utilization data provides a snapshot of how the fleet's hosting resources are currently being used. For fleets with remote locations, this operation retrieves data for the fleet's home Region only. See DescribeFleetLocationUtilization to get utilization statistics for a fleet's remote locations. This operation can be used in the following ways:    To get utilization data for one or more specific fleets, provide a list of fleet IDs or fleet ARNs.    To get utilization data for all fleets, do not provide a fleet identifier.    When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages.  If successful, a FleetUtilization object is returned for each requested fleet ID, unless the fleet identifier is not found. Each fleet utilization object includes a Location property, which is set to the fleet's home Region.   Some API operations may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.   Learn more   Setting up GameLift Fleets   GameLift Metrics for Fleets   Related actions   ListFleets | DescribeEC2InstanceLimits | DescribeFleetAttributes | DescribeFleetCapacity | DescribeFleetEvents | DescribeFleetLocationAttributes | DescribeFleetPortSettings | DescribeFleetUtilization | DescribeRuntimeConfiguration | DescribeScalingPolicies | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeFleetUtilizationPaginator(
        _ input: DescribeFleetUtilizationInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeFleetUtilizationInput, DescribeFleetUtilizationOutput> {
        return .init(
            input: input,
            command: describeFleetUtilization,
            inputKey: \DescribeFleetUtilizationInput.nextToken,
            outputKey: \DescribeFleetUtilizationOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   This operation is used with the GameLift FleetIQ solution and game server groups.  Retrieves status information about the Amazon EC2 instances associated with a GameLift FleetIQ game server group. Use this operation to detect when instances are active or not available to host new game servers. If you are looking for instance configuration information, call DescribeGameServerGroup or access the corresponding Auto Scaling group properties. To request status for all instances in the game server group, provide a game server group ID only. To request status for specific instances, provide the game server group ID and one or more instance IDs. Use the pagination parameters to retrieve results in sequential segments. If successful, a collection of GameServerInstance objects is returned.  This operation is not designed to be called with every game server claim request; this practice can cause you to exceed your API limit, which results in errors. Instead, as a best practice, cache the results and refresh your cache no more than once every 10 seconds.  Learn more   GameLift FleetIQ Guide   Related actions   CreateGameServerGroup | ListGameServerGroups | DescribeGameServerGroup | UpdateGameServerGroup | DeleteGameServerGroup | ResumeGameServerGroup | SuspendGameServerGroup | DescribeGameServerInstances | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeGameServerInstancesPaginator(
        _ input: DescribeGameServerInstancesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeGameServerInstancesInput, DescribeGameServerInstancesOutput> {
        return .init(
            input: input,
            command: describeGameServerInstances,
            inputKey: \DescribeGameServerInstancesInput.nextToken,
            outputKey: \DescribeGameServerInstancesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves additional game session properties, including the game session protection policy in force, a set of one or more game sessions in a specific fleet location. You can optionally filter the results by current game session status. Alternatively, use SearchGameSessions to request a set of active game sessions that are filtered by certain criteria. To retrieve all game session properties, use DescribeGameSessions.  This operation can be used in the following ways:    To retrieve details for all game sessions that are currently running on all locations in a fleet, provide a fleet or alias ID, with an optional status filter. This approach returns details from the fleet's home Region and all remote locations.   To retrieve details for all game sessions that are currently running on a specific fleet location, provide a fleet or alias ID and a location name, with optional status filter. The location can be the fleet's home Region or any remote location.   To retrieve details for a specific game session, provide the game session ID. This approach looks for the game session ID in all fleets that reside in the AWS Region defined in the request.   Use the pagination parameters to retrieve results as a set of sequential pages.  If successful, a GameSessionDetail object is returned for each game session that matches the request.  Learn more   Find a game session   Related actions   CreateGameSession | DescribeGameSessions | DescribeGameSessionDetails | SearchGameSessions | UpdateGameSession | GetGameSessionLogUrl | StartGameSessionPlacement | DescribeGameSessionPlacement | StopGameSessionPlacement | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeGameSessionDetailsPaginator(
        _ input: DescribeGameSessionDetailsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeGameSessionDetailsInput, DescribeGameSessionDetailsOutput> {
        return .init(
            input: input,
            command: describeGameSessionDetails,
            inputKey: \DescribeGameSessionDetailsInput.nextToken,
            outputKey: \DescribeGameSessionDetailsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the properties for one or more game session queues. When requesting multiple queues, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a GameSessionQueue object is returned for each requested queue. When specifying a list of queues, objects are returned only for queues that currently exist in the Region.  Learn more    View Your Queues   Related actions   CreateGameSessionQueue | DescribeGameSessionQueues | UpdateGameSessionQueue | DeleteGameSessionQueue | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeGameSessionQueuesPaginator(
        _ input: DescribeGameSessionQueuesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeGameSessionQueuesInput, DescribeGameSessionQueuesOutput> {
        return .init(
            input: input,
            command: describeGameSessionQueues,
            inputKey: \DescribeGameSessionQueuesInput.nextToken,
            outputKey: \DescribeGameSessionQueuesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a set of one or more game sessions in a specific fleet location. You can optionally filter the results by current game session status. Alternatively, use SearchGameSessions to request a set of active game sessions that are filtered by certain criteria. To retrieve the protection policy for game sessions, use DescribeGameSessionDetails. This operation can be used in the following ways:    To retrieve all game sessions that are currently running on all locations in a fleet, provide a fleet or alias ID, with an optional status filter. This approach returns all game sessions in the fleet's home Region and all remote locations.   To retrieve all game sessions that are currently running on a specific fleet location, provide a fleet or alias ID and a location name, with optional status filter. The location can be the fleet's home Region or any remote location.   To retrieve a specific game session, provide the game session ID. This approach looks for the game session ID in all fleets that reside in the AWS Region defined in the request.   Use the pagination parameters to retrieve results as a set of sequential pages.  If successful, a GameSession object is returned for each game session that matches the request.  Available in GameLift Local.   Learn more   Find a game session   Related actions   CreateGameSession | DescribeGameSessions | DescribeGameSessionDetails | SearchGameSessions | UpdateGameSession | GetGameSessionLogUrl | StartGameSessionPlacement | DescribeGameSessionPlacement | StopGameSessionPlacement | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeGameSessionsPaginator(
        _ input: DescribeGameSessionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeGameSessionsInput, DescribeGameSessionsOutput> {
        return .init(
            input: input,
            command: describeGameSessions,
            inputKey: \DescribeGameSessionsInput.nextToken,
            outputKey: \DescribeGameSessionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves information about a fleet's instances, including instance IDs, connection data, and status.  This operation can be used in the following ways:   To get information on all instances that are deployed to a fleet's home Region, provide the fleet ID.   To get information on all instances that are deployed to a fleet's remote location, provide the fleet ID and location name.   To get information on a specific instance in a fleet, provide the fleet ID and instance ID.   Use the pagination parameters to retrieve results as a set of sequential pages.  If successful, an Instance object is returned for each requested instance. Instances are not returned in any particular order.   Learn more   Remotely Access Fleet Instances   Debug Fleet Issues   Related actions   DescribeInstances | GetInstanceAccess | DescribeEC2InstanceLimits | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeInstancesPaginator(
        _ input: DescribeInstancesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeInstancesInput, DescribeInstancesOutput> {
        return .init(
            input: input,
            command: describeInstances,
            inputKey: \DescribeInstancesInput.nextToken,
            outputKey: \DescribeInstancesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the details of FlexMatch matchmaking configurations.  This operation offers the following options: (1) retrieve all matchmaking configurations, (2) retrieve configurations for a specified list, or (3) retrieve all configurations that use a specified rule set name. When requesting multiple items, use the pagination parameters to retrieve results as a set of sequential pages.  If successful, a configuration is returned for each requested name. When specifying a list of names, only configurations that currently exist are returned.   Learn more    Setting up FlexMatch matchmakers   Related actions   CreateMatchmakingConfiguration | DescribeMatchmakingConfigurations | UpdateMatchmakingConfiguration | DeleteMatchmakingConfiguration | CreateMatchmakingRuleSet | DescribeMatchmakingRuleSets | ValidateMatchmakingRuleSet | DeleteMatchmakingRuleSet | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeMatchmakingConfigurationsPaginator(
        _ input: DescribeMatchmakingConfigurationsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeMatchmakingConfigurationsInput, DescribeMatchmakingConfigurationsOutput> {
        return .init(
            input: input,
            command: describeMatchmakingConfigurations,
            inputKey: \DescribeMatchmakingConfigurationsInput.nextToken,
            outputKey: \DescribeMatchmakingConfigurationsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the details for FlexMatch matchmaking rule sets. You can request all existing rule sets for the Region, or provide a list of one or more rule set names. When requesting multiple items, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a rule set is returned for each requested name.   Learn more     Build a rule set     Related actions   CreateMatchmakingConfiguration | DescribeMatchmakingConfigurations | UpdateMatchmakingConfiguration | DeleteMatchmakingConfiguration | CreateMatchmakingRuleSet | DescribeMatchmakingRuleSets | ValidateMatchmakingRuleSet | DeleteMatchmakingRuleSet | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeMatchmakingRuleSetsPaginator(
        _ input: DescribeMatchmakingRuleSetsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeMatchmakingRuleSetsInput, DescribeMatchmakingRuleSetsOutput> {
        return .init(
            input: input,
            command: describeMatchmakingRuleSets,
            inputKey: \DescribeMatchmakingRuleSetsInput.nextToken,
            outputKey: \DescribeMatchmakingRuleSetsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves properties for one or more player sessions.  This action can be used in the following ways:    To retrieve a specific player session, provide the player session ID only.   To retrieve all player sessions in a game session, provide the game session ID only.   To retrieve all player sessions for a specific player, provide a player ID only.   To request player sessions, specify either a player session ID, game session ID, or player ID. You can filter this request by player session status. Use the pagination parameters to retrieve results as a set of sequential pages.  If successful, a PlayerSession object is returned for each session that matches the request.  Available in Amazon GameLift Local.   Related actions   CreatePlayerSession | CreatePlayerSessions | DescribePlayerSessions | StartGameSessionPlacement | DescribeGameSessionPlacement | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describePlayerSessionsPaginator(
        _ input: DescribePlayerSessionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribePlayerSessionsInput, DescribePlayerSessionsOutput> {
        return .init(
            input: input,
            command: describePlayerSessions,
            inputKey: \DescribePlayerSessionsInput.nextToken,
            outputKey: \DescribePlayerSessionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves all scaling policies applied to a fleet. To get a fleet's scaling policies, specify the fleet ID. You can filter this request by policy status, such as to retrieve only active scaling policies. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, set of ScalingPolicy objects is returned for the fleet. A fleet may have all of its scaling policies suspended (StopFleetActions). This operation does not affect the status of the scaling policies, which remains ACTIVE. To see whether a fleet's scaling policies are in force or suspended, call DescribeFleetAttributes and check the stopped actions.  Related actions   DescribeFleetCapacity | UpdateFleetCapacity | DescribeEC2InstanceLimits | PutScalingPolicy | DescribeScalingPolicies | DeleteScalingPolicy | StopFleetActions | StartFleetActions | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeScalingPoliciesPaginator(
        _ input: DescribeScalingPoliciesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeScalingPoliciesInput, DescribeScalingPoliciesOutput> {
        return .init(
            input: input,
            command: describeScalingPolicies,
            inputKey: \DescribeScalingPoliciesInput.nextToken,
            outputKey: \DescribeScalingPoliciesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves all aliases for this AWS account. You can filter the result set by alias name and/or routing strategy type. Use the pagination parameters to retrieve results in sequential pages.  Returned aliases are not listed in any particular order.   Related actions   CreateAlias | ListAliases | DescribeAlias | UpdateAlias | DeleteAlias | ResolveAlias | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAliasesPaginator(
        _ input: ListAliasesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAliasesInput, ListAliasesOutput> {
        return .init(
            input: input,
            command: listAliases,
            inputKey: \ListAliasesInput.nextToken,
            outputKey: \ListAliasesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves build resources for all builds associated with the AWS account in use. You can limit results to builds that are in a specific status by using the Status parameter. Use the pagination parameters to retrieve results in a set of sequential pages.   Build resources are not listed in any particular order.   Learn more    Upload a Custom Server Build   Related actions   CreateBuild | ListBuilds | DescribeBuild | UpdateBuild | DeleteBuild | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBuildsPaginator(
        _ input: ListBuildsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBuildsInput, ListBuildsOutput> {
        return .init(
            input: input,
            command: listBuilds,
            inputKey: \ListBuildsInput.nextToken,
            outputKey: \ListBuildsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a collection of fleet resources in an AWS Region. You can call this operation to get fleets in a previously selected default Region (see https://docs.aws.amazon.com/credref/latest/refdocs/setting-global-region.htmlor specify a Region in your request. You can filter the result set to find only those fleets that are deployed with a specific build or script. For fleets that have multiple locations, this operation retrieves fleets based on their home Region only. This operation can be used in the following ways:    To get a list of all fleets in a Region, don't provide a build or script identifier.    To get a list of all fleets where a specific custom game build is deployed, provide the build ID.   To get a list of all Realtime Servers fleets with a specific configuration script, provide the script ID.    Use the pagination parameters to retrieve results as a set of sequential pages.  If successful, a list of fleet IDs that match the request parameters is returned. A NextToken value is also returned if there are more result pages to retrieve.  Fleet resources are not listed in a particular order.   Learn more   Setting up GameLift fleets   Related actions   CreateFleet | UpdateFleetCapacity | PutScalingPolicy | DescribeEC2InstanceLimits | DescribeFleetAttributes | DescribeFleetLocationAttributes | UpdateFleetAttributes | StopFleetActions | DeleteFleet | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFleetsPaginator(
        _ input: ListFleetsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFleetsInput, ListFleetsOutput> {
        return .init(
            input: input,
            command: listFleets,
            inputKey: \ListFleetsInput.nextToken,
            outputKey: \ListFleetsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   This operation is used with the GameLift FleetIQ solution and game server groups.  Retrieves information on all game servers groups that exist in the current AWS account for the selected Region. Use the pagination parameters to retrieve results in a set of sequential segments.   Learn more   GameLift FleetIQ Guide   Related actions   CreateGameServerGroup | ListGameServerGroups | DescribeGameServerGroup | UpdateGameServerGroup | DeleteGameServerGroup | ResumeGameServerGroup | SuspendGameServerGroup | DescribeGameServerInstances | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGameServerGroupsPaginator(
        _ input: ListGameServerGroupsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGameServerGroupsInput, ListGameServerGroupsOutput> {
        return .init(
            input: input,
            command: listGameServerGroups,
            inputKey: \ListGameServerGroupsInput.nextToken,
            outputKey: \ListGameServerGroupsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   This operation is used with the GameLift FleetIQ solution and game server groups.  Retrieves information on all game servers that are currently active in a specified game server group. You can opt to sort the list by game server age. Use the pagination parameters to retrieve results in a set of sequential segments.   Learn more   GameLift FleetIQ Guide   Related actions   RegisterGameServer | ListGameServers | ClaimGameServer | DescribeGameServer | UpdateGameServer | DeregisterGameServer | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGameServersPaginator(
        _ input: ListGameServersInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGameServersInput, ListGameServersOutput> {
        return .init(
            input: input,
            command: listGameServers,
            inputKey: \ListGameServersInput.nextToken,
            outputKey: \ListGameServersOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves script records for all Realtime scripts that are associated with the AWS account in use.   Learn more   Amazon GameLift Realtime Servers   Related actions   CreateScript | ListScripts | DescribeScript | UpdateScript | DeleteScript | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listScriptsPaginator(
        _ input: ListScriptsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListScriptsInput, ListScriptsOutput> {
        return .init(
            input: input,
            command: listScripts,
            inputKey: \ListScriptsInput.nextToken,
            outputKey: \ListScriptsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves all active game sessions that match a set of search criteria and sorts them into a specified order.  When searching for game sessions, you specify exactly where you want to search and provide a search filter expression, a sort expression, or both. A search request can search only one fleet, but it can search all of a fleet's locations.  This operation can be used in the following ways:    To search all game sessions that are currently running on all locations in a fleet, provide a fleet or alias ID. This approach returns game sessions in the fleet's home Region and all remote locations that fit the search criteria.   To search all game sessions that are currently running on a specific fleet location, provide a fleet or alias ID and a location name. For location, you can specify a fleet's home Region or any remote location.   Use the pagination parameters to retrieve results as a set of sequential pages.  If successful, a GameSession object is returned for each game session that matches the request. Search finds game sessions that are in ACTIVE status only. To retrieve information on game sessions in other statuses, use DescribeGameSessions. You can search or sort by the following game session attributes:    gameSessionId -- A unique identifier for the game session. You can use either a GameSessionId or GameSessionArn value.     gameSessionName -- Name assigned to a game session. This value is set when requesting a new game session with CreateGameSession or updating with UpdateGameSession. Game session names do not need to be unique to a game session.    gameSessionProperties -- Custom data defined in a game session's GameProperty parameter. GameProperty values are stored as key:value pairs; the filter expression must indicate the key and a string to search the data values for. For example, to search for game sessions with custom data containing the key:value pair "gameMode:brawl", specify the following: gameSessionProperties.gameMode = "brawl". All custom data values are searched as strings.    maximumSessions -- Maximum number of player sessions allowed for a game session. This value is set when requesting a new game session with CreateGameSession or updating with UpdateGameSession.    creationTimeMillis -- Value indicating when a game session was created. It is expressed in Unix time as milliseconds.    playerSessionCount -- Number of players currently connected to a game session. This value changes rapidly as players join the session or drop out.    hasAvailablePlayerSessions -- Boolean value indicating whether a game session has reached its maximum number of players. It is highly recommended that all search requests include this filter attribute to optimize search performance and return only sessions that players can join.     Returned values for playerSessionCount and hasAvailablePlayerSessions change quickly as players join sessions and others drop out. Results should be considered a snapshot in time. Be sure to refresh search results often, and handle sessions that fill up before a player can join.    Related actions   CreateGameSession | DescribeGameSessions | DescribeGameSessionDetails | SearchGameSessions | UpdateGameSession | GetGameSessionLogUrl | StartGameSessionPlacement | DescribeGameSessionPlacement | StopGameSessionPlacement | All APIs by task
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchGameSessionsPaginator(
        _ input: SearchGameSessionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchGameSessionsInput, SearchGameSessionsOutput> {
        return .init(
            input: input,
            command: searchGameSessions,
            inputKey: \SearchGameSessionsInput.nextToken,
            outputKey: \SearchGameSessionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
