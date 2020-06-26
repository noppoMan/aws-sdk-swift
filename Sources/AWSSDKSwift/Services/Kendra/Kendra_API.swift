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
Client object for interacting with AWS Kendra service.

Amazon Kendra is a service for indexing large document sets.
*/
public struct Kendra {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the Kendra client
    /// - parameters:
    ///     - credentialProvider: Object providing credential to sign requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        credentialProvider: CredentialProviderFactory? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.serviceConfig = ServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWSKendraFrontendService",
            service: "kendra",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2019-02-03",
            endpoint: endpoint,
            possibleErrorTypes: [KendraErrorType.self]
        )
        self.client = AWSClient(
            credentialProviderFactory: credentialProvider ?? .runtime,
            serviceConfig: serviceConfig,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            httpClientProvider: httpClientProvider
        )
    }
    
    func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Removes one or more documents from an index. The documents must have been added with the BatchPutDocument operation. The documents are deleted asynchronously. You can see the progress of the deletion by using AWS CloudWatch. Any error messages releated to the processing of the batch are sent to you CloudWatch log.
    public func batchDeleteDocument(_ input: BatchDeleteDocumentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteDocumentResponse> {
        return client.send(operation: "BatchDeleteDocument", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds one or more documents to an index. The BatchPutDocument operation enables you to ingest inline documents or a set of documents stored in an Amazon S3 bucket. Use this operation to ingest your text and unstructured text into an index, add custom attributes to the documents, and to attach an access control list to the documents added to the index. The documents are indexed asynchronously. You can see the progress of the batch using AWS CloudWatch. Any error messages related to processing the batch are sent to your AWS CloudWatch log.
    public func batchPutDocument(_ input: BatchPutDocumentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchPutDocumentResponse> {
        return client.send(operation: "BatchPutDocument", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a data source that you use to with an Amazon Kendra index.  You specify a name, connector type and description for your data source. You can choose between an S3 connector, a SharePoint Online connector, and a database connector. You also specify configuration information such as document metadata (author, source URI, and so on) and user context information.  CreateDataSource is a synchronous operation. The operation returns 200 if the data source was successfully created. Otherwise, an exception is raised.
    public func createDataSource(_ input: CreateDataSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDataSourceResponse> {
        return client.send(operation: "CreateDataSource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an new set of frequently asked question (FAQ) questions and answers.
    public func createFaq(_ input: CreateFaqRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFaqResponse> {
        return client.send(operation: "CreateFaq", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new Amazon Kendra index. Index creation is an asynchronous operation. To determine if index creation has completed, check the Status field returned from a call to . The Status field is set to ACTIVE when the index is ready to use. Once the index is active you can index your documents using the operation or using one of the supported data sources. 
    public func createIndex(_ input: CreateIndexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIndexResponse> {
        return client.send(operation: "CreateIndex", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an Amazon Kendra data source. An exception is not thrown if the data source is already being deleted. While the data source is being deleted, the Status field returned by a call to the operation is set to DELETING. For more information, see Deleting Data Sources.
    @discardableResult public func deleteDataSource(_ input: DeleteDataSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDataSource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes an FAQ from an index.
    @discardableResult public func deleteFaq(_ input: DeleteFaqRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteFaq", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an existing Amazon Kendra index. An exception is not thrown if the index is already being deleted. While the index is being deleted, the Status field returned by a call to the DescribeIndex operation is set to DELETING.
    @discardableResult public func deleteIndex(_ input: DeleteIndexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteIndex", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about a Amazon Kendra data source.
    public func describeDataSource(_ input: DescribeDataSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataSourceResponse> {
        return client.send(operation: "DescribeDataSource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about an FAQ list.
    public func describeFaq(_ input: DescribeFaqRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFaqResponse> {
        return client.send(operation: "DescribeFaq", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes an existing Amazon Kendra index
    public func describeIndex(_ input: DescribeIndexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIndexResponse> {
        return client.send(operation: "DescribeIndex", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets statistics about synchronizing Amazon Kendra with a data source.
    public func listDataSourceSyncJobs(_ input: ListDataSourceSyncJobsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataSourceSyncJobsResponse> {
        return client.send(operation: "ListDataSourceSyncJobs", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the data sources that you have created.
    public func listDataSources(_ input: ListDataSourcesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataSourcesResponse> {
        return client.send(operation: "ListDataSources", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets a list of FAQ lists associated with an index.
    public func listFaqs(_ input: ListFaqsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFaqsResponse> {
        return client.send(operation: "ListFaqs", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the Amazon Kendra indexes that you have created.
    public func listIndices(_ input: ListIndicesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIndicesResponse> {
        return client.send(operation: "ListIndices", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets a list of tags associated with a specified resource. Indexes, FAQs, and data sources can have tags associated with them.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Searches an active index. Use this API to search your documents using query. The Query operation enables to do faceted search and to filter results based on document attributes. It also enables you to provide user context that Amazon Kendra uses to enforce document access control in the search results.  Amazon Kendra searches your index for text content and question and answer (FAQ) content. By default the response contains three types of results.   Relevant passages   Matching FAQs   Relevant documents   You can specify that the query return only one type of result using the QueryResultTypeConfig parameter.
    public func query(_ input: QueryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryResult> {
        return client.send(operation: "Query", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts a synchronization job for a data source. If a synchronization job is already in progress, Amazon Kendra returns a ResourceInUseException exception.
    public func startDataSourceSyncJob(_ input: StartDataSourceSyncJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartDataSourceSyncJobResponse> {
        return client.send(operation: "StartDataSourceSyncJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops a running synchronization job. You can't stop a scheduled synchronization job.
    @discardableResult public func stopDataSourceSyncJob(_ input: StopDataSourceSyncJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "StopDataSourceSyncJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Enables you to provide feedback to Amazon Kendra to improve the performance of the service. 
    @discardableResult public func submitFeedback(_ input: SubmitFeedbackRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "SubmitFeedback", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds the specified tag to the specified index, FAQ, or data source resource. If the tag already exists, the existing value is replaced with the new value.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes a tag from an index, FAQ, or a data source.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates an existing Amazon Kendra data source.
    @discardableResult public func updateDataSource(_ input: UpdateDataSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateDataSource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates an existing Amazon Kendra index.
    @discardableResult public func updateIndex(_ input: UpdateIndexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateIndex", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
