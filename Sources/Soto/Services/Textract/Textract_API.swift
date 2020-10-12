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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import SotoCore

/*
Client object for interacting with AWS Textract service.

Amazon Textract detects and analyzes text in documents and converts it into machine-readable text. This is the API reference documentation for Amazon Textract.
*/
public struct Textract: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Textract client
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
            amzTarget: "Textract",
            service: "textract",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-06-27",
            endpoint: endpoint,
            possibleErrorTypes: [TextractErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }
    
    // MARK: API Calls

    ///  Analyzes an input document for relationships between detected items.  The types of information returned are as follows:    Form data (key-value pairs). The related information is returned in two Block objects, each of type KEY_VALUE_SET: a KEY Block object and a VALUE Block object. For example, Name: Ana Silva Carolina contains a key and value. Name: is the key. Ana Silva Carolina is the value.   Table and table cell data. A TABLE Block object contains information about a detected table. A CELL Block object is returned for each cell in a table.   Lines and words of text. A LINE Block object contains one or more WORD Block objects. All lines and words that are detected in the document are returned (including text that doesn't have a relationship with the value of FeatureTypes).    Selection elements such as check boxes and option buttons (radio buttons) can be detected in form data and in tables. A SELECTION_ELEMENT Block object contains information about a selection element, including the selection status. You can choose which type of analysis to perform by specifying the FeatureTypes list.  The output is returned in a list of Block objects.  AnalyzeDocument is a synchronous operation. To analyze documents asynchronously, use StartDocumentAnalysis. For more information, see Document Text Analysis.
    public func analyzeDocument(_ input: AnalyzeDocumentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AnalyzeDocumentResponse> {
        return self.client.execute(operation: "AnalyzeDocument", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Detects text in the input document. Amazon Textract can detect lines of text and the words that make up a line of text. The input document must be an image in JPEG or PNG format. DetectDocumentText returns the detected text in an array of Block objects.  Each document page has as an associated Block of type PAGE. Each PAGE Block object is the parent of LINE Block objects that represent the lines of detected text on a page. A LINE Block object is a parent for each word that makes up the line. Words are represented by Block objects of type WORD.  DetectDocumentText is a synchronous operation. To analyze documents asynchronously, use StartDocumentTextDetection. For more information, see Document Text Detection.
    public func detectDocumentText(_ input: DetectDocumentTextRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DetectDocumentTextResponse> {
        return self.client.execute(operation: "DetectDocumentText", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the results for an Amazon Textract asynchronous operation that analyzes text in a document. You start asynchronous text analysis by calling StartDocumentAnalysis, which returns a job identifier (JobId). When the text analysis operation finishes, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that's registered in the initial call to StartDocumentAnalysis. To get the results of the text-detection operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetDocumentAnalysis, and pass the job identifier (JobId) from the initial call to StartDocumentAnalysis.  GetDocumentAnalysis returns an array of Block objects. The following types of information are returned:    Form data (key-value pairs). The related information is returned in two Block objects, each of type KEY_VALUE_SET: a KEY Block object and a VALUE Block object. For example, Name: Ana Silva Carolina contains a key and value. Name: is the key. Ana Silva Carolina is the value.   Table and table cell data. A TABLE Block object contains information about a detected table. A CELL Block object is returned for each cell in a table.   Lines and words of text. A LINE Block object contains one or more WORD Block objects. All lines and words that are detected in the document are returned (including text that doesn't have a relationship with the value of the StartDocumentAnalysis FeatureTypes input parameter).    Selection elements such as check boxes and option buttons (radio buttons) can be detected in form data and in tables. A SELECTION_ELEMENT Block object contains information about a selection element, including the selection status. Use the MaxResults parameter to limit the number of blocks that are returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetDocumentAnalysis, and populate the NextToken request parameter with the token value that's returned from the previous call to GetDocumentAnalysis. For more information, see Document Text Analysis.
    public func getDocumentAnalysis(_ input: GetDocumentAnalysisRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDocumentAnalysisResponse> {
        return self.client.execute(operation: "GetDocumentAnalysis", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the results for an Amazon Textract asynchronous operation that detects text in a document. Amazon Textract can detect lines of text and the words that make up a line of text. You start asynchronous text detection by calling StartDocumentTextDetection, which returns a job identifier (JobId). When the text detection operation finishes, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that's registered in the initial call to StartDocumentTextDetection. To get the results of the text-detection operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetDocumentTextDetection, and pass the job identifier (JobId) from the initial call to StartDocumentTextDetection.  GetDocumentTextDetection returns an array of Block objects.  Each document page has as an associated Block of type PAGE. Each PAGE Block object is the parent of LINE Block objects that represent the lines of detected text on a page. A LINE Block object is a parent for each word that makes up the line. Words are represented by Block objects of type WORD. Use the MaxResults parameter to limit the number of blocks that are returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetDocumentTextDetection, and populate the NextToken request parameter with the token value that's returned from the previous call to GetDocumentTextDetection. For more information, see Document Text Detection.
    public func getDocumentTextDetection(_ input: GetDocumentTextDetectionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDocumentTextDetectionResponse> {
        return self.client.execute(operation: "GetDocumentTextDetection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts the asynchronous analysis of an input document for relationships between detected items such as key-value pairs, tables, and selection elements.  StartDocumentAnalysis can analyze text in documents that are in JPEG, PNG, and PDF format. The documents are stored in an Amazon S3 bucket. Use DocumentLocation to specify the bucket name and file name of the document.   StartDocumentAnalysis returns a job identifier (JobId) that you use to get the results of the operation. When text analysis is finished, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that you specify in NotificationChannel. To get the results of the text analysis operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetDocumentAnalysis, and pass the job identifier (JobId) from the initial call to StartDocumentAnalysis. For more information, see Document Text Analysis.
    public func startDocumentAnalysis(_ input: StartDocumentAnalysisRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartDocumentAnalysisResponse> {
        return self.client.execute(operation: "StartDocumentAnalysis", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts the asynchronous detection of text in a document. Amazon Textract can detect lines of text and the words that make up a line of text.  StartDocumentTextDetection can analyze text in documents that are in JPEG, PNG, and PDF format. The documents are stored in an Amazon S3 bucket. Use DocumentLocation to specify the bucket name and file name of the document.   StartTextDetection returns a job identifier (JobId) that you use to get the results of the operation. When text detection is finished, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that you specify in NotificationChannel. To get the results of the text detection operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetDocumentTextDetection, and pass the job identifier (JobId) from the initial call to StartDocumentTextDetection. For more information, see Document Text Detection.
    public func startDocumentTextDetection(_ input: StartDocumentTextDetectionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartDocumentTextDetectionResponse> {
        return self.client.execute(operation: "StartDocumentTextDetection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }
}

extension Textract {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Textract, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
