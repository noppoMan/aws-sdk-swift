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

/// Service object for interacting with AWS QLDB service.
///
/// The control plane for Amazon QLDB
public struct QLDB: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the QLDB client
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
            service: "qldb",
            serviceProtocol: .restjson,
            apiVersion: "2019-01-02",
            endpoint: endpoint,
            errorType: QLDBErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Ends a given Amazon QLDB journal stream. Before a stream can be canceled, its current status must be ACTIVE. You can't restart a stream after you cancel it. Canceled QLDB stream resources are subject to a 7-day retention period, so they are automatically deleted after this limit expires.
    public func cancelJournalKinesisStream(_ input: CancelJournalKinesisStreamRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelJournalKinesisStreamResponse> {
        return self.client.execute(operation: "CancelJournalKinesisStream", path: "/ledgers/{name}/journal-kinesis-streams/{streamId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func cancelJournalKinesisStream(_ input: CancelJournalKinesisStreamRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelJournalKinesisStreamResponse {
        return try await self.client.execute(operation: "CancelJournalKinesisStream", path: "/ledgers/{name}/journal-kinesis-streams/{streamId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Creates a new ledger in your AWS account.
    public func createLedger(_ input: CreateLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLedgerResponse> {
        return self.client.execute(operation: "CreateLedger", path: "/ledgers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func createLedger(_ input: CreateLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLedgerResponse {
        return try await self.client.execute(operation: "CreateLedger", path: "/ledgers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Deletes a ledger and all of its contents. This action is irreversible. If deletion protection is enabled, you must first disable it before you can delete the ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the UpdateLedger operation to set the flag to false. The QLDB console disables deletion protection for you when you use it to delete a ledger.
    @discardableResult public func deleteLedger(_ input: DeleteLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteLedger", path: "/ledgers/{name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func deleteLedger(_ input: DeleteLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteLedger", path: "/ledgers/{name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Returns detailed information about a given Amazon QLDB journal stream. The output includes the Amazon Resource Name (ARN), stream name, current status, creation time, and the parameters of your original stream creation request.
    public func describeJournalKinesisStream(_ input: DescribeJournalKinesisStreamRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJournalKinesisStreamResponse> {
        return self.client.execute(operation: "DescribeJournalKinesisStream", path: "/ledgers/{name}/journal-kinesis-streams/{streamId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func describeJournalKinesisStream(_ input: DescribeJournalKinesisStreamRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJournalKinesisStreamResponse {
        return try await self.client.execute(operation: "DescribeJournalKinesisStream", path: "/ledgers/{name}/journal-kinesis-streams/{streamId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Returns information about a journal export job, including the ledger name, export ID, when it was created, current status, and its start and end time export parameters. This action does not return any expired export jobs. For more information, see Export Job Expiration in the Amazon QLDB Developer Guide. If the export job with the given ExportId doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException.
    public func describeJournalS3Export(_ input: DescribeJournalS3ExportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJournalS3ExportResponse> {
        return self.client.execute(operation: "DescribeJournalS3Export", path: "/ledgers/{name}/journal-s3-exports/{exportId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func describeJournalS3Export(_ input: DescribeJournalS3ExportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJournalS3ExportResponse {
        return try await self.client.execute(operation: "DescribeJournalS3Export", path: "/ledgers/{name}/journal-s3-exports/{exportId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Returns information about a ledger, including its state and when it was created.
    public func describeLedger(_ input: DescribeLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLedgerResponse> {
        return self.client.execute(operation: "DescribeLedger", path: "/ledgers/{name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func describeLedger(_ input: DescribeLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLedgerResponse {
        return try await self.client.execute(operation: "DescribeLedger", path: "/ledgers/{name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Exports journal contents within a date and time range from a ledger into a specified Amazon Simple Storage Service (Amazon S3) bucket. The data is written as files in Amazon Ion format. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name is in CREATING status, then throws ResourcePreconditionNotMetException. You can initiate up to two concurrent journal export requests for each ledger. Beyond this limit, journal export requests throw LimitExceededException.
    public func exportJournalToS3(_ input: ExportJournalToS3Request, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportJournalToS3Response> {
        return self.client.execute(operation: "ExportJournalToS3", path: "/ledgers/{name}/journal-s3-exports", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func exportJournalToS3(_ input: ExportJournalToS3Request, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportJournalToS3Response {
        return try await self.client.execute(operation: "ExportJournalToS3", path: "/ledgers/{name}/journal-s3-exports", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Returns a block object at a specified address in a journal. Also returns a proof of the specified block for verification if DigestTipAddress is provided. For information about the data contents in a block, see Journal contents in the Amazon QLDB Developer Guide. If the specified ledger doesn't exist or is in DELETING status, then throws ResourceNotFoundException. If the specified ledger is in CREATING status, then throws ResourcePreconditionNotMetException. If no block exists with the specified address, then throws InvalidParameterException.
    public func getBlock(_ input: GetBlockRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBlockResponse> {
        return self.client.execute(operation: "GetBlock", path: "/ledgers/{name}/block", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func getBlock(_ input: GetBlockRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBlockResponse {
        return try await self.client.execute(operation: "GetBlock", path: "/ledgers/{name}/block", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Returns the digest of a ledger at the latest committed block in the journal. The response includes a 256-bit hash value and a block address.
    public func getDigest(_ input: GetDigestRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDigestResponse> {
        return self.client.execute(operation: "GetDigest", path: "/ledgers/{name}/digest", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func getDigest(_ input: GetDigestRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDigestResponse {
        return try await self.client.execute(operation: "GetDigest", path: "/ledgers/{name}/digest", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Returns a revision data object for a specified document ID and block address. Also returns a proof of the specified revision for verification if DigestTipAddress is provided.
    public func getRevision(_ input: GetRevisionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRevisionResponse> {
        return self.client.execute(operation: "GetRevision", path: "/ledgers/{name}/revision", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func getRevision(_ input: GetRevisionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRevisionResponse {
        return try await self.client.execute(operation: "GetRevision", path: "/ledgers/{name}/revision", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Returns an array of all Amazon QLDB journal stream descriptors for a given ledger. The output of each stream descriptor includes the same details that are returned by DescribeJournalKinesisStream. This action returns a maximum of MaxResults items. It is paginated so that you can retrieve all the items by calling ListJournalKinesisStreamsForLedger multiple times.
    public func listJournalKinesisStreamsForLedger(_ input: ListJournalKinesisStreamsForLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJournalKinesisStreamsForLedgerResponse> {
        return self.client.execute(operation: "ListJournalKinesisStreamsForLedger", path: "/ledgers/{name}/journal-kinesis-streams", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func listJournalKinesisStreamsForLedger(_ input: ListJournalKinesisStreamsForLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListJournalKinesisStreamsForLedgerResponse {
        return try await self.client.execute(operation: "ListJournalKinesisStreamsForLedger", path: "/ledgers/{name}/journal-kinesis-streams", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Returns an array of journal export job descriptions for all ledgers that are associated with the current AWS account and Region. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3Exports multiple times. This action does not return any expired export jobs. For more information, see Export Job Expiration in the Amazon QLDB Developer Guide.
    public func listJournalS3Exports(_ input: ListJournalS3ExportsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJournalS3ExportsResponse> {
        return self.client.execute(operation: "ListJournalS3Exports", path: "/journal-s3-exports", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func listJournalS3Exports(_ input: ListJournalS3ExportsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListJournalS3ExportsResponse {
        return try await self.client.execute(operation: "ListJournalS3Exports", path: "/journal-s3-exports", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Returns an array of journal export job descriptions for a specified ledger. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3ExportsForLedger multiple times. This action does not return any expired export jobs. For more information, see Export Job Expiration in the Amazon QLDB Developer Guide.
    public func listJournalS3ExportsForLedger(_ input: ListJournalS3ExportsForLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJournalS3ExportsForLedgerResponse> {
        return self.client.execute(operation: "ListJournalS3ExportsForLedger", path: "/ledgers/{name}/journal-s3-exports", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func listJournalS3ExportsForLedger(_ input: ListJournalS3ExportsForLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListJournalS3ExportsForLedgerResponse {
        return try await self.client.execute(operation: "ListJournalS3ExportsForLedger", path: "/ledgers/{name}/journal-s3-exports", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Returns an array of ledger summaries that are associated with the current AWS account and Region. This action returns a maximum of 100 items and is paginated so that you can retrieve all the items by calling ListLedgers multiple times.
    public func listLedgers(_ input: ListLedgersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLedgersResponse> {
        return self.client.execute(operation: "ListLedgers", path: "/ledgers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func listLedgers(_ input: ListLedgersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLedgersResponse {
        return try await self.client.execute(operation: "ListLedgers", path: "/ledgers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Returns all tags for a specified Amazon QLDB resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Creates a journal stream for a given Amazon QLDB ledger. The stream captures every document revision that is committed to the ledger's journal and delivers the data to a specified Amazon Kinesis Data Streams resource.
    public func streamJournalToKinesis(_ input: StreamJournalToKinesisRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StreamJournalToKinesisResponse> {
        return self.client.execute(operation: "StreamJournalToKinesis", path: "/ledgers/{name}/journal-kinesis-streams", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func streamJournalToKinesis(_ input: StreamJournalToKinesisRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StreamJournalToKinesisResponse {
        return try await self.client.execute(operation: "StreamJournalToKinesis", path: "/ledgers/{name}/journal-kinesis-streams", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Adds one or more tags to a specified Amazon QLDB resource. A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, your request fails and returns an error.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Removes one or more tags from a specified Amazon QLDB resource. You can specify up to 50 tag keys to remove.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif

    /// Updates properties on a ledger.
    public func updateLedger(_ input: UpdateLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLedgerResponse> {
        return self.client.execute(operation: "UpdateLedger", path: "/ledgers/{name}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    #if compiler(>=5.4) && $AsyncAwait
    public func updateLedger(_ input: UpdateLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLedgerResponse {
        return try await self.client.execute(operation: "UpdateLedger", path: "/ledgers/{name}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    #endif
}

extension QLDB {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: QLDB, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
