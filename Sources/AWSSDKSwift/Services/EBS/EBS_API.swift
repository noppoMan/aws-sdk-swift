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
import NIO

/**
Client object for interacting with AWS EBS service.

You can use the Amazon Elastic Block Store (EBS) direct APIs to directly read the data on your EBS snapshots, and identify the difference between two snapshots. You can view the details of blocks in an EBS snapshot, compare the block difference between two snapshots, and directly access the data in a snapshot. If you’re an independent software vendor (ISV) who offers backup services for EBS, the EBS direct APIs make it easier and more cost-effective to track incremental changes on your EBS volumes via EBS snapshots. This can be done without having to create new volumes from EBS snapshots. This API reference provides detailed information about the actions, data types, parameters, and errors of the EBS direct APIs. For more information about the elements that make up the EBS direct APIs, and examples of how to use them effectively, see Accessing the Contents of an EBS Snapshot in the Amazon Elastic Compute Cloud User Guide. For more information about the supported AWS Regions, endpoints, and service quotas for the EBS direct APIs, see Amazon Elastic Block Store Endpoints and Quotas in the AWS General Reference.
*/
public struct EBS {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the EBS client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? partition,
            service: "ebs",
            serviceProtocol: .restjson,
            apiVersion: "2019-11-02",
            endpoint: endpoint,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            possibleErrorTypes: [EBSErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Returns the data in a block in an Amazon Elastic Block Store snapshot.
    public func getSnapshotBlock(_ input: GetSnapshotBlockRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSnapshotBlockResponse> {
        return client.send(operation: "GetSnapshotBlock", path: "/snapshots/{snapshotId}/blocks/{blockIndex}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns the block indexes and block tokens for blocks that are different between two Amazon Elastic Block Store snapshots of the same volume/snapshot lineage.
    public func listChangedBlocks(_ input: ListChangedBlocksRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListChangedBlocksResponse> {
        return client.send(operation: "ListChangedBlocks", path: "/snapshots/{secondSnapshotId}/changedblocks", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns the block indexes and block tokens for blocks in an Amazon Elastic Block Store snapshot.
    public func listSnapshotBlocks(_ input: ListSnapshotBlocksRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSnapshotBlocksResponse> {
        return client.send(operation: "ListSnapshotBlocks", path: "/snapshots/{snapshotId}/blocks", httpMethod: "GET", input: input, on: eventLoop)
    }
}
