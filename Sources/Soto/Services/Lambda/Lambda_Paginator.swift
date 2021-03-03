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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension Lambda {
    ///  Returns a list of aliases for a Lambda function.
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
    public func listAliasesPaginator<Result>(
        _ input: ListAliasesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAliasesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAliases,
            inputKey: \ListAliasesRequest.marker,
            outputKey: \ListAliasesResponse.nextMarker,
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
    public func listAliasesPaginator(
        _ input: ListAliasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAliasesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAliases,
            inputKey: \ListAliasesRequest.marker,
            outputKey: \ListAliasesResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of code signing configurations. A request returns up to 10,000 configurations per call. You can use the MaxItems parameter to return fewer configurations per call.
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
    public func listCodeSigningConfigsPaginator<Result>(
        _ input: ListCodeSigningConfigsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCodeSigningConfigsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCodeSigningConfigs,
            inputKey: \ListCodeSigningConfigsRequest.marker,
            outputKey: \ListCodeSigningConfigsResponse.nextMarker,
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
    public func listCodeSigningConfigsPaginator(
        _ input: ListCodeSigningConfigsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCodeSigningConfigsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCodeSigningConfigs,
            inputKey: \ListCodeSigningConfigsRequest.marker,
            outputKey: \ListCodeSigningConfigsResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists event source mappings. Specify an EventSourceArn to only show event source mappings for a single event source.
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
    public func listEventSourceMappingsPaginator<Result>(
        _ input: ListEventSourceMappingsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEventSourceMappingsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEventSourceMappings,
            inputKey: \ListEventSourceMappingsRequest.marker,
            outputKey: \ListEventSourceMappingsResponse.nextMarker,
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
    public func listEventSourceMappingsPaginator(
        _ input: ListEventSourceMappingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEventSourceMappingsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEventSourceMappings,
            inputKey: \ListEventSourceMappingsRequest.marker,
            outputKey: \ListEventSourceMappingsResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of configurations for asynchronous invocation for a function. To configure options for asynchronous invocation, use PutFunctionEventInvokeConfig.
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
    public func listFunctionEventInvokeConfigsPaginator<Result>(
        _ input: ListFunctionEventInvokeConfigsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListFunctionEventInvokeConfigsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listFunctionEventInvokeConfigs,
            inputKey: \ListFunctionEventInvokeConfigsRequest.marker,
            outputKey: \ListFunctionEventInvokeConfigsResponse.nextMarker,
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
    public func listFunctionEventInvokeConfigsPaginator(
        _ input: ListFunctionEventInvokeConfigsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFunctionEventInvokeConfigsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFunctionEventInvokeConfigs,
            inputKey: \ListFunctionEventInvokeConfigsRequest.marker,
            outputKey: \ListFunctionEventInvokeConfigsResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of Lambda functions, with the version-specific configuration of each. Lambda returns up to 50 functions per call. Set FunctionVersion to ALL to include all published versions of each function in addition to the unpublished version. To get more information about a function or version, use GetFunction.
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
    public func listFunctionsPaginator<Result>(
        _ input: ListFunctionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListFunctionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listFunctions,
            inputKey: \ListFunctionsRequest.marker,
            outputKey: \ListFunctionsResponse.nextMarker,
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
    public func listFunctionsPaginator(
        _ input: ListFunctionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFunctionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFunctions,
            inputKey: \ListFunctionsRequest.marker,
            outputKey: \ListFunctionsResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the functions that use the specified code signing configuration. You can use this method prior to deleting a code signing configuration, to verify that no functions are using it.
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
    public func listFunctionsByCodeSigningConfigPaginator<Result>(
        _ input: ListFunctionsByCodeSigningConfigRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListFunctionsByCodeSigningConfigResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listFunctionsByCodeSigningConfig,
            inputKey: \ListFunctionsByCodeSigningConfigRequest.marker,
            outputKey: \ListFunctionsByCodeSigningConfigResponse.nextMarker,
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
    public func listFunctionsByCodeSigningConfigPaginator(
        _ input: ListFunctionsByCodeSigningConfigRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFunctionsByCodeSigningConfigResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFunctionsByCodeSigningConfig,
            inputKey: \ListFunctionsByCodeSigningConfigRequest.marker,
            outputKey: \ListFunctionsByCodeSigningConfigResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the versions of an AWS Lambda layer. Versions that have been deleted aren't listed. Specify a runtime identifier to list only versions that indicate that they're compatible with that runtime.
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
    public func listLayerVersionsPaginator<Result>(
        _ input: ListLayerVersionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListLayerVersionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listLayerVersions,
            inputKey: \ListLayerVersionsRequest.marker,
            outputKey: \ListLayerVersionsResponse.nextMarker,
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
    public func listLayerVersionsPaginator(
        _ input: ListLayerVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListLayerVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listLayerVersions,
            inputKey: \ListLayerVersionsRequest.marker,
            outputKey: \ListLayerVersionsResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists AWS Lambda layers and shows information about the latest version of each. Specify a runtime identifier to list only layers that indicate that they're compatible with that runtime.
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
    public func listLayersPaginator<Result>(
        _ input: ListLayersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListLayersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listLayers,
            inputKey: \ListLayersRequest.marker,
            outputKey: \ListLayersResponse.nextMarker,
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
    public func listLayersPaginator(
        _ input: ListLayersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListLayersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listLayers,
            inputKey: \ListLayersRequest.marker,
            outputKey: \ListLayersResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of provisioned concurrency configurations for a function.
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
    public func listProvisionedConcurrencyConfigsPaginator<Result>(
        _ input: ListProvisionedConcurrencyConfigsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListProvisionedConcurrencyConfigsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listProvisionedConcurrencyConfigs,
            inputKey: \ListProvisionedConcurrencyConfigsRequest.marker,
            outputKey: \ListProvisionedConcurrencyConfigsResponse.nextMarker,
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
    public func listProvisionedConcurrencyConfigsPaginator(
        _ input: ListProvisionedConcurrencyConfigsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListProvisionedConcurrencyConfigsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProvisionedConcurrencyConfigs,
            inputKey: \ListProvisionedConcurrencyConfigsRequest.marker,
            outputKey: \ListProvisionedConcurrencyConfigsResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of versions, with the version-specific configuration of each. Lambda returns up to 50 versions per call.
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
    public func listVersionsByFunctionPaginator<Result>(
        _ input: ListVersionsByFunctionRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListVersionsByFunctionResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listVersionsByFunction,
            inputKey: \ListVersionsByFunctionRequest.marker,
            outputKey: \ListVersionsByFunctionResponse.nextMarker,
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
    public func listVersionsByFunctionPaginator(
        _ input: ListVersionsByFunctionRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListVersionsByFunctionResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listVersionsByFunction,
            inputKey: \ListVersionsByFunctionRequest.marker,
            outputKey: \ListVersionsByFunctionResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Lambda.ListAliasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListAliasesRequest {
        return .init(
            functionName: self.functionName,
            functionVersion: self.functionVersion,
            marker: token,
            maxItems: self.maxItems
        )
    }
}

extension Lambda.ListCodeSigningConfigsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListCodeSigningConfigsRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems
        )
    }
}

extension Lambda.ListEventSourceMappingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListEventSourceMappingsRequest {
        return .init(
            eventSourceArn: self.eventSourceArn,
            functionName: self.functionName,
            marker: token,
            maxItems: self.maxItems
        )
    }
}

extension Lambda.ListFunctionEventInvokeConfigsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListFunctionEventInvokeConfigsRequest {
        return .init(
            functionName: self.functionName,
            marker: token,
            maxItems: self.maxItems
        )
    }
}

extension Lambda.ListFunctionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListFunctionsRequest {
        return .init(
            functionVersion: self.functionVersion,
            marker: token,
            masterRegion: self.masterRegion,
            maxItems: self.maxItems
        )
    }
}

extension Lambda.ListFunctionsByCodeSigningConfigRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListFunctionsByCodeSigningConfigRequest {
        return .init(
            codeSigningConfigArn: self.codeSigningConfigArn,
            marker: token,
            maxItems: self.maxItems
        )
    }
}

extension Lambda.ListLayerVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListLayerVersionsRequest {
        return .init(
            compatibleRuntime: self.compatibleRuntime,
            layerName: self.layerName,
            marker: token,
            maxItems: self.maxItems
        )
    }
}

extension Lambda.ListLayersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListLayersRequest {
        return .init(
            compatibleRuntime: self.compatibleRuntime,
            marker: token,
            maxItems: self.maxItems
        )
    }
}

extension Lambda.ListProvisionedConcurrencyConfigsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListProvisionedConcurrencyConfigsRequest {
        return .init(
            functionName: self.functionName,
            marker: token,
            maxItems: self.maxItems
        )
    }
}

extension Lambda.ListVersionsByFunctionRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListVersionsByFunctionRequest {
        return .init(
            functionName: self.functionName,
            marker: token,
            maxItems: self.maxItems
        )
    }
}
