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
extension SMS {
    ///  Describes the connectors registered with the AWS SMS.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getConnectorsPaginator(
        _ input: GetConnectorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetConnectorsRequest, GetConnectorsResponse> {
        return .init(
            input: input,
            command: getConnectors,
            inputKey: \GetConnectorsRequest.nextToken,
            outputKey: \GetConnectorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the specified replication job or all of your replication jobs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getReplicationJobsPaginator(
        _ input: GetReplicationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetReplicationJobsRequest, GetReplicationJobsResponse> {
        return .init(
            input: input,
            command: getReplicationJobs,
            inputKey: \GetReplicationJobsRequest.nextToken,
            outputKey: \GetReplicationJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the replication runs for the specified replication job.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getReplicationRunsPaginator(
        _ input: GetReplicationRunsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetReplicationRunsRequest, GetReplicationRunsResponse> {
        return .init(
            input: input,
            command: getReplicationRuns,
            inputKey: \GetReplicationRunsRequest.nextToken,
            outputKey: \GetReplicationRunsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the servers in your server catalog. Before you can describe your servers, you must import them using ImportServerCatalog.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getServersPaginator(
        _ input: GetServersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetServersRequest, GetServersResponse> {
        return .init(
            input: input,
            command: getServers,
            inputKey: \GetServersRequest.nextToken,
            outputKey: \GetServersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
