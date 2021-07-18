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

import Foundation
import SotoCore

extension TimestreamQuery {
    // MARK: Enums

    public enum ScalarType: String, CustomStringConvertible, Codable {
        case bigint = "BIGINT"
        case boolean = "BOOLEAN"
        case date = "DATE"
        case double = "DOUBLE"
        case integer = "INTEGER"
        case intervalDayToSecond = "INTERVAL_DAY_TO_SECOND"
        case intervalYearToMonth = "INTERVAL_YEAR_TO_MONTH"
        case time = "TIME"
        case timestamp = "TIMESTAMP"
        case unknown = "UNKNOWN"
        case varchar = "VARCHAR"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CancelQueryRequest: AWSEncodableShape {

        ///  The id of the query that needs to be cancelled. QueryID is returned as part of QueryResult. 
        public let queryId: String

        public init(queryId: String) {
            self.queryId = queryId
        }

        public func validate(name: String) throws {
            try self.validate(self.queryId, name: "queryId", parent: name, max: 64)
            try self.validate(self.queryId, name: "queryId", parent: name, min: 1)
            try self.validate(self.queryId, name: "queryId", parent: name, pattern: "[a-zA-Z0-9]+")
        }

        private enum CodingKeys: String, CodingKey {
            case queryId = "QueryId"
        }
    }

    public struct CancelQueryResponse: AWSDecodableShape {

        ///  A CancellationMessage is returned when a CancelQuery request for the query specified by QueryId has already been issued.  
        public let cancellationMessage: String?

        public init(cancellationMessage: String? = nil) {
            self.cancellationMessage = cancellationMessage
        }

        private enum CodingKeys: String, CodingKey {
            case cancellationMessage = "CancellationMessage"
        }
    }

    public class ColumnInfo: AWSDecodableShape {

        ///  The name of the result set column. The name of the result set is available for columns of all data types except for arrays. 
        public let name: String?
        ///  The data type of the result set column. The data type can be a scalar or complex. Scalar data types are integers, strings, doubles, booleans, and others. Complex data types are types such as arrays, rows, and others. 
        public let type: `Type`

        public init(name: String? = nil, type: `Type`) {
            self.name = name
            self.type = type
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case type = "Type"
        }
    }

    public class Datum: AWSDecodableShape {

        ///  Indicates if the data point is an array. 
        public let arrayValue: [Datum]?
        ///  Indicates if the data point is null. 
        public let nullValue: Bool?
        ///  Indicates if the data point is a row. 
        public let rowValue: Row?
        ///  Indicates if the data point is a scalar value such as integer, string, double, or boolean. 
        public let scalarValue: String?
        ///  Indicates if the data point is of timeseries data type. 
        public let timeSeriesValue: [TimeSeriesDataPoint]?

        public init(arrayValue: [Datum]? = nil, nullValue: Bool? = nil, rowValue: Row? = nil, scalarValue: String? = nil, timeSeriesValue: [TimeSeriesDataPoint]? = nil) {
            self.arrayValue = arrayValue
            self.nullValue = nullValue
            self.rowValue = rowValue
            self.scalarValue = scalarValue
            self.timeSeriesValue = timeSeriesValue
        }

        private enum CodingKeys: String, CodingKey {
            case arrayValue = "ArrayValue"
            case nullValue = "NullValue"
            case rowValue = "RowValue"
            case scalarValue = "ScalarValue"
            case timeSeriesValue = "TimeSeriesValue"
        }
    }

    public struct DescribeEndpointsRequest: AWSEncodableShape {


        public init() {
        }

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

    public struct QueryRequest: AWSEncodableShape {

        ///  Unique, case-sensitive string of up to 64 ASCII characters that you specify when you make a Query request. Providing a ClientToken makes the call to Query idempotent, meaning that multiple identical calls  have the same effect as one single call. 
        ///  Your query request will fail in the following cases:     If you submit a request with the same client token outside the 5-minute idepotency window.     If you submit a request with the same client token but a change in other parameters within the 5-minute idempotency window.     
        ///   After 4 hours, any request with the same client token is treated as a new request. 
        public let clientToken: String?
        ///  The total number of rows to return in the output. If the total number of rows available is more than the value specified, a NextToken is provided in the command's output. To resume pagination, provide the NextToken value in the starting-token argument of a  subsequent command. 
        public let maxRows: Int?
        ///  A pagination token passed to get a set of results. 
        public let nextToken: String?
        ///  The query to be executed by Timestream. 
        public let queryString: String

