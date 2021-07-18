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

import SotoCore

// MARK: Paginators

extension IoTWireless {
    ///  Lists the destinations registered to your AWS account.
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
    public func listDestinationsPaginator<Result>(
        _ input: ListDestinationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDestinationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDestinations,
            inputKey: \ListDestinationsRequest.nextToken,
            outputKey: \ListDestinationsResponse.nextToken,
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
    public func listDestinationsPaginator(
        _ input: ListDestinationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDestinationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDestinations,
            inputKey: \ListDestinationsRequest.nextToken,
            outputKey: \ListDestinationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the device profiles registered to your AWS account.
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
    public func listDeviceProfilesPaginator<Result>(
        _ input: ListDeviceProfilesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDeviceProfilesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDeviceProfiles,
            inputKey: \ListDeviceProfilesRequest.nextToken,
            outputKey: \ListDeviceProfilesResponse.nextToken,
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
    public func listDeviceProfilesPaginator(
        _ input: ListDeviceProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDeviceProfilesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDeviceProfiles,
            inputKey: \ListDeviceProfilesRequest.nextToken,
            outputKey: \ListDeviceProfilesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the service profiles registered to your AWS account.
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
    public func listServiceProfilesPaginator<Result>(
        _ input: ListServiceProfilesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListServiceProfilesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listServiceProfiles,
            inputKey: \ListServiceProfilesRequest.nextToken,
            outputKey: \ListServiceProfilesResponse.nextToken,
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
    public func listServiceProfilesPaginator(
        _ input: ListServiceProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListServiceProfilesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listServiceProfiles,
            inputKey: \ListServiceProfilesRequest.nextToken,
            outputKey: \ListServiceProfilesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the wireless devices registered to your AWS account.
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
    public func listWirelessDevicesPaginator<Result>(
        _ input: ListWirelessDevicesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListWirelessDevicesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listWirelessDevices,
            inputKey: \ListWirelessDevicesRequest.nextToken,
            outputKey: \ListWirelessDevicesResponse.nextToken,
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
    public func listWirelessDevicesPaginator(
        _ input: ListWirelessDevicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListWirelessDevicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWirelessDevices,
            inputKey: \ListWirelessDevicesRequest.nextToken,
            outputKey: \ListWirelessDevicesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the wireless gateways registered to your AWS account.
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
    public func listWirelessGatewaysPaginator<Result>(
        _ input: ListWirelessGatewaysRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListWirelessGatewaysResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listWirelessGateways,
            inputKey: \ListWirelessGatewaysRequest.nextToken,
            outputKey: \ListWirelessGatewaysResponse.nextToken,
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
    public func listWirelessGatewaysPaginator(
        _ input: ListWirelessGatewaysRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListWirelessGatewaysResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWirelessGateways,
            inputKey: \ListWirelessGatewaysRequest.nextToken,
            outputKey: \ListWirelessGatewaysResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension IoTWireless.ListDestinationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTWireless.ListDestinationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension IoTWireless.ListDeviceProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTWireless.ListDeviceProfilesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension IoTWireless.ListServiceProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTWireless.ListServiceProfilesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension IoTWireless.ListWirelessDevicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTWireless.ListWirelessDevicesRequest {
        return .init(
            destinationName: self.destinationName,
            deviceProfileId: self.deviceProfileId,
            maxResults: self.maxResults,
            nextToken: token,
            serviceProfileId: self.serviceProfileId,
            wirelessDeviceType: self.wirelessDeviceType
        )
    }
}

extension IoTWireless.ListWirelessGatewaysRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTWireless.ListWirelessGatewaysRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
