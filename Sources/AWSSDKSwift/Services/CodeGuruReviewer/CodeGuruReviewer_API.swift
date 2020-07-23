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
Client object for interacting with AWS CodeGuruReviewer service.

This section provides documentation for the Amazon CodeGuru Reviewer API operations. CodeGuru Reviewer is a service that uses program analysis and machine learning to detect potential defects that are difficult for developers to find and recommends fixes in your Java code. By proactively detecting and providing recommendations for addressing code defects and implementing best practices, CodeGuru Reviewer improves the overall quality and maintainability of your code base during the code review stage. For more information about CodeGuru Reviewer, see the  Amazon CodeGuru Reviewer User Guide. 
*/
public struct CodeGuruReviewer {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the CodeGuruReviewer client
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
            service: "codeguru-reviewer",
            serviceProtocol: .restjson,
            apiVersion: "2019-09-19",
            endpoint: endpoint,
            possibleErrorTypes: [CodeGuruReviewerErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///   Use to associate an AWS CodeCommit repository or a repostory managed by AWS CodeStar Connections with Amazon CodeGuru Reviewer. When you associate a repository, CodeGuru Reviewer reviews source code changes in the repository's pull requests and provides automatic recommendations. You can view recommendations using the CodeGuru Reviewer console. For more information, see Recommendations in Amazon CodeGuru Reviewer in the Amazon CodeGuru Reviewer User Guide.  If you associate a CodeCommit repository, it must be in the same AWS Region and AWS account where its CodeGuru Reviewer code reviews are configured.  Bitbucket and GitHub Enterprise Server repositories are managed by AWS CodeStar Connections to connect to CodeGuru Reviewer. For more information, see Connect to a repository source provider in the Amazon CodeGuru Reviewer User Guide.    You cannot use the CodeGuru Reviewer SDK or the AWS CLI to associate a GitHub repository with Amazon CodeGuru Reviewer. To associate a GitHub repository, use the console. For more information, see Getting started with CodeGuru Reviewer in the CodeGuru Reviewer User Guide.  
    public func associateRepository(_ input: AssociateRepositoryRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AssociateRepositoryResponse> {
        return client.execute(operation: "AssociateRepository", path: "/associations", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns the metadata associated with the code review along with its status.
    public func describeCodeReview(_ input: DescribeCodeReviewRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeCodeReviewResponse> {
        return client.execute(operation: "DescribeCodeReview", path: "/codereviews/{CodeReviewArn}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Describes the customer feedback for a CodeGuru Reviewer recommendation. 
    public func describeRecommendationFeedback(_ input: DescribeRecommendationFeedbackRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeRecommendationFeedbackResponse> {
        return client.execute(operation: "DescribeRecommendationFeedback", path: "/feedback/{CodeReviewArn}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns a  RepositoryAssociation  object that contains information about the requested repository association. 
    public func describeRepositoryAssociation(_ input: DescribeRepositoryAssociationRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeRepositoryAssociationResponse> {
        return client.execute(operation: "DescribeRepositoryAssociation", path: "/associations/{AssociationArn}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes the association between Amazon CodeGuru Reviewer and a repository.
    public func disassociateRepository(_ input: DisassociateRepositoryRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DisassociateRepositoryResponse> {
        return client.execute(operation: "DisassociateRepository", path: "/associations/{AssociationArn}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Lists all the code reviews that the customer has created in the past 90 days. 
    public func listCodeReviews(_ input: ListCodeReviewsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListCodeReviewsResponse> {
        return client.execute(operation: "ListCodeReviews", path: "/codereviews", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns a list of  RecommendationFeedbackSummary  objects that contain customer recommendation feedback for all CodeGuru Reviewer users. 
    public func listRecommendationFeedback(_ input: ListRecommendationFeedbackRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListRecommendationFeedbackResponse> {
        return client.execute(operation: "ListRecommendationFeedback", path: "/feedback/{CodeReviewArn}/RecommendationFeedback", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns the list of all recommendations for a completed code review. 
    public func listRecommendations(_ input: ListRecommendationsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListRecommendationsResponse> {
        return client.execute(operation: "ListRecommendations", path: "/codereviews/{CodeReviewArn}/Recommendations", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns a list of  RepositoryAssociationSummary  objects that contain summary information about a repository association. You can filter the returned list by  ProviderType ,  Name ,  State , and  Owner . 
    public func listRepositoryAssociations(_ input: ListRepositoryAssociationsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListRepositoryAssociationsResponse> {
        return client.execute(operation: "ListRepositoryAssociations", path: "/associations", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Stores customer feedback for a CodeGuru Reviewer recommendation. When this API is called again with different reactions the previous feedback is overwritten. 
    public func putRecommendationFeedback(_ input: PutRecommendationFeedbackRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutRecommendationFeedbackResponse> {
        return client.execute(operation: "PutRecommendationFeedback", path: "/feedback", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
