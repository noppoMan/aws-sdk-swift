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
extension TimestreamWrite {
    ///  Returns a list of your Timestream databases. Service quotas apply. For more information, see Access Management in the Timestream Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatabasesPaginator(
        _ input: ListDatabasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatabasesRequest, ListDatabasesResponse> {
        return .init(
            input: input,
            command: listDatabases,
            inputKey: \ListDatabasesRequest.nextToken,
            outputKey: \ListDatabasesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  A list of tables, along with the name, status and retention properties of each table.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTablesPaginator(
        _ input: ListTablesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTablesRequest, ListTablesResponse> {
        return .init(
            input: input,
            command: listTables,
            inputKey: \ListTablesRequest.nextToken,
            outputKey: \ListTablesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
