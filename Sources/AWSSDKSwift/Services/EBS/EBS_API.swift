//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore

/**
Client object for interacting with AWS EBS service.

You can use the Amazon Elastic Block Store (EBS) direct APIs to directly read the data on your EBS snapshots, and identify the difference between two snapshots. You can view the details of blocks in an EBS snapshot, compare the block difference between two snapshots, and directly access the data in a snapshot. If you're an independent software vendor (ISV) who offers backup services for EBS, the EBS direct APIs make it easier and more cost-effective to track incremental changes on your EBS volumes via EBS snapshots. This can be done without having to create new volumes from EBS snapshots. This API reference provides detailed information about the actions, data types, parameters, and errors of the EBS direct APIs. For more information about the elements that make up the EBS direct APIs, and examples of how to use them effectively, see Accessing the Contents of an EBS Snapshot in the Amazon Elastic Compute Cloud User Guide. For more information about the supported AWS Regions, endpoints, and service quotas for the EBS direct APIs, see Amazon Elastic Block Store Endpoints and Quotas in the AWS General Reference.
*/
public struct EBS {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the EBS client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "ebs",
            serviceProtocol: .restjson,
            apiVersion: "2019-11-02",
            endpoint: endpoint,
            possibleErrorTypes: [EBSErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Seals and completes the snapshot after all of the required blocks of data have been written to it. Completing the snapshot changes the status to completed. You cannot write new blocks to a snapshot after it has been completed.
    public func completeSnapshot(_ input: CompleteSnapshotRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CompleteSnapshotResponse> {
        return client.execute(operation: "CompleteSnapshot", path: "/snapshots/completion/{snapshotId}", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the data in a block in an Amazon Elastic Block Store snapshot.
    public func getSnapshotBlock(_ input: GetSnapshotBlockRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetSnapshotBlockResponse> {
        return client.execute(operation: "GetSnapshotBlock", path: "/snapshots/{snapshotId}/blocks/{blockIndex}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the block indexes and block tokens for blocks that are different between two Amazon Elastic Block Store snapshots of the same volume/snapshot lineage.
    public func listChangedBlocks(_ input: ListChangedBlocksRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListChangedBlocksResponse> {
        return client.execute(operation: "ListChangedBlocks", path: "/snapshots/{secondSnapshotId}/changedblocks", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the block indexes and block tokens for blocks in an Amazon Elastic Block Store snapshot.
    public func listSnapshotBlocks(_ input: ListSnapshotBlocksRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListSnapshotBlocksResponse> {
        return client.execute(operation: "ListSnapshotBlocks", path: "/snapshots/{snapshotId}/blocks", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Writes a block of data to a block in the snapshot. If the specified block contains data, the existing data is overwritten. The target snapshot must be in the pending state. Data written to a snapshot must be aligned with 512-byte sectors.
    public func putSnapshotBlock(_ input: PutSnapshotBlockRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutSnapshotBlockResponse> {
        return client.execute(operation: "PutSnapshotBlock", path: "/snapshots/{snapshotId}/blocks/{blockIndex}", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new Amazon EBS snapshot. The new snapshot enters the pending state after the request completes.  After creating the snapshot, use  PutSnapshotBlock to write blocks of data to the snapshot.
    public func startSnapshot(_ input: StartSnapshotRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartSnapshotResponse> {
        return client.execute(operation: "StartSnapshot", path: "/snapshots", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    //MARK: Streaming API Calls

    ///  Returns the data in a block in an Amazon Elastic Block Store snapshot.
    public func getSnapshotBlockStreaming(_ input: GetSnapshotBlockRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled, _ stream: @escaping (ByteBuffer, EventLoop)->EventLoopFuture<Void>) -> EventLoopFuture<GetSnapshotBlockResponse> {
        return client.execute(operation: "GetSnapshotBlock", path: "/snapshots/{snapshotId}/blocks/{blockIndex}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger, stream: stream)
    }
}
