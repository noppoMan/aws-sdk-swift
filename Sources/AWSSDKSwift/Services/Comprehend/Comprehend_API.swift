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
import Foundation
import NIO

/**
Client object for interacting with AWS Comprehend service.

Amazon Comprehend is an AWS service for gaining insight into the content of documents. Use these actions to determine the topics contained in your documents, the topics they discuss, the predominant sentiment expressed in them, the predominant language used, and more.
*/
public struct Comprehend {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Comprehend client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `useAWSClientShared` if the client shall manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "Comprehend_20171127",
            service: "comprehend",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-11-27",
            endpoint: endpoint,
            serviceEndpoints: ["fips-us-east-1": "comprehend-fips.us-east-1.amazonaws.com", "fips-us-east-2": "comprehend-fips.us-east-2.amazonaws.com", "fips-us-west-2": "comprehend-fips.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [ComprehendErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Determines the dominant language of the input text for a batch of documents. For a list of languages that Amazon Comprehend can detect, see Amazon Comprehend Supported Languages. 
    public func batchDetectDominantLanguage(_ input: BatchDetectDominantLanguageRequest) -> EventLoopFuture<BatchDetectDominantLanguageResponse> {
        return client.send(operation: "BatchDetectDominantLanguage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects the text of a batch of documents for named entities and returns information about them. For more information about named entities, see how-entities 
    public func batchDetectEntities(_ input: BatchDetectEntitiesRequest) -> EventLoopFuture<BatchDetectEntitiesResponse> {
        return client.send(operation: "BatchDetectEntities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Detects the key noun phrases found in a batch of documents.
    public func batchDetectKeyPhrases(_ input: BatchDetectKeyPhrasesRequest) -> EventLoopFuture<BatchDetectKeyPhrasesResponse> {
        return client.send(operation: "BatchDetectKeyPhrases", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects a batch of documents and returns an inference of the prevailing sentiment, POSITIVE, NEUTRAL, MIXED, or NEGATIVE, in each one.
    public func batchDetectSentiment(_ input: BatchDetectSentimentRequest) -> EventLoopFuture<BatchDetectSentimentResponse> {
        return client.send(operation: "BatchDetectSentiment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects the text of a batch of documents for the syntax and part of speech of the words in the document and returns information about them. For more information, see how-syntax.
    public func batchDetectSyntax(_ input: BatchDetectSyntaxRequest) -> EventLoopFuture<BatchDetectSyntaxResponse> {
        return client.send(operation: "BatchDetectSyntax", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new document classification request to analyze a single document in real-time, using a previously created and trained custom model and an endpoint.
    public func classifyDocument(_ input: ClassifyDocumentRequest) -> EventLoopFuture<ClassifyDocumentResponse> {
        return client.send(operation: "ClassifyDocument", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new document classifier that you can use to categorize documents. To create a classifier you provide a set of training documents that labeled with the categories that you want to use. After the classifier is trained you can use it to categorize a set of labeled documents into the categories. For more information, see how-document-classification.
    public func createDocumentClassifier(_ input: CreateDocumentClassifierRequest) -> EventLoopFuture<CreateDocumentClassifierResponse> {
        return client.send(operation: "CreateDocumentClassifier", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a model-specific endpoint for synchronous inference for a previously trained custom model 
    public func createEndpoint(_ input: CreateEndpointRequest) -> EventLoopFuture<CreateEndpointResponse> {
        return client.send(operation: "CreateEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an entity recognizer using submitted files. After your CreateEntityRecognizer request is submitted, you can check job status using the API. 
    public func createEntityRecognizer(_ input: CreateEntityRecognizerRequest) -> EventLoopFuture<CreateEntityRecognizerResponse> {
        return client.send(operation: "CreateEntityRecognizer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a previously created document classifier Only those classifiers that are in terminated states (IN_ERROR, TRAINED) will be deleted. If an active inference job is using the model, a ResourceInUseException will be returned. This is an asynchronous action that puts the classifier into a DELETING state, and it is then removed by a background job. Once removed, the classifier disappears from your account and is no longer available for use. 
    public func deleteDocumentClassifier(_ input: DeleteDocumentClassifierRequest) -> EventLoopFuture<DeleteDocumentClassifierResponse> {
        return client.send(operation: "DeleteDocumentClassifier", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a model-specific endpoint for a previously-trained custom model. All endpoints must be deleted in order for the model to be deleted.
    public func deleteEndpoint(_ input: DeleteEndpointRequest) -> EventLoopFuture<DeleteEndpointResponse> {
        return client.send(operation: "DeleteEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an entity recognizer. Only those recognizers that are in terminated states (IN_ERROR, TRAINED) will be deleted. If an active inference job is using the model, a ResourceInUseException will be returned. This is an asynchronous action that puts the recognizer into a DELETING state, and it is then removed by a background job. Once removed, the recognizer disappears from your account and is no longer available for use. 
    public func deleteEntityRecognizer(_ input: DeleteEntityRecognizerRequest) -> EventLoopFuture<DeleteEntityRecognizerResponse> {
        return client.send(operation: "DeleteEntityRecognizer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a document classification job. Use this operation to get the status of a classification job.
    public func describeDocumentClassificationJob(_ input: DescribeDocumentClassificationJobRequest) -> EventLoopFuture<DescribeDocumentClassificationJobResponse> {
        return client.send(operation: "DescribeDocumentClassificationJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a document classifier.
    public func describeDocumentClassifier(_ input: DescribeDocumentClassifierRequest) -> EventLoopFuture<DescribeDocumentClassifierResponse> {
        return client.send(operation: "DescribeDocumentClassifier", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a dominant language detection job. Use this operation to get the status of a detection job.
    public func describeDominantLanguageDetectionJob(_ input: DescribeDominantLanguageDetectionJobRequest) -> EventLoopFuture<DescribeDominantLanguageDetectionJobResponse> {
        return client.send(operation: "DescribeDominantLanguageDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a specific endpoint. Use this operation to get the status of an endpoint.
    public func describeEndpoint(_ input: DescribeEndpointRequest) -> EventLoopFuture<DescribeEndpointResponse> {
        return client.send(operation: "DescribeEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with an entities detection job. Use this operation to get the status of a detection job.
    public func describeEntitiesDetectionJob(_ input: DescribeEntitiesDetectionJobRequest) -> EventLoopFuture<DescribeEntitiesDetectionJobResponse> {
        return client.send(operation: "DescribeEntitiesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides details about an entity recognizer including status, S3 buckets containing training data, recognizer metadata, metrics, and so on.
    public func describeEntityRecognizer(_ input: DescribeEntityRecognizerRequest) -> EventLoopFuture<DescribeEntityRecognizerResponse> {
        return client.send(operation: "DescribeEntityRecognizer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a key phrases detection job. Use this operation to get the status of a detection job.
    public func describeKeyPhrasesDetectionJob(_ input: DescribeKeyPhrasesDetectionJobRequest) -> EventLoopFuture<DescribeKeyPhrasesDetectionJobResponse> {
        return client.send(operation: "DescribeKeyPhrasesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a sentiment detection job. Use this operation to get the status of a detection job.
    public func describeSentimentDetectionJob(_ input: DescribeSentimentDetectionJobRequest) -> EventLoopFuture<DescribeSentimentDetectionJobResponse> {
        return client.send(operation: "DescribeSentimentDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a topic detection job. Use this operation to get the status of a detection job.
    public func describeTopicsDetectionJob(_ input: DescribeTopicsDetectionJobRequest) -> EventLoopFuture<DescribeTopicsDetectionJobResponse> {
        return client.send(operation: "DescribeTopicsDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Determines the dominant language of the input text. For a list of languages that Amazon Comprehend can detect, see Amazon Comprehend Supported Languages. 
    public func detectDominantLanguage(_ input: DetectDominantLanguageRequest) -> EventLoopFuture<DetectDominantLanguageResponse> {
        return client.send(operation: "DetectDominantLanguage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects text for named entities, and returns information about them. For more information, about named entities, see how-entities. 
    public func detectEntities(_ input: DetectEntitiesRequest) -> EventLoopFuture<DetectEntitiesResponse> {
        return client.send(operation: "DetectEntities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Detects the key noun phrases found in the text. 
    public func detectKeyPhrases(_ input: DetectKeyPhrasesRequest) -> EventLoopFuture<DetectKeyPhrasesResponse> {
        return client.send(operation: "DetectKeyPhrases", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects text and returns an inference of the prevailing sentiment (POSITIVE, NEUTRAL, MIXED, or NEGATIVE). 
    public func detectSentiment(_ input: DetectSentimentRequest) -> EventLoopFuture<DetectSentimentResponse> {
        return client.send(operation: "DetectSentiment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects text for syntax and the part of speech of words in the document. For more information, how-syntax.
    public func detectSyntax(_ input: DetectSyntaxRequest) -> EventLoopFuture<DetectSyntaxResponse> {
        return client.send(operation: "DetectSyntax", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the documentation classification jobs that you have submitted.
    public func listDocumentClassificationJobs(_ input: ListDocumentClassificationJobsRequest) -> EventLoopFuture<ListDocumentClassificationJobsResponse> {
        return client.send(operation: "ListDocumentClassificationJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the document classifiers that you have created.
    public func listDocumentClassifiers(_ input: ListDocumentClassifiersRequest) -> EventLoopFuture<ListDocumentClassifiersResponse> {
        return client.send(operation: "ListDocumentClassifiers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the dominant language detection jobs that you have submitted.
    public func listDominantLanguageDetectionJobs(_ input: ListDominantLanguageDetectionJobsRequest) -> EventLoopFuture<ListDominantLanguageDetectionJobsResponse> {
        return client.send(operation: "ListDominantLanguageDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of all existing endpoints that you've created.
    public func listEndpoints(_ input: ListEndpointsRequest) -> EventLoopFuture<ListEndpointsResponse> {
        return client.send(operation: "ListEndpoints", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the entity detection jobs that you have submitted.
    public func listEntitiesDetectionJobs(_ input: ListEntitiesDetectionJobsRequest) -> EventLoopFuture<ListEntitiesDetectionJobsResponse> {
        return client.send(operation: "ListEntitiesDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the properties of all entity recognizers that you created, including recognizers currently in training. Allows you to filter the list of recognizers based on criteria such as status and submission time. This call returns up to 500 entity recognizers in the list, with a default number of 100 recognizers in the list. The results of this list are not in any particular order. Please get the list and sort locally if needed.
    public func listEntityRecognizers(_ input: ListEntityRecognizersRequest) -> EventLoopFuture<ListEntityRecognizersResponse> {
        return client.send(operation: "ListEntityRecognizers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Get a list of key phrase detection jobs that you have submitted.
    public func listKeyPhrasesDetectionJobs(_ input: ListKeyPhrasesDetectionJobsRequest) -> EventLoopFuture<ListKeyPhrasesDetectionJobsResponse> {
        return client.send(operation: "ListKeyPhrasesDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of sentiment detection jobs that you have submitted.
    public func listSentimentDetectionJobs(_ input: ListSentimentDetectionJobsRequest) -> EventLoopFuture<ListSentimentDetectionJobsResponse> {
        return client.send(operation: "ListSentimentDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all tags associated with a given Amazon Comprehend resource. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the topic detection jobs that you have submitted.
    public func listTopicsDetectionJobs(_ input: ListTopicsDetectionJobsRequest) -> EventLoopFuture<ListTopicsDetectionJobsResponse> {
        return client.send(operation: "ListTopicsDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous document classification job. Use the operation to track the progress of the job.
    public func startDocumentClassificationJob(_ input: StartDocumentClassificationJobRequest) -> EventLoopFuture<StartDocumentClassificationJobResponse> {
        return client.send(operation: "StartDocumentClassificationJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous dominant language detection job for a collection of documents. Use the operation to track the status of a job.
    public func startDominantLanguageDetectionJob(_ input: StartDominantLanguageDetectionJobRequest) -> EventLoopFuture<StartDominantLanguageDetectionJobResponse> {
        return client.send(operation: "StartDominantLanguageDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous entity detection job for a collection of documents. Use the operation to track the status of a job. This API can be used for either standard entity detection or custom entity recognition. In order to be used for custom entity recognition, the optional EntityRecognizerArn must be used in order to provide access to the recognizer being used to detect the custom entity.
    public func startEntitiesDetectionJob(_ input: StartEntitiesDetectionJobRequest) -> EventLoopFuture<StartEntitiesDetectionJobResponse> {
        return client.send(operation: "StartEntitiesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous key phrase detection job for a collection of documents. Use the operation to track the status of a job.
    public func startKeyPhrasesDetectionJob(_ input: StartKeyPhrasesDetectionJobRequest) -> EventLoopFuture<StartKeyPhrasesDetectionJobResponse> {
        return client.send(operation: "StartKeyPhrasesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous sentiment detection job for a collection of documents. use the operation to track the status of a job.
    public func startSentimentDetectionJob(_ input: StartSentimentDetectionJobRequest) -> EventLoopFuture<StartSentimentDetectionJobResponse> {
        return client.send(operation: "StartSentimentDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous topic detection job. Use the DescribeTopicDetectionJob operation to track the status of a job.
    public func startTopicsDetectionJob(_ input: StartTopicsDetectionJobRequest) -> EventLoopFuture<StartTopicsDetectionJobResponse> {
        return client.send(operation: "StartTopicsDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a dominant language detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopDominantLanguageDetectionJob(_ input: StopDominantLanguageDetectionJobRequest) -> EventLoopFuture<StopDominantLanguageDetectionJobResponse> {
        return client.send(operation: "StopDominantLanguageDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops an entities detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopEntitiesDetectionJob(_ input: StopEntitiesDetectionJobRequest) -> EventLoopFuture<StopEntitiesDetectionJobResponse> {
        return client.send(operation: "StopEntitiesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a key phrases detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopKeyPhrasesDetectionJob(_ input: StopKeyPhrasesDetectionJobRequest) -> EventLoopFuture<StopKeyPhrasesDetectionJobResponse> {
        return client.send(operation: "StopKeyPhrasesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a sentiment detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is be stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopSentimentDetectionJob(_ input: StopSentimentDetectionJobRequest) -> EventLoopFuture<StopSentimentDetectionJobResponse> {
        return client.send(operation: "StopSentimentDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a document classifier training job while in progress. If the training job state is TRAINING, the job is marked for termination and put into the STOP_REQUESTED state. If the training job completes before it can be stopped, it is put into the TRAINED; otherwise the training job is stopped and put into the STOPPED state and the service sends back an HTTP 200 response with an empty HTTP body. 
    public func stopTrainingDocumentClassifier(_ input: StopTrainingDocumentClassifierRequest) -> EventLoopFuture<StopTrainingDocumentClassifierResponse> {
        return client.send(operation: "StopTrainingDocumentClassifier", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops an entity recognizer training job while in progress. If the training job state is TRAINING, the job is marked for termination and put into the STOP_REQUESTED state. If the training job completes before it can be stopped, it is put into the TRAINED; otherwise the training job is stopped and putted into the STOPPED state and the service sends back an HTTP 200 response with an empty HTTP body.
    public func stopTrainingEntityRecognizer(_ input: StopTrainingEntityRecognizerRequest) -> EventLoopFuture<StopTrainingEntityRecognizerResponse> {
        return client.send(operation: "StopTrainingEntityRecognizer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a specific tag with an Amazon Comprehend resource. A tag is a key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key might be added to a resource to indicate its use by the sales department. 
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a specific tag associated with an Amazon Comprehend resource. 
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates information about the specified endpoint.
    public func updateEndpoint(_ input: UpdateEndpointRequest) -> EventLoopFuture<UpdateEndpointResponse> {
        return client.send(operation: "UpdateEndpoint", path: "/", httpMethod: "POST", input: input)
    }
}
