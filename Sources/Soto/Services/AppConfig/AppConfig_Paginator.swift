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

extension AppConfig {
    ///  List all applications in your AWS account.
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
    public func listApplicationsPaginator<Result>(
        _ input: ListApplicationsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, Applications, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listApplications,
            inputKey: \ListApplicationsRequest.nextToken,
            outputKey: \Applications.nextToken,
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
    public func listApplicationsPaginator(
        _ input: ListApplicationsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Applications, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listApplications,
            inputKey: \ListApplicationsRequest.nextToken,
            outputKey: \Applications.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the configuration profiles for an application.
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
    public func listConfigurationProfilesPaginator<Result>(
        _ input: ListConfigurationProfilesRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ConfigurationProfiles, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listConfigurationProfiles,
            inputKey: \ListConfigurationProfilesRequest.nextToken,
            outputKey: \ConfigurationProfiles.nextToken,
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
    public func listConfigurationProfilesPaginator(
        _ input: ListConfigurationProfilesRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ConfigurationProfiles, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listConfigurationProfiles,
            inputKey: \ListConfigurationProfilesRequest.nextToken,
            outputKey: \ConfigurationProfiles.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List deployment strategies.
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
    public func listDeploymentStrategiesPaginator<Result>(
        _ input: ListDeploymentStrategiesRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DeploymentStrategies, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDeploymentStrategies,
            inputKey: \ListDeploymentStrategiesRequest.nextToken,
            outputKey: \DeploymentStrategies.nextToken,
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
    public func listDeploymentStrategiesPaginator(
        _ input: ListDeploymentStrategiesRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DeploymentStrategies, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDeploymentStrategies,
            inputKey: \ListDeploymentStrategiesRequest.nextToken,
            outputKey: \DeploymentStrategies.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the deployments for an environment.
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
    public func listDeploymentsPaginator<Result>(
        _ input: ListDeploymentsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, Deployments, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDeployments,
            inputKey: \ListDeploymentsRequest.nextToken,
            outputKey: \Deployments.nextToken,
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
    public func listDeploymentsPaginator(
        _ input: ListDeploymentsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Deployments, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDeployments,
            inputKey: \ListDeploymentsRequest.nextToken,
            outputKey: \Deployments.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the environments for an application.
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
    public func listEnvironmentsPaginator<Result>(
        _ input: ListEnvironmentsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, Environments, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEnvironments,
            inputKey: \ListEnvironmentsRequest.nextToken,
            outputKey: \Environments.nextToken,
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
    public func listEnvironmentsPaginator(
        _ input: ListEnvironmentsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Environments, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEnvironments,
            inputKey: \ListEnvironmentsRequest.nextToken,
            outputKey: \Environments.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  View a list of configurations stored in the AppConfig configuration store by version.
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
    public func listHostedConfigurationVersionsPaginator<Result>(
        _ input: ListHostedConfigurationVersionsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, HostedConfigurationVersions, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listHostedConfigurationVersions,
            inputKey: \ListHostedConfigurationVersionsRequest.nextToken,
            outputKey: \HostedConfigurationVersions.nextToken,
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
    public func listHostedConfigurationVersionsPaginator(
        _ input: ListHostedConfigurationVersionsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (HostedConfigurationVersions, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listHostedConfigurationVersions,
            inputKey: \ListHostedConfigurationVersionsRequest.nextToken,
            outputKey: \HostedConfigurationVersions.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension AppConfig.ListApplicationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppConfig.ListApplicationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AppConfig.ListConfigurationProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppConfig.ListConfigurationProfilesRequest {
        return .init(
            applicationId: self.applicationId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AppConfig.ListDeploymentStrategiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppConfig.ListDeploymentStrategiesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AppConfig.ListDeploymentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppConfig.ListDeploymentsRequest {
        return .init(
            applicationId: self.applicationId,
            environmentId: self.environmentId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AppConfig.ListEnvironmentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppConfig.ListEnvironmentsRequest {
        return .init(
            applicationId: self.applicationId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AppConfig.ListHostedConfigurationVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppConfig.ListHostedConfigurationVersionsRequest {
        return .init(
            applicationId: self.applicationId,
            configurationProfileId: self.configurationProfileId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
