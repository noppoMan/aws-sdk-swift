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

@_exported import SotoCore

/// Service object for interacting with AWS ForecastQueryService service.
///
/// Provides APIs for creating and managing Amazon Forecast resources.
public struct ForecastQueryService: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ForecastQueryService client
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
            amzTarget: "AmazonForecastRuntime",
            service: "forecastquery",
            signingName: "forecast",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-06-26",
            endpoint: endpoint,
            errorType: ForecastQueryServiceErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Retrieves a forecast for a single item, filtered by the supplied criteria. The criteria is a key-value pair. The key is either item_id (or the equivalent non-timestamp, non-target field) from the TARGET_TIME_SERIES dataset, or one of the forecast dimensions specified as part of the FeaturizationConfig object. By default, QueryForecast returns the complete date range for the filtered forecast. You can request a specific date range. To get the full forecast, use the CreateForecastExportJob operation.  The forecasts generated by Amazon Forecast are in the same timezone as the dataset that was used to create the predictor.
    public func queryForecast(_ input: QueryForecastRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryForecastResponse> {
        return self.client.execute(operation: "QueryForecast", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func queryForecast(_ input: QueryForecastRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryForecastResponse {
        return try await self.client.execute(operation: "QueryForecast", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif
}

extension ForecastQueryService {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ForecastQueryService, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
