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

import Foundation
import SotoCore

extension TimestreamWrite {
    // MARK: Enums

    public enum DimensionValueType: String, CustomStringConvertible, Codable {
        case varchar = "VARCHAR"
        public var description: String { return self.rawValue }
    }

    public enum MeasureValueType: String, CustomStringConvertible, Codable {
        case bigint = "BIGINT"
        case boolean = "BOOLEAN"
        case double = "DOUBLE"
        case varchar = "VARCHAR"
        public var description: String { return self.rawValue }
    }

    public enum TableStatus: String, CustomStringConvertible, Codable {
        case active = "ACTIVE"
        case deleting = "DELETING"
        public var description: String { return self.rawValue }
    }

    public enum TimeUnit: String, CustomStringConvertible, Codable {
        case microseconds = "MICROSECONDS"
        case milliseconds = "MILLISECONDS"
        case nanoseconds = "NANOSECONDS"
        case seconds = "SECONDS"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CreateDatabaseRequest: AWSEncodableShape {
        /// The name of the Timestream database.
        public let databaseName: String
        /// The KMS key for the database. If the KMS key is not specified, the database will be encrypted with a Timestream managed KMS key located in your account. Refer to AWS managed KMS keys for more info.
        public let kmsKeyId: String?
        ///  A list of key-value pairs to label the table.
        public let tags: [Tag]?

        public init(databaseName: String, kmsKeyId: String? = nil, tags: [Tag]? = nil) {
            self.databaseName = databaseName
            self.kmsKeyId = kmsKeyId
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.databaseName.forEach {}
            try self.validate(self.databaseName, name: "databaseName", parent: name, max: 64)
            try self.validate(self.databaseName, name: "databaseName", parent: name, min: 3)
            try self.validate(self.databaseName, name: "databaseName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
            try self.kmsKeyId?.forEach {}
            try self.validate(self.kmsKeyId, name: "kmsKeyId", parent: name, max: 2048)
            try self.validate(self.kmsKeyId, name: "kmsKeyId", parent: name, min: 1)
            try self.tags?.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try self.tags?.forEach {}
            try self.validate(self.tags, name: "tags", parent: name, max: 200)
            try self.validate(self.tags, name: "tags", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case databaseName = "DatabaseName"
            case kmsKeyId = "KmsKeyId"
            case tags = "Tags"
        }
    }

    public struct CreateDatabaseResponse: AWSDecodableShape {
        /// The newly created Timestream database.
        public let database: Database?

        public init(database: Database? = nil) {
            self.database = database
        }

        private enum CodingKeys: String, CodingKey {
            case database = "Database"
        }
    }

    public struct CreateTableRequest: AWSEncodableShape {
        /// The name of the Timestream database.
        public let databaseName: String
        /// The duration for which your time series data must be stored in the memory store and the magnetic store.
        public let retentionProperties: RetentionProperties?
        /// The name of the Timestream table.
        public let tableName: String
        ///  A list of key-value pairs to label the table.
        public let tags: [Tag]?

        public init(databaseName: String, retentionProperties: RetentionProperties? = nil, tableName: String, tags: [Tag]? = nil) {
            self.databaseName = databaseName
            self.retentionProperties = retentionProperties
            self.tableName = tableName
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.databaseName.forEach {}
            try self.validate(self.databaseName, name: "databaseName", parent: name, max: 64)
            try self.validate(self.databaseName, name: "databaseName", parent: name, min: 3)
            try self.validate(self.databaseName, name: "databaseName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
            try self.retentionProperties?.validate(name: "\(name).retentionProperties")
            try self.retentionProperties?.forEach {}
            try self.tableName.forEach {}
            try self.validate(self.tableName, name: "tableName", parent: name, max: 64)
            try self.validate(self.tableName, name: "tableName", parent: name, min: 3)
            try self.validate(self.tableName, name: "tableName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
            try self.tags?.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try self.tags?.forEach {}
            try self.validate(self.tags, name: "tags", parent: name, max: 200)
            try self.validate(self.tags, name: "tags", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case databaseName = "DatabaseName"
            case retentionProperties = "RetentionProperties"
            case tableName = "TableName"
            case tags = "Tags"
        }
    }

    public struct CreateTableResponse: AWSDecodableShape {
        /// The newly created Timestream table.
        public let table: Table?

        public init(table: Table? = nil) {
            self.table = table
        }

        private enum CodingKeys: String, CodingKey {
            case table = "Table"
        }
    }

    public struct Database: AWSDecodableShape {
        /// The Amazon Resource Name that uniquely identifies this database.
        public let arn: String?
        /// The time when the database was created, calculated from the Unix epoch time.
        public let creationTime: Date?
        /// The name of the Timestream database.
        public let databaseName: String?
        /// The identifier of the KMS key used to encrypt the data stored in the database.
        public let kmsKeyId: String?
        ///  The last time that this database was updated.
        public let lastUpdatedTime: Date?
        /// The total number of tables found within a Timestream database.
        public let tableCount: Int64?

        public init(arn: String? = nil, creationTime: Date? = nil, databaseName: String? = nil, kmsKeyId: String? = nil, lastUpdatedTime: Date? = nil, tableCount: Int64? = nil) {
            self.arn = arn
            self.creationTime = creationTime
            self.databaseName = databaseName
            self.kmsKeyId = kmsKeyId
            self.lastUpdatedTime = lastUpdatedTime
            self.tableCount = tableCount
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case creationTime = "CreationTime"
            case databaseName = "DatabaseName"
            case kmsKeyId = "KmsKeyId"
            case lastUpdatedTime = "LastUpdatedTime"
            case tableCount = "TableCount"
        }
    }

    public struct DeleteDatabaseRequest: AWSEncodableShape {
        /// The name of the Timestream database to be deleted.
        public let databaseName: String

        public init(databaseName: String) {
            self.databaseName = databaseName
        }

        public func validate(name: String) throws {
            try self.databaseName.forEach {}
            try self.validate(self.databaseName, name: "databaseName", parent: name, max: 64)
            try self.validate(self.databaseName, name: "databaseName", parent: name, min: 3)
            try self.validate(self.databaseName, name: "databaseName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case databaseName = "DatabaseName"
        }
    }

    public struct DeleteTableRequest: AWSEncodableShape {
        /// The name of the database where the Timestream database is to be deleted.
        public let databaseName: String
        /// The name of the Timestream table to be deleted.
        public let tableName: String

        public init(databaseName: String, tableName: String) {
            self.databaseName = databaseName
            self.tableName = tableName
        }

        public func validate(name: String) throws {
            try self.databaseName.forEach {}
            try self.validate(self.databaseName, name: "databaseName", parent: name, max: 64)
            try self.validate(self.databaseName, name: "databaseName", parent: name, min: 3)
            try self.validate(self.databaseName, name: "databaseName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
            try self.tableName.forEach {}
            try self.validate(self.tableName, name: "tableName", parent: name, max: 64)
            try self.validate(self.tableName, name: "tableName", parent: name, min: 3)
            try self.validate(self.tableName, name: "tableName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case databaseName = "DatabaseName"
            case tableName = "TableName"
        }
    }

    public struct DescribeDatabaseRequest: AWSEncodableShape {
        /// The name of the Timestream database.
        public let databaseName: String

        public init(databaseName: String) {
            self.databaseName = databaseName
        }

        public func validate(name: String) throws {
            try self.databaseName.forEach {}
            try self.validate(self.databaseName, name: "databaseName", parent: name, max: 64)
            try self.validate(self.databaseName, name: "databaseName", parent: name, min: 3)
            try self.validate(self.databaseName, name: "databaseName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case databaseName = "DatabaseName"
        }
    }

    public struct DescribeDatabaseResponse: AWSDecodableShape {
        /// The name of the Timestream table.
        public let database: Database?

        public init(database: Database? = nil) {
            self.database = database
        }

        private enum CodingKeys: String, CodingKey {
            case database = "Database"
        }
    }

    public struct DescribeEndpointsRequest: AWSEncodableShape {
        public init() {}
    }

    public struct DescribeEndpointsResponse: AWSDecodableShape {
        /// An Endpoints object is returned when a DescribeEndpoints request is made.
        public let endpoints: [Endpoint]

        public init(endpoints: [Endpoint]) {
            self.endpoints = endpoints
        }

        private enum CodingKeys: String, CodingKey {
            case endpoints = "Endpoints"
        }
    }

    public struct DescribeTableRequest: AWSEncodableShape {
        /// The name of the Timestream database.
        public let databaseName: String
        /// The name of the Timestream table.
        public let tableName: String

        public init(databaseName: String, tableName: String) {
            self.databaseName = databaseName
            self.tableName = tableName
        }

        public func validate(name: String) throws {
            try self.databaseName.forEach {}
            try self.validate(self.databaseName, name: "databaseName", parent: name, max: 64)
            try self.validate(self.databaseName, name: "databaseName", parent: name, min: 3)
            try self.validate(self.databaseName, name: "databaseName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
            try self.tableName.forEach {}
            try self.validate(self.tableName, name: "tableName", parent: name, max: 64)
            try self.validate(self.tableName, name: "tableName", parent: name, min: 3)
            try self.validate(self.tableName, name: "tableName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case databaseName = "DatabaseName"
            case tableName = "TableName"
        }
    }

    public struct DescribeTableResponse: AWSDecodableShape {
        /// The Timestream table.
        public let table: Table?

        public init(table: Table? = nil) {
            self.table = table
        }

        private enum CodingKeys: String, CodingKey {
            case table = "Table"
        }
    }

    public struct Dimension: AWSEncodableShape {
        /// The data type of the dimension for the time series data point.
        public let dimensionValueType: DimensionValueType?
        ///  Dimension represents the meta data attributes of the time series. For example, the name and availability zone of an EC2 instance or the name of the manufacturer of a wind turbine are dimensions.  For constraints on Dimension names, see Naming Constraints.
        public let name: String
        /// The value of the dimension.
        public let value: String

        public init(dimensionValueType: DimensionValueType? = nil, name: String, value: String) {
            self.dimensionValueType = dimensionValueType
            self.name = name
            self.value = value
        }

        public func validate(name: String) throws {
            try self.name.forEach {}
            try self.validate(self.name, name: "name", parent: name, max: 256)
            try self.validate(self.name, name: "name", parent: name, min: 1)
            try self.value.forEach {}
            try self.validate(self.value, name: "value", parent: name, max: 2048)
            try self.validate(self.value, name: "value", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case dimensionValueType = "DimensionValueType"
            case name = "Name"
            case value = "Value"
        }
    }

    public struct Endpoint: AWSDecodableShape {
        /// An endpoint address.
        public let address: String
        /// The TTL for the endpoint, in minutes.
        public let cachePeriodInMinutes: Int64

        public init(address: String, cachePeriodInMinutes: Int64) {
            self.address = address
            self.cachePeriodInMinutes = cachePeriodInMinutes
        }

        private enum CodingKeys: String, CodingKey {
            case address = "Address"
            case cachePeriodInMinutes = "CachePeriodInMinutes"
        }
    }

    public struct ListDatabasesRequest: AWSEncodableShape {
        /// The total number of items to return in the output. If the total number of items available is more than the value specified, a NextToken is provided in the output. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.
        public let maxResults: Int?
        /// The pagination token. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.maxResults?.forEach {}
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 20)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListDatabasesResponse: AWSDecodableShape {
        /// A list of database names.
        public let databases: [Database]?
        /// The pagination token. This parameter is returned when the response is truncated.
        public let nextToken: String?

        public init(databases: [Database]? = nil, nextToken: String? = nil) {
            self.databases = databases
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case databases = "Databases"
            case nextToken = "NextToken"
        }
    }

    public struct ListTablesRequest: AWSEncodableShape {
        /// The name of the Timestream database.
        public let databaseName: String?
        /// The total number of items to return in the output. If the total number of items available is more than the value specified, a NextToken is provided in the output. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.
        public let maxResults: Int?
        /// The pagination token. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.
        public let nextToken: String?

        public init(databaseName: String? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.databaseName = databaseName
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.databaseName?.forEach {}
            try self.validate(self.databaseName, name: "databaseName", parent: name, max: 64)
            try self.validate(self.databaseName, name: "databaseName", parent: name, min: 3)
            try self.validate(self.databaseName, name: "databaseName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
            try self.maxResults?.forEach {}
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 20)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case databaseName = "DatabaseName"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListTablesResponse: AWSDecodableShape {
        /// A token to specify where to start paginating. This is the NextToken from a previously truncated response.
        public let nextToken: String?
        /// A list of tables.
        public let tables: [Table]?

        public init(nextToken: String? = nil, tables: [Table]? = nil) {
            self.nextToken = nextToken
            self.tables = tables
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case tables = "Tables"
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        ///  The Timestream resource with tags to be listed. This value is an Amazon Resource Name (ARN).
        public let resourceARN: String

        public init(resourceARN: String) {
            self.resourceARN = resourceARN
        }

        public func validate(name: String) throws {
            try self.resourceARN.forEach {}
            try self.validate(self.resourceARN, name: "resourceARN", parent: name, max: 1011)
            try self.validate(self.resourceARN, name: "resourceARN", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARN = "ResourceARN"
        }
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {
        ///  The tags currently associated with the Timestream resource.
        public let tags: [Tag]?

        public init(tags: [Tag]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct Record: AWSEncodableShape {
        /// Contains the list of dimensions for time series data points.
        public let dimensions: [Dimension]?
        /// Measure represents the data attribute of the time series. For example, the CPU utilization of an EC2 instance or the RPM of a wind turbine are measures.
        public let measureName: String?
        ///  Contains the measure value for the time series data point.
        public let measureValue: String?
        ///  Contains the data type of the measure value for the time series data point.
        public let measureValueType: MeasureValueType?
        ///  Contains the time at which the measure value for the data point was collected. The time value plus the unit provides the time elapsed since the epoch. For example, if the time value is 12345 and the unit is ms, then 12345 ms have elapsed since the epoch.
        public let time: String?
        ///  The granularity of the timestamp unit. It indicates if the time value is in seconds, milliseconds, nanoseconds or other supported values.
        public let timeUnit: TimeUnit?
        /// 64-bit attribute used for record updates. Write requests for duplicate data with a higher version number will update the existing measure value and version. In cases where the measure value is the same, Version will still be updated . Default value is to 1.
        public let version: Int64?

        public init(dimensions: [Dimension]? = nil, measureName: String? = nil, measureValue: String? = nil, measureValueType: MeasureValueType? = nil, time: String? = nil, timeUnit: TimeUnit? = nil, version: Int64? = nil) {
            self.dimensions = dimensions
            self.measureName = measureName
            self.measureValue = measureValue
            self.measureValueType = measureValueType
            self.time = time
            self.timeUnit = timeUnit
            self.version = version
        }

        public func validate(name: String) throws {
            try self.dimensions?.forEach {
                try $0.validate(name: "\(name).dimensions[]")
            }
            try self.dimensions?.forEach {}
            try self.validate(self.dimensions, name: "dimensions", parent: name, max: 128)
            try self.measureName?.forEach {}
            try self.validate(self.measureName, name: "measureName", parent: name, max: 256)
            try self.validate(self.measureName, name: "measureName", parent: name, min: 1)
            try self.measureValue?.forEach {}
            try self.validate(self.measureValue, name: "measureValue", parent: name, max: 2048)
            try self.validate(self.measureValue, name: "measureValue", parent: name, min: 1)
            try self.time?.forEach {}
            try self.validate(self.time, name: "time", parent: name, max: 256)
            try self.validate(self.time, name: "time", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case dimensions = "Dimensions"
            case measureName = "MeasureName"
            case measureValue = "MeasureValue"
            case measureValueType = "MeasureValueType"
            case time = "Time"
            case timeUnit = "TimeUnit"
            case version = "Version"
        }
    }

    public struct RetentionProperties: AWSEncodableShape & AWSDecodableShape {
        /// The duration for which data must be stored in the magnetic store.
        public let magneticStoreRetentionPeriodInDays: Int64
        /// The duration for which data must be stored in the memory store.
        public let memoryStoreRetentionPeriodInHours: Int64

        public init(magneticStoreRetentionPeriodInDays: Int64, memoryStoreRetentionPeriodInHours: Int64) {
            self.magneticStoreRetentionPeriodInDays = magneticStoreRetentionPeriodInDays
            self.memoryStoreRetentionPeriodInHours = memoryStoreRetentionPeriodInHours
        }

        public func validate(name: String) throws {
            try self.magneticStoreRetentionPeriodInDays.forEach {}
            try self.validate(self.magneticStoreRetentionPeriodInDays, name: "magneticStoreRetentionPeriodInDays", parent: name, max: 73000)
            try self.validate(self.magneticStoreRetentionPeriodInDays, name: "magneticStoreRetentionPeriodInDays", parent: name, min: 1)
            try self.memoryStoreRetentionPeriodInHours.forEach {}
            try self.validate(self.memoryStoreRetentionPeriodInHours, name: "memoryStoreRetentionPeriodInHours", parent: name, max: 8766)
            try self.validate(self.memoryStoreRetentionPeriodInHours, name: "memoryStoreRetentionPeriodInHours", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case magneticStoreRetentionPeriodInDays = "MagneticStoreRetentionPeriodInDays"
            case memoryStoreRetentionPeriodInHours = "MemoryStoreRetentionPeriodInHours"
        }
    }

    public struct Table: AWSDecodableShape {
        /// The Amazon Resource Name that uniquely identifies this table.
        public let arn: String?
        /// The time when the Timestream table was created.
        public let creationTime: Date?
        /// The name of the Timestream database that contains this table.
        public let databaseName: String?
        /// The time when the Timestream table was last updated.
        public let lastUpdatedTime: Date?
        /// The retention duration for the memory store and magnetic store.
        public let retentionProperties: RetentionProperties?
        /// The name of the Timestream table.
        public let tableName: String?
        /// The current state of the table:    DELETING - The table is being deleted.    ACTIVE - The table is ready for use.
        public let tableStatus: TableStatus?

        public init(arn: String? = nil, creationTime: Date? = nil, databaseName: String? = nil, lastUpdatedTime: Date? = nil, retentionProperties: RetentionProperties? = nil, tableName: String? = nil, tableStatus: TableStatus? = nil) {
            self.arn = arn
            self.creationTime = creationTime
            self.databaseName = databaseName
            self.lastUpdatedTime = lastUpdatedTime
            self.retentionProperties = retentionProperties
            self.tableName = tableName
            self.tableStatus = tableStatus
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case creationTime = "CreationTime"
            case databaseName = "DatabaseName"
            case lastUpdatedTime = "LastUpdatedTime"
            case retentionProperties = "RetentionProperties"
            case tableName = "TableName"
            case tableStatus = "TableStatus"
        }
    }

    public struct Tag: AWSEncodableShape & AWSDecodableShape {
        ///  The key of the tag. Tag keys are case sensitive.
        public let key: String
        ///  The value of the tag. Tag values are case-sensitive and can be null.
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        public func validate(name: String) throws {
            try self.key.forEach {}
            try self.validate(self.key, name: "key", parent: name, max: 128)
            try self.validate(self.key, name: "key", parent: name, min: 1)
            try self.value.forEach {}
            try self.validate(self.value, name: "value", parent: name, max: 256)
            try self.validate(self.value, name: "value", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        ///  Identifies the Timestream resource to which tags should be added. This value is an Amazon Resource Name (ARN).
        public let resourceARN: String
        ///  The tags to be assigned to the Timestream resource.
        public let tags: [Tag]

        public init(resourceARN: String, tags: [Tag]) {
            self.resourceARN = resourceARN
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.resourceARN.forEach {}
            try self.validate(self.resourceARN, name: "resourceARN", parent: name, max: 1011)
            try self.validate(self.resourceARN, name: "resourceARN", parent: name, min: 1)
            try self.tags.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try self.tags.forEach {}
            try self.validate(self.tags, name: "tags", parent: name, max: 200)
            try self.validate(self.tags, name: "tags", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARN = "ResourceARN"
            case tags = "Tags"
        }
    }

    public struct TagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        ///  The Timestream resource that the tags will be removed from. This value is an Amazon Resource Name (ARN).
        public let resourceARN: String
        ///  A list of tags keys. Existing tags of the resource whose keys are members of this list will be removed from the Timestream resource.
        public let tagKeys: [String]

        public init(resourceARN: String, tagKeys: [String]) {
            self.resourceARN = resourceARN
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.resourceARN.forEach {}
            try self.validate(self.resourceARN, name: "resourceARN", parent: name, max: 1011)
            try self.validate(self.resourceARN, name: "resourceARN", parent: name, min: 1)
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
            }
            try self.tagKeys.forEach {}
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, max: 200)
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARN = "ResourceARN"
            case tagKeys = "TagKeys"
        }
    }

    public struct UntagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UpdateDatabaseRequest: AWSEncodableShape {
        ///  The name of the database.
        public let databaseName: String
        ///  The identifier of the new KMS key (KmsKeyId) to be used to encrypt the data stored in the database. If the KmsKeyId currently registered with the database is the same as the KmsKeyId in the request, there will not be any update.  You can specify the KmsKeyId using any of the following:   Key ID: 1234abcd-12ab-34cd-56ef-1234567890ab    Key ARN: arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab    Alias name: alias/ExampleAlias    Alias ARN: arn:aws:kms:us-east-1:111122223333:alias/ExampleAlias
        public let kmsKeyId: String

        public init(databaseName: String, kmsKeyId: String) {
            self.databaseName = databaseName
            self.kmsKeyId = kmsKeyId
        }

        public func validate(name: String) throws {
            try self.databaseName.forEach {}
            try self.validate(self.databaseName, name: "databaseName", parent: name, max: 64)
            try self.validate(self.databaseName, name: "databaseName", parent: name, min: 3)
            try self.validate(self.databaseName, name: "databaseName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
            try self.kmsKeyId.forEach {}
            try self.validate(self.kmsKeyId, name: "kmsKeyId", parent: name, max: 2048)
            try self.validate(self.kmsKeyId, name: "kmsKeyId", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case databaseName = "DatabaseName"
            case kmsKeyId = "KmsKeyId"
        }
    }

    public struct UpdateDatabaseResponse: AWSDecodableShape {
        public let database: Database?

        public init(database: Database? = nil) {
            self.database = database
        }

        private enum CodingKeys: String, CodingKey {
            case database = "Database"
        }
    }

    public struct UpdateTableRequest: AWSEncodableShape {
        /// The name of the Timestream database.
        public let databaseName: String
        /// The retention duration of the memory store and the magnetic store.
        public let retentionProperties: RetentionProperties
        /// The name of the Timesream table.
        public let tableName: String

        public init(databaseName: String, retentionProperties: RetentionProperties, tableName: String) {
            self.databaseName = databaseName
            self.retentionProperties = retentionProperties
            self.tableName = tableName
        }

        public func validate(name: String) throws {
            try self.databaseName.forEach {}
            try self.validate(self.databaseName, name: "databaseName", parent: name, max: 64)
            try self.validate(self.databaseName, name: "databaseName", parent: name, min: 3)
            try self.validate(self.databaseName, name: "databaseName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
            try self.retentionProperties.validate(name: "\(name).retentionProperties")
            try self.retentionProperties.forEach {}
            try self.tableName.forEach {}
            try self.validate(self.tableName, name: "tableName", parent: name, max: 64)
            try self.validate(self.tableName, name: "tableName", parent: name, min: 3)
            try self.validate(self.tableName, name: "tableName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case databaseName = "DatabaseName"
            case retentionProperties = "RetentionProperties"
            case tableName = "TableName"
        }
    }

    public struct UpdateTableResponse: AWSDecodableShape {
        /// The updated Timestream table.
        public let table: Table?

        public init(table: Table? = nil) {
            self.table = table
        }

        private enum CodingKeys: String, CodingKey {
            case table = "Table"
        }
    }

    public struct WriteRecordsRequest: AWSEncodableShape {
        /// A record containing the common measure and dimension attributes shared across all the records in the request. The measure and dimension attributes specified in here will be merged with the measure and dimension attributes in the records object when the data is written into Timestream.
        public let commonAttributes: Record?
        /// The name of the Timestream database.
        public let databaseName: String
        /// An array of records containing the unique dimension and measure attributes for each time series data point.
        public let records: [Record]
        /// The name of the Timesream table.
        public let tableName: String

        public init(commonAttributes: Record? = nil, databaseName: String, records: [Record], tableName: String) {
            self.commonAttributes = commonAttributes
            self.databaseName = databaseName
            self.records = records
            self.tableName = tableName
        }

        public func validate(name: String) throws {
            try self.commonAttributes?.validate(name: "\(name).commonAttributes")
            try self.commonAttributes?.forEach {}
            try self.databaseName.forEach {}
            try self.validate(self.databaseName, name: "databaseName", parent: name, max: 64)
            try self.validate(self.databaseName, name: "databaseName", parent: name, min: 3)
            try self.validate(self.databaseName, name: "databaseName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
            try self.records.forEach {
                try $0.validate(name: "\(name).records[]")
            }
            try self.records.forEach {}
            try self.validate(self.records, name: "records", parent: name, max: 100)
            try self.validate(self.records, name: "records", parent: name, min: 1)
            try self.tableName.forEach {}
            try self.validate(self.tableName, name: "tableName", parent: name, max: 64)
            try self.validate(self.tableName, name: "tableName", parent: name, min: 3)
            try self.validate(self.tableName, name: "tableName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case commonAttributes = "CommonAttributes"
            case databaseName = "DatabaseName"
            case records = "Records"
            case tableName = "TableName"
        }
    }
}
