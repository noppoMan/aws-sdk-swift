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
extension Honeycode {
    ///   The ListTableColumns API allows you to retrieve a list of all the columns in a table in a workbook.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTableColumnsPaginator(
        _ input: ListTableColumnsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTableColumnsRequest, ListTableColumnsResult> {
        return .init(
            input: input,
            command: listTableColumns,
            inputKey: \ListTableColumnsRequest.nextToken,
            outputKey: \ListTableColumnsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   The ListTableRows API allows you to retrieve a list of all the rows in a table in a workbook.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTableRowsPaginator(
        _ input: ListTableRowsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTableRowsRequest, ListTableRowsResult> {
        return .init(
            input: input,
            command: listTableRows,
            inputKey: \ListTableRowsRequest.nextToken,
            outputKey: \ListTableRowsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   The ListTables API allows you to retrieve a list of all the tables in a workbook.
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
    ) -> AWSClient.PaginatorSequence<ListTablesRequest, ListTablesResult> {
        return .init(
            input: input,
            command: listTables,
            inputKey: \ListTablesRequest.nextToken,
            outputKey: \ListTablesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   The QueryTableRows API allows you to use a filter formula to query for specific rows in a table.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func queryTableRowsPaginator(
        _ input: QueryTableRowsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<QueryTableRowsRequest, QueryTableRowsResult> {
        return .init(
            input: input,
            command: queryTableRows,
            inputKey: \QueryTableRowsRequest.nextToken,
            outputKey: \QueryTableRowsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
