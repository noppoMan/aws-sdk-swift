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

extension RedshiftDataAPIService {
    ///  Describes the detailed information about a table from metadata in the cluster. The information includes its columns. A token is returned to page through the column list. Depending on the authorization method, use one of the following combinations of request parameters:    AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the secret and the cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.
    public func describeTablePaginator(
        _ input: DescribeTableRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeTableResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeTable,
            tokenKey: \DescribeTableResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Fetches the temporarily cached result of an SQL statement. A token is returned to page through the statement results.
    public func getStatementResultPaginator(
        _ input: GetStatementResultRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetStatementResultResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getStatementResult,
            tokenKey: \GetStatementResultResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the databases in a cluster. A token is returned to page through the database list. Depending on the authorization method, use one of the following combinations of request parameters:    AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the secret and the cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.
    public func listDatabasesPaginator(
        _ input: ListDatabasesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDatabasesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDatabases,
            tokenKey: \ListDatabasesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the schemas in a database. A token is returned to page through the schema list. Depending on the authorization method, use one of the following combinations of request parameters:    AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the secret and the cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.
    public func listSchemasPaginator(
        _ input: ListSchemasRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSchemasResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSchemas,
            tokenKey: \ListSchemasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List of SQL statements. By default, only finished statements are shown. A token is returned to page through the statement list.
    public func listStatementsPaginator(
        _ input: ListStatementsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListStatementsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listStatements,
            tokenKey: \ListStatementsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the tables in a database. If neither SchemaPattern nor TablePattern are specified, then all tables in the database are returned. A token is returned to page through the table list. Depending on the authorization method, use one of the following combinations of request parameters:    AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the secret and the cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.
    public func listTablesPaginator(
        _ input: ListTablesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTablesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTables,
            tokenKey: \ListTablesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension RedshiftDataAPIService.DescribeTableRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftDataAPIService.DescribeTableRequest {
        return .init(
            clusterIdentifier: self.clusterIdentifier,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            schema: self.schema,
            secretArn: self.secretArn,
            table: self.table
        )
    }
}

extension RedshiftDataAPIService.GetStatementResultRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftDataAPIService.GetStatementResultRequest {
        return .init(
            id: self.id,
            nextToken: token
        )
    }
}

extension RedshiftDataAPIService.ListDatabasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftDataAPIService.ListDatabasesRequest {
        return .init(
            clusterIdentifier: self.clusterIdentifier,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            secretArn: self.secretArn
        )
    }
}

extension RedshiftDataAPIService.ListSchemasRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftDataAPIService.ListSchemasRequest {
        return .init(
            clusterIdentifier: self.clusterIdentifier,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            schemaPattern: self.schemaPattern,
            secretArn: self.secretArn
        )
    }
}

extension RedshiftDataAPIService.ListStatementsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftDataAPIService.ListStatementsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            statementName: self.statementName,
            status: self.status
        )
    }
}

extension RedshiftDataAPIService.ListTablesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftDataAPIService.ListTablesRequest {
        return .init(
            clusterIdentifier: self.clusterIdentifier,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            schemaPattern: self.schemaPattern,
            secretArn: self.secretArn,
            tablePattern: self.tablePattern
        )
    }
}
