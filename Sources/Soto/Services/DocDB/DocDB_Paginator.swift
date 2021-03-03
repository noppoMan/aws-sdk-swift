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

extension DocDB {
    ///  Returns a list of certificate authority (CA) certificates provided by Amazon DocumentDB for this AWS account.
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
    public func describeCertificatesPaginator<Result>(
        _ input: DescribeCertificatesMessage,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, CertificateMessage, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeCertificates,
            inputKey: \DescribeCertificatesMessage.marker,
            outputKey: \CertificateMessage.marker,
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
    public func describeCertificatesPaginator(
        _ input: DescribeCertificatesMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (CertificateMessage, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeCertificates,
            inputKey: \DescribeCertificatesMessage.marker,
            outputKey: \CertificateMessage.marker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of DBClusterParameterGroup descriptions. If a DBClusterParameterGroupName parameter is specified, the list contains only the description of the specified cluster parameter group.
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
    public func describeDBClusterParameterGroupsPaginator<Result>(
        _ input: DescribeDBClusterParameterGroupsMessage,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DBClusterParameterGroupsMessage, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeDBClusterParameterGroups,
            inputKey: \DescribeDBClusterParameterGroupsMessage.marker,
            outputKey: \DBClusterParameterGroupsMessage.marker,
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
    public func describeDBClusterParameterGroupsPaginator(
        _ input: DescribeDBClusterParameterGroupsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DBClusterParameterGroupsMessage, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeDBClusterParameterGroups,
            inputKey: \DescribeDBClusterParameterGroupsMessage.marker,
            outputKey: \DBClusterParameterGroupsMessage.marker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the detailed parameter list for a particular cluster parameter group.
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
    public func describeDBClusterParametersPaginator<Result>(
        _ input: DescribeDBClusterParametersMessage,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DBClusterParameterGroupDetails, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeDBClusterParameters,
            inputKey: \DescribeDBClusterParametersMessage.marker,
            outputKey: \DBClusterParameterGroupDetails.marker,
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
    public func describeDBClusterParametersPaginator(
        _ input: DescribeDBClusterParametersMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DBClusterParameterGroupDetails, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeDBClusterParameters,
            inputKey: \DescribeDBClusterParametersMessage.marker,
            outputKey: \DBClusterParameterGroupDetails.marker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about cluster snapshots. This API operation supports pagination.
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
    public func describeDBClusterSnapshotsPaginator<Result>(
        _ input: DescribeDBClusterSnapshotsMessage,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DBClusterSnapshotMessage, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeDBClusterSnapshots,
            inputKey: \DescribeDBClusterSnapshotsMessage.marker,
            outputKey: \DBClusterSnapshotMessage.marker,
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
    public func describeDBClusterSnapshotsPaginator(
        _ input: DescribeDBClusterSnapshotsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DBClusterSnapshotMessage, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeDBClusterSnapshots,
            inputKey: \DescribeDBClusterSnapshotsMessage.marker,
            outputKey: \DBClusterSnapshotMessage.marker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about provisioned Amazon DocumentDB clusters. This API operation supports pagination. For certain management features such as cluster and instance lifecycle management, Amazon DocumentDB leverages operational technology that is shared with Amazon RDS and Amazon Neptune. Use the filterName=engine,Values=docdb filter parameter to return only Amazon DocumentDB clusters.
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
    public func describeDBClustersPaginator<Result>(
        _ input: DescribeDBClustersMessage,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DBClusterMessage, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeDBClusters,
            inputKey: \DescribeDBClustersMessage.marker,
            outputKey: \DBClusterMessage.marker,
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
    public func describeDBClustersPaginator(
        _ input: DescribeDBClustersMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DBClusterMessage, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeDBClusters,
            inputKey: \DescribeDBClustersMessage.marker,
            outputKey: \DBClusterMessage.marker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of the available engines.
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
    public func describeDBEngineVersionsPaginator<Result>(
        _ input: DescribeDBEngineVersionsMessage,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DBEngineVersionMessage, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeDBEngineVersions,
            inputKey: \DescribeDBEngineVersionsMessage.marker,
            outputKey: \DBEngineVersionMessage.marker,
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
    public func describeDBEngineVersionsPaginator(
        _ input: DescribeDBEngineVersionsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DBEngineVersionMessage, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeDBEngineVersions,
            inputKey: \DescribeDBEngineVersionsMessage.marker,
            outputKey: \DBEngineVersionMessage.marker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about provisioned Amazon DocumentDB instances. This API supports pagination.
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
    public func describeDBInstancesPaginator<Result>(
        _ input: DescribeDBInstancesMessage,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DBInstanceMessage, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeDBInstances,
            inputKey: \DescribeDBInstancesMessage.marker,
            outputKey: \DBInstanceMessage.marker,
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
    public func describeDBInstancesPaginator(
        _ input: DescribeDBInstancesMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DBInstanceMessage, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeDBInstances,
            inputKey: \DescribeDBInstancesMessage.marker,
            outputKey: \DBInstanceMessage.marker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup.
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
    public func describeDBSubnetGroupsPaginator<Result>(
        _ input: DescribeDBSubnetGroupsMessage,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DBSubnetGroupMessage, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeDBSubnetGroups,
            inputKey: \DescribeDBSubnetGroupsMessage.marker,
            outputKey: \DBSubnetGroupMessage.marker,
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
    public func describeDBSubnetGroupsPaginator(
        _ input: DescribeDBSubnetGroupsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DBSubnetGroupMessage, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeDBSubnetGroups,
            inputKey: \DescribeDBSubnetGroupsMessage.marker,
            outputKey: \DBSubnetGroupMessage.marker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns events related to instances, security groups, snapshots, and DB parameter groups for the past 14 days. You can obtain events specific to a particular DB instance, security group, snapshot, or parameter group by providing the name as a parameter. By default, the events of the past hour are returned.
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
    public func describeEventsPaginator<Result>(
        _ input: DescribeEventsMessage,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, EventsMessage, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeEvents,
            inputKey: \DescribeEventsMessage.marker,
            outputKey: \EventsMessage.marker,
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
    public func describeEventsPaginator(
        _ input: DescribeEventsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (EventsMessage, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeEvents,
            inputKey: \DescribeEventsMessage.marker,
            outputKey: \EventsMessage.marker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of orderable instance options for the specified engine.
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
    public func describeOrderableDBInstanceOptionsPaginator<Result>(
        _ input: DescribeOrderableDBInstanceOptionsMessage,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, OrderableDBInstanceOptionsMessage, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeOrderableDBInstanceOptions,
            inputKey: \DescribeOrderableDBInstanceOptionsMessage.marker,
            outputKey: \OrderableDBInstanceOptionsMessage.marker,
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
    public func describeOrderableDBInstanceOptionsPaginator(
        _ input: DescribeOrderableDBInstanceOptionsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (OrderableDBInstanceOptionsMessage, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeOrderableDBInstanceOptions,
            inputKey: \DescribeOrderableDBInstanceOptionsMessage.marker,
            outputKey: \OrderableDBInstanceOptionsMessage.marker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of resources (for example, instances) that have at least one pending maintenance action.
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
    public func describePendingMaintenanceActionsPaginator<Result>(
        _ input: DescribePendingMaintenanceActionsMessage,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, PendingMaintenanceActionsMessage, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describePendingMaintenanceActions,
            inputKey: \DescribePendingMaintenanceActionsMessage.marker,
            outputKey: \PendingMaintenanceActionsMessage.marker,
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
    public func describePendingMaintenanceActionsPaginator(
        _ input: DescribePendingMaintenanceActionsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (PendingMaintenanceActionsMessage, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describePendingMaintenanceActions,
            inputKey: \DescribePendingMaintenanceActionsMessage.marker,
            outputKey: \PendingMaintenanceActionsMessage.marker,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension DocDB.DescribeCertificatesMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeCertificatesMessage {
        return .init(
            certificateIdentifier: self.certificateIdentifier,
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )
    }
}

extension DocDB.DescribeDBClusterParameterGroupsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeDBClusterParameterGroupsMessage {
        return .init(
            dBClusterParameterGroupName: self.dBClusterParameterGroupName,
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )
    }
}

extension DocDB.DescribeDBClusterParametersMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeDBClusterParametersMessage {
        return .init(
            dBClusterParameterGroupName: self.dBClusterParameterGroupName,
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords,
            source: self.source
        )
    }
}

extension DocDB.DescribeDBClusterSnapshotsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeDBClusterSnapshotsMessage {
        return .init(
            dBClusterIdentifier: self.dBClusterIdentifier,
            dBClusterSnapshotIdentifier: self.dBClusterSnapshotIdentifier,
            filters: self.filters,
            includePublic: self.includePublic,
            includeShared: self.includeShared,
            marker: token,
            maxRecords: self.maxRecords,
            snapshotType: self.snapshotType
        )
    }
}

extension DocDB.DescribeDBClustersMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeDBClustersMessage {
        return .init(
            dBClusterIdentifier: self.dBClusterIdentifier,
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )
    }
}

extension DocDB.DescribeDBEngineVersionsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeDBEngineVersionsMessage {
        return .init(
            dBParameterGroupFamily: self.dBParameterGroupFamily,
            defaultOnly: self.defaultOnly,
            engine: self.engine,
            engineVersion: self.engineVersion,
            filters: self.filters,
            listSupportedCharacterSets: self.listSupportedCharacterSets,
            listSupportedTimezones: self.listSupportedTimezones,
            marker: token,
            maxRecords: self.maxRecords
        )
    }
}

extension DocDB.DescribeDBInstancesMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeDBInstancesMessage {
        return .init(
            dBInstanceIdentifier: self.dBInstanceIdentifier,
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )
    }
}

extension DocDB.DescribeDBSubnetGroupsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeDBSubnetGroupsMessage {
        return .init(
            dBSubnetGroupName: self.dBSubnetGroupName,
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )
    }
}

extension DocDB.DescribeEventsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeEventsMessage {
        return .init(
            duration: self.duration,
            endTime: self.endTime,
            eventCategories: self.eventCategories,
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords,
            sourceIdentifier: self.sourceIdentifier,
            sourceType: self.sourceType,
            startTime: self.startTime
        )
    }
}

extension DocDB.DescribeOrderableDBInstanceOptionsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeOrderableDBInstanceOptionsMessage {
        return .init(
            dBInstanceClass: self.dBInstanceClass,
            engine: self.engine,
            engineVersion: self.engineVersion,
            filters: self.filters,
            licenseModel: self.licenseModel,
            marker: token,
            maxRecords: self.maxRecords,
            vpc: self.vpc
        )
    }
}

extension DocDB.DescribePendingMaintenanceActionsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribePendingMaintenanceActionsMessage {
        return .init(
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords,
            resourceIdentifier: self.resourceIdentifier
        )
    }
}
