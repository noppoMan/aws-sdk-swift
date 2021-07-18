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

extension Codeartifact {
    ///   Returns a list of DomainSummary objects for all domains owned by the AWS account that makes this call. Each returned DomainSummary object contains information about a domain.
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
    public func listDomainsPaginator<Result>(
        _ input: ListDomainsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDomainsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDomains,
            inputKey: \ListDomainsRequest.nextToken,
            outputKey: \ListDomainsResult.nextToken,
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
    public func listDomainsPaginator(
        _ input: ListDomainsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDomainsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDomains,
            inputKey: \ListDomainsRequest.nextToken,
            outputKey: \ListDomainsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of  AssetSummary  objects for assets in a package version.
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
    public func listPackageVersionAssetsPaginator<Result>(
        _ input: ListPackageVersionAssetsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPackageVersionAssetsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPackageVersionAssets,
            inputKey: \ListPackageVersionAssetsRequest.nextToken,
            outputKey: \ListPackageVersionAssetsResult.nextToken,
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
    public func listPackageVersionAssetsPaginator(
        _ input: ListPackageVersionAssetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPackageVersionAssetsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPackageVersionAssets,
            inputKey: \ListPackageVersionAssetsRequest.nextToken,
            outputKey: \ListPackageVersionAssetsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of  PackageVersionSummary  objects for package versions in a repository that match the request parameters.
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
    public func listPackageVersionsPaginator<Result>(
        _ input: ListPackageVersionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPackageVersionsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPackageVersions,
            inputKey: \ListPackageVersionsRequest.nextToken,
            outputKey: \ListPackageVersionsResult.nextToken,
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
    public func listPackageVersionsPaginator(
        _ input: ListPackageVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPackageVersionsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPackageVersions,
            inputKey: \ListPackageVersionsRequest.nextToken,
            outputKey: \ListPackageVersionsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of  PackageSummary  objects for packages in a repository that match the request parameters.
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
    public func listPackagesPaginator<Result>(
        _ input: ListPackagesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPackagesResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPackages,
            inputKey: \ListPackagesRequest.nextToken,
            outputKey: \ListPackagesResult.nextToken,
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
    public func listPackagesPaginator(
        _ input: ListPackagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPackagesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPackages,
            inputKey: \ListPackagesRequest.nextToken,
            outputKey: \ListPackagesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of  RepositorySummary  objects. Each RepositorySummary contains information about a repository in the specified AWS account and that matches the input  parameters.
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
    public func listRepositoriesPaginator<Result>(
        _ input: ListRepositoriesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRepositoriesResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRepositories,
            inputKey: \ListRepositoriesRequest.nextToken,
            outputKey: \ListRepositoriesResult.nextToken,
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
    public func listRepositoriesPaginator(
        _ input: ListRepositoriesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRepositoriesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRepositories,
            inputKey: \ListRepositoriesRequest.nextToken,
            outputKey: \ListRepositoriesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of  RepositorySummary  objects. Each RepositorySummary contains information about a repository in the specified domain and that matches the input  parameters.
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
    public func listRepositoriesInDomainPaginator<Result>(
        _ input: ListRepositoriesInDomainRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRepositoriesInDomainResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRepositoriesInDomain,
            inputKey: \ListRepositoriesInDomainRequest.nextToken,
            outputKey: \ListRepositoriesInDomainResult.nextToken,
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
    public func listRepositoriesInDomainPaginator(
        _ input: ListRepositoriesInDomainRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRepositoriesInDomainResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRepositoriesInDomain,
            inputKey: \ListRepositoriesInDomainRequest.nextToken,
            outputKey: \ListRepositoriesInDomainResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Codeartifact.ListDomainsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Codeartifact.ListDomainsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Codeartifact.ListPackageVersionAssetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Codeartifact.ListPackageVersionAssetsRequest {
        return .init(
            domain: self.domain,
            domainOwner: self.domainOwner,
            format: self.format,
            maxResults: self.maxResults,
            namespace: self.namespace,
            nextToken: token,
            package: self.package,
            packageVersion: self.packageVersion,
            repository: self.repository
        )
    }
}

extension Codeartifact.ListPackageVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Codeartifact.ListPackageVersionsRequest {
        return .init(
            domain: self.domain,
            domainOwner: self.domainOwner,
            format: self.format,
            maxResults: self.maxResults,
            namespace: self.namespace,
            nextToken: token,
            package: self.package,
            repository: self.repository,
            sortBy: self.sortBy,
            status: self.status
        )
    }
}

extension Codeartifact.ListPackagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Codeartifact.ListPackagesRequest {
        return .init(
            domain: self.domain,
            domainOwner: self.domainOwner,
            format: self.format,
            maxResults: self.maxResults,
            namespace: self.namespace,
            nextToken: token,
            packagePrefix: self.packagePrefix,
            repository: self.repository
        )
    }
}

extension Codeartifact.ListRepositoriesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Codeartifact.ListRepositoriesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            repositoryPrefix: self.repositoryPrefix
        )
    }
}

extension Codeartifact.ListRepositoriesInDomainRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Codeartifact.ListRepositoriesInDomainRequest {
        return .init(
            administratorAccount: self.administratorAccount,
            domain: self.domain,
            domainOwner: self.domainOwner,
            maxResults: self.maxResults,
            nextToken: token,
            repositoryPrefix: self.repositoryPrefix
        )
    }
}
