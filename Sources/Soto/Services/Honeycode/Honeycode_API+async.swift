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

@available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
extension Honeycode {
    // MARK: Async API Calls

    ///  The BatchCreateTableRows API allows you to create one or more rows at the end of a table in a workbook. The API allows you to specify the values to set in some or all of the columns in the new rows.   If a column is not explicitly set in a specific row, then the column level formula specified in the table will be applied to the new row. If there is no column level formula but the last row of the table has a formula, then that formula will be copied down to the new row. If there is no column level formula and no formula in the last row of the table, then that column will be left blank for the new rows.
    public func batchCreateTableRows(_ input: BatchCreateTableRowsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchCreateTableRowsResult {
        return try await self.client.execute(operation: "BatchCreateTableRows", path: "/workbooks/{workbookId}/tables/{tableId}/rows/batchcreate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  The BatchDeleteTableRows API allows you to delete one or more rows from a table in a workbook. You need to specify the ids of the rows that you want to delete from the table.
    public func batchDeleteTableRows(_ input: BatchDeleteTableRowsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteTableRowsResult {
        return try await self.client.execute(operation: "BatchDeleteTableRows", path: "/workbooks/{workbookId}/tables/{tableId}/rows/batchdelete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  The BatchUpdateTableRows API allows you to update one or more rows in a table in a workbook.   You can specify the values to set in some or all of the columns in the table for the specified rows. If a column is not explicitly specified in a particular row, then that column will not be updated for that row. To clear out the data in a specific cell, you need to set the value as an empty string ("").
    public func batchUpdateTableRows(_ input: BatchUpdateTableRowsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchUpdateTableRowsResult {
        return try await self.client.execute(operation: "BatchUpdateTableRows", path: "/workbooks/{workbookId}/tables/{tableId}/rows/batchupdate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  The BatchUpsertTableRows API allows you to upsert one or more rows in a table. The upsert operation takes a filter expression as input and evaluates it to find matching rows on the destination table. If matching rows are found, it will update the cells in the matching rows to new values specified in the request. If no matching rows are found, a new row is added at the end of the table and the cells in that row are set to the new values specified in the request.   You can specify the values to set in some or all of the columns in the table for the matching or newly appended rows. If a column is not explicitly specified for a particular row, then that column will not be updated for that row. To clear out the data in a specific cell, you need to set the value as an empty string ("").
    public func batchUpsertTableRows(_ input: BatchUpsertTableRowsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchUpsertTableRowsResult {
        return try await self.client.execute(operation: "BatchUpsertTableRows", path: "/workbooks/{workbookId}/tables/{tableId}/rows/batchupsert", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  The DescribeTableDataImportJob API allows you to retrieve the status and details of a table data import job.
    public func describeTableDataImportJob(_ input: DescribeTableDataImportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTableDataImportJobResult {
        return try await self.client.execute(operation: "DescribeTableDataImportJob", path: "/workbooks/{workbookId}/tables/{tableId}/import/{jobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  The GetScreenData API allows retrieval of data from a screen in a Honeycode app. The API allows setting local variables in the screen to filter, sort or otherwise affect what will be displayed on the screen.
    public func getScreenData(_ input: GetScreenDataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetScreenDataResult {
        return try await self.client.execute(operation: "GetScreenData", path: "/screendata", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  The InvokeScreenAutomation API allows invoking an action defined in a screen in a Honeycode app. The API allows setting local variables, which can then be used in the automation being invoked. This allows automating the Honeycode app interactions to write, update or delete data in the workbook.
    public func invokeScreenAutomation(_ input: InvokeScreenAutomationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InvokeScreenAutomationResult {
        return try await self.client.execute(operation: "InvokeScreenAutomation", path: "/workbooks/{workbookId}/apps/{appId}/screens/{screenId}/automations/{automationId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  The ListTableColumns API allows you to retrieve a list of all the columns in a table in a workbook.
    public func listTableColumns(_ input: ListTableColumnsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTableColumnsResult {
        return try await self.client.execute(operation: "ListTableColumns", path: "/workbooks/{workbookId}/tables/{tableId}/columns", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  The ListTableRows API allows you to retrieve a list of all the rows in a table in a workbook.
    public func listTableRows(_ input: ListTableRowsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTableRowsResult {
        return try await self.client.execute(operation: "ListTableRows", path: "/workbooks/{workbookId}/tables/{tableId}/rows/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  The ListTables API allows you to retrieve a list of all the tables in a workbook.
    public func listTables(_ input: ListTablesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTablesResult {
        return try await self.client.execute(operation: "ListTables", path: "/workbooks/{workbookId}/tables", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  The QueryTableRows API allows you to use a filter formula to query for specific rows in a table.
    public func queryTableRows(_ input: QueryTableRowsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryTableRowsResult {
        return try await self.client.execute(operation: "QueryTableRows", path: "/workbooks/{workbookId}/tables/{tableId}/rows/query", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  The StartTableDataImportJob API allows you to start an import job on a table. This API will only return the id of the job that was started. To find out the status of the import request, you need to call the DescribeTableDataImportJob API.
    public func startTableDataImportJob(_ input: StartTableDataImportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartTableDataImportJobResult {
        return try await self.client.execute(operation: "StartTableDataImportJob", path: "/workbooks/{workbookId}/tables/{tableId}/import", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
