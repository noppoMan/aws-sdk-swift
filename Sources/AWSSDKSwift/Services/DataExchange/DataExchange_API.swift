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
Client object for interacting with AWS DataExchange service.

This is the API reference for AWS Data Exchange.
*/
public struct DataExchange: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the DataExchange client
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
        self.context = AWSServiceContext(
            region: region,
            partition: region?.partition ?? partition,
            service: "dataexchange",
            serviceProtocol: .restjson,
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            errorType: DataExchangeErrorType.self,
            timeout: timeout
        )
    }
    
    public func transform(_ transform:(AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, context: transform(self.context))
    }
    
    //MARK: API Calls

    ///  This operation cancels a job. Jobs can be cancelled only when they are in the WAITING state.
    @discardableResult public func cancelJob(_ input: CancelJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "CancelJob", path: "/v1/jobs/{JobId}", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation creates a data set.
    public func createDataSet(_ input: CreateDataSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDataSetResponse> {
        return client.execute(operation: "CreateDataSet", path: "/v1/data-sets", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation creates a job.
    public func createJob(_ input: CreateJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateJobResponse> {
        return client.execute(operation: "CreateJob", path: "/v1/jobs", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation creates a revision for a data set.
    public func createRevision(_ input: CreateRevisionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRevisionResponse> {
        return client.execute(operation: "CreateRevision", path: "/v1/data-sets/{DataSetId}/revisions", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation deletes an asset.
    @discardableResult public func deleteAsset(_ input: DeleteAssetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteAsset", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation deletes a data set.
    @discardableResult public func deleteDataSet(_ input: DeleteDataSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteDataSet", path: "/v1/data-sets/{DataSetId}", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation deletes a revision.
    @discardableResult public func deleteRevision(_ input: DeleteRevisionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteRevision", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation returns information about an asset.
    public func getAsset(_ input: GetAssetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAssetResponse> {
        return client.execute(operation: "GetAsset", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation returns information about a data set.
    public func getDataSet(_ input: GetDataSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataSetResponse> {
        return client.execute(operation: "GetDataSet", path: "/v1/data-sets/{DataSetId}", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation returns information about a job.
    public func getJob(_ input: GetJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetJobResponse> {
        return client.execute(operation: "GetJob", path: "/v1/jobs/{JobId}", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation returns information about a revision.
    public func getRevision(_ input: GetRevisionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRevisionResponse> {
        return client.execute(operation: "GetRevision", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation lists a data set's revisions sorted by CreatedAt in descending order.
    public func listDataSetRevisions(_ input: ListDataSetRevisionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataSetRevisionsResponse> {
        return client.execute(operation: "ListDataSetRevisions", path: "/v1/data-sets/{DataSetId}/revisions", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.
    public func listDataSets(_ input: ListDataSetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataSetsResponse> {
        return client.execute(operation: "ListDataSets", path: "/v1/data-sets", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation lists your jobs sorted by CreatedAt in descending order.
    public func listJobs(_ input: ListJobsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJobsResponse> {
        return client.execute(operation: "ListJobs", path: "/v1/jobs", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation lists a revision's assets sorted alphabetically in descending order.
    public func listRevisionAssets(_ input: ListRevisionAssetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRevisionAssetsResponse> {
        return client.execute(operation: "ListRevisionAssets", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation lists the tags on the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resource-arn}", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation starts a job.
    public func startJob(_ input: StartJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartJobResponse> {
        return client.execute(operation: "StartJob", path: "/v1/jobs/{JobId}", httpMethod: .PATCH, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation tags a resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "TagResource", path: "/tags/{resource-arn}", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation removes one or more tags from a resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "UntagResource", path: "/tags/{resource-arn}", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation updates an asset.
    public func updateAsset(_ input: UpdateAssetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAssetResponse> {
        return client.execute(operation: "UpdateAsset", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", httpMethod: .PATCH, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation updates a data set.
    public func updateDataSet(_ input: UpdateDataSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDataSetResponse> {
        return client.execute(operation: "UpdateDataSet", path: "/v1/data-sets/{DataSetId}", httpMethod: .PATCH, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation updates a revision.
    public func updateRevision(_ input: UpdateRevisionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRevisionResponse> {
        return client.execute(operation: "UpdateRevision", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", httpMethod: .PATCH, serviceContext: context, input: input, on: eventLoop)
    }
}

extension DataExchange {
    init(client: AWSClient, context: AWSServiceContext) {
        self.client = client
        self.context = context
    }
}