        public init(clientToken: String? = QueryRequest.idempotencyToken(), maxRows: Int? = nil, nextToken: String? = nil, queryString: String) {
            self.clientToken = clientToken
            self.maxRows = maxRows
            self.nextToken = nextToken
            self.queryString = queryString
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 128)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 32)
            try self.validate(self.maxRows, name: "maxRows", parent: name, max: 1000)
            try self.validate(self.maxRows, name: "maxRows", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
            case maxRows = "MaxRows"
            case nextToken = "NextToken"
            case queryString = "QueryString"
        }
    }

    public struct QueryResponse: AWSDecodableShape {

        ///  The column data types of the returned result set. 
        public let columnInfo: [ColumnInfo]
        ///  A pagination token that can be used again on a Query call to get the next set of results.  
        public let nextToken: String?
        ///  A unique ID for the given query. 
        public let queryId: String
        /// Information about the status of the query, including progress and bytes scannned.
        public let queryStatus: QueryStatus?
        ///  The result set rows returned by the query. 
        public let rows: [Row]

        public init(columnInfo: [ColumnInfo], nextToken: String? = nil, queryId: String, queryStatus: QueryStatus? = nil, rows: [Row]) {
            self.columnInfo = columnInfo
            self.nextToken = nextToken
            self.queryId = queryId
            self.queryStatus = queryStatus
            self.rows = rows
        }

        private enum CodingKeys: String, CodingKey {
            case columnInfo = "ColumnInfo"
            case nextToken = "NextToken"
            case queryId = "QueryId"
            case queryStatus = "QueryStatus"
            case rows = "Rows"
        }
    }

    public struct QueryStatus: AWSDecodableShape {

        /// The amount of data scanned by the query in bytes that you will be charged for.  This is a cumulative sum and represents the total amount of data that you will be charged  for since the query was started.  The charge is applied only once and is either applied when  the query completes execution or when the query is cancelled. 
        public let cumulativeBytesMetered: Int64?
        /// The amount of data scanned by the query in bytes.  This is a cumulative sum and represents the total amount of bytes scanned since the query was started. 
        public let cumulativeBytesScanned: Int64?
        /// The progress of the query, expressed as a percentage.
        public let progressPercentage: Double?

        public init(cumulativeBytesMetered: Int64? = nil, cumulativeBytesScanned: Int64? = nil, progressPercentage: Double? = nil) {
            self.cumulativeBytesMetered = cumulativeBytesMetered
            self.cumulativeBytesScanned = cumulativeBytesScanned
            self.progressPercentage = progressPercentage
        }

        private enum CodingKeys: String, CodingKey {
            case cumulativeBytesMetered = "CumulativeBytesMetered"
            case cumulativeBytesScanned = "CumulativeBytesScanned"
            case progressPercentage = "ProgressPercentage"
        }
    }

    public struct Row: AWSDecodableShape {

        /// List of data points in a single row of the result set.
        public let data: [Datum]

        public init(data: [Datum]) {
            self.data = data
        }

        private enum CodingKeys: String, CodingKey {
            case data = "Data"
        }
    }

    public struct TimeSeriesDataPoint: AWSDecodableShape {

        /// The timestamp when the measure value was collected.
        public let time: String
        /// The measure value for the  data point.
        public let value: Datum

        public init(time: String, value: Datum) {
            self.time = time
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case time = "Time"
            case value = "Value"
        }
    }

    public class `Type`: AWSDecodableShape {

        /// Indicates if the column is an array.
        public let arrayColumnInfo: ColumnInfo?
        /// Indicates if the column is a row.
        public let rowColumnInfo: [ColumnInfo]?
        /// Indicates if the column is of type string, integer, boolean, double, timestamp, date, time. 
        public let scalarType: ScalarType?
        /// Indicates if the column is a timeseries data type.
        public let timeSeriesMeasureValueColumnInfo: ColumnInfo?

        public init(arrayColumnInfo: ColumnInfo? = nil, rowColumnInfo: [ColumnInfo]? = nil, scalarType: ScalarType? = nil, timeSeriesMeasureValueColumnInfo: ColumnInfo? = nil) {
            self.arrayColumnInfo = arrayColumnInfo
            self.rowColumnInfo = rowColumnInfo
            self.scalarType = scalarType
            self.timeSeriesMeasureValueColumnInfo = timeSeriesMeasureValueColumnInfo
        }

        private enum CodingKeys: String, CodingKey {
            case arrayColumnInfo = "ArrayColumnInfo"
            case rowColumnInfo = "RowColumnInfo"
            case scalarType = "ScalarType"
            case timeSeriesMeasureValueColumnInfo = "TimeSeriesMeasureValueColumnInfo"
        }
    }
}
