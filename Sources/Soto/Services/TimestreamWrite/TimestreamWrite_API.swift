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

@_exported import SotoCore

/// Service object for interacting with AWS TimestreamWrite service.
///
/// Amazon Timestream is a fast, scalable, fully managed time series database service that makes it easy to store and analyze trillions of time series data points per day. With Timestream, you can easily store and analyze IoT sensor data to derive insights from your IoT applications. You can analyze industrial telemetry to streamline equipment management and maintenance. You can also store and analyze log data and metrics to improve the performance and availability of your applications. Timestream is built from the ground up to effectively ingest, process, and store time series data. It organizes data to optimize query processing. It automatically scales based on the volume of data ingested and on the query volume to ensure you receive optimal performance while inserting and querying data. As your data grows over time, Timestream’s adaptive query processing engine spans across storage tiers to provide fast analysis while reducing costs.
public struct TimestreamWrite: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the TimestreamWrite client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "Timestream_20181101",
            service: "ingest.timestream",
            signingName: "timestream",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2018-11-01",
            endpoint: endpoint,
            errorType: TimestreamWriteErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a new Timestream database. If the KMS key is not specified, the database will be encrypted with a Timestream managed KMS key located in your account. Refer to AWS managed KMS keys for more info.  Service quotas apply. For more information, see Access Management in the Timestream Developer Guide. 
    public func createDatabase(_ input: CreateDatabaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatabaseResponse> {
        return self.client.execute(operation: "CreateDatabase", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The CreateTable operation adds a new table to an existing database in your account. In an AWS account, table names must be at least unique within each Region if they are in the same database.  You may have identical table names in the same Region if the tables are in seperate databases. While creating the table, you must specify the table name, database name, and the retention properties. Service quotas apply. For more information, see Access Management in the Timestream Developer Guide. 
    public func createTable(_ input: CreateTableRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTableResponse> {
        return self.client.execute(operation: "CreateTable", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a given Timestream database. This is an irreversible operation. After a database is deleted, the time series data from its tables cannot be recovered.   All tables in the database must be deleted first, or a ValidationException error will be thrown.   Due to the nature of distributed retries,  the operation can return either success or a ResourceNotFoundException. Clients should consider them equivalent.
    @discardableResult public func deleteDatabase(_ input: DeleteDatabaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteDatabase", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a given Timestream table. This is an irreversible operation. After a Timestream database table is deleted, the time series data stored in  the table cannot be recovered.  Due to the nature of distributed retries,  the operation can return either success or a ResourceNotFoundException. Clients should consider them equivalent.
    @discardableResult public func deleteTable(_ input: DeleteTableRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteTable", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the database, including the database name, time that the database was created,  and the total number of tables found within the database. Service quotas apply. For more information, see Access Management in the Timestream Developer Guide.
    public func describeDatabase(_ input: DescribeDatabaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatabaseResponse> {
        return self.client.execute(operation: "DescribeDatabase", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// DescribeEndpoints returns a list of available endpoints to make Timestream API calls against. This API is available through both Write and Query. Because Timestream’s SDKs are designed to transparently work with the service’s architecture,  including the management and mapping of the service endpoints, it is not recommended that you use this API unless:   Your application uses a programming language that does not yet have SDK support   You require better control over the client-side implementation   For detailed information on how to use DescribeEndpoints,  see The Endpoint Discovery Pattern and REST APIs.
    public func describeEndpoints(_ input: DescribeEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEndpointsResponse> {
        return self.client.execute(operation: "DescribeEndpoints", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the table, including the table name, database name,  retention duration of the memory store and the magnetic store. Service quotas apply. For more information, see Access Management in the Timestream Developer Guide. 
    public func describeTable(_ input: DescribeTableRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTableResponse> {
        return self.client.execute(operation: "DescribeTable", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of your Timestream databases.   Service quotas apply. For more information, see Access Management in the Timestream Developer Guide. 
    public func listDatabases(_ input: ListDatabasesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatabasesResponse> {
        return self.client.execute(operation: "ListDatabases", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A list of tables, along with the name, status and retention properties of each table. 
    public func listTables(_ input: ListTablesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTablesResponse> {
        return self.client.execute(operation: "ListTables", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all tags on a Timestream resource. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Associate a set of tags with a Timestream resource. You can then activate these user-defined tags so that they appear on the Billing and Cost Management console for cost allocation tracking.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes the association of tags from a Timestream resource. 
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Modifies the KMS key for an existing database. While updating the database,  you must specify the database name and the identifier of the new KMS key to be used (KmsKeyId). If there are any concurrent UpdateDatabase requests, first writer wins. 
    public func updateDatabase(_ input: UpdateDatabaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDatabaseResponse> {
        return self.client.execute(operation: "UpdateDatabase", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the retention duration of the memory store and magnetic store for your Timestream table.  Note that the change in retention duration takes effect immediately.  For example, if the retention period of the memory store was initially set to 2 hours and then changed to 24 hours,  the memory store will be capable of holding 24 hours of data, but will be populated with 24 hours of data 22 hours after this change was made. Timestream does not retrieve data from the magnetic store to populate the memory store.  Service quotas apply. For more information, see Access Management in the Timestream Developer Guide.
    public func updateTable(_ input: UpdateTableRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTableResponse> {
        return self.client.execute(operation: "UpdateTable", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The WriteRecords operation enables you to write your time series  data into Timestream. You can specify a single data point or a batch  of data points to be inserted into the system. Timestream offers you  with a flexible schema that auto detects the column names and data types  for your Timestream tables based on the dimension names and data types of the data points you specify when invoking writes into the database.  Timestream support eventual consistency read semantics. This means that  when you query data immediately after writing a batch of data into Timestream,  the query results might not reflect the results of a recently completed write  operation. The results may also include some stale data. If you repeat the  query request after a short time, the results should return the latest data. Service quotas apply. For more information,  see Access Management in the Timestream Developer Guide. 
    @discardableResult public func writeRecords(_ input: WriteRecordsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "WriteRecords", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension TimestreamWrite {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: TimestreamWrite, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
