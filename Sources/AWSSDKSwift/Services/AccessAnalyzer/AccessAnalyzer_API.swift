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
Client object for interacting with AWS AccessAnalyzer service.

AWS IAM Access Analyzer helps identify potential resource-access risks by enabling you to identify any policies that grant access to an external principal. It does this by using logic-based reasoning to analyze resource-based policies in your AWS environment. An external principal can be another AWS account, a root user, an IAM user or role, a federated user, an AWS service, or an anonymous user. This guide describes the AWS IAM Access Analyzer operations that you can call programmatically. For general information about Access Analyzer, see the AWS IAM Access Analyzer section of the IAM User Guide. To start using Access Analyzer, you first need to create an analyzer.
*/
public struct AccessAnalyzer {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the AccessAnalyzer client
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
            service: "access-analyzer",
            serviceProtocol: .restjson,
            apiVersion: "2019-11-01",
            endpoint: endpoint,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            possibleErrorTypes: [AccessAnalyzerErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates an analyzer for your account.
    public func createAnalyzer(_ input: CreateAnalyzerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAnalyzerResponse> {
        return client.send(operation: "CreateAnalyzer", path: "/analyzer", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Creates an archive rule for the specified analyzer. Archive rules automatically archive findings that meet the criteria you define when you create the rule.
    @discardableResult public func createArchiveRule(_ input: CreateArchiveRuleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "CreateArchiveRule", path: "/analyzer/{analyzerName}/archive-rule", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Deletes the specified analyzer. When you delete an analyzer, Access Analyzer is disabled for the account in the current or specific Region. All findings that were generated by the analyzer are deleted. You cannot undo this action.
    @discardableResult public func deleteAnalyzer(_ input: DeleteAnalyzerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteAnalyzer", path: "/analyzer/{analyzerName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the specified archive rule.
    @discardableResult public func deleteArchiveRule(_ input: DeleteArchiveRuleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteArchiveRule", path: "/analyzer/{analyzerName}/archive-rule/{ruleName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Retrieves information about a resource that was analyzed.
    public func getAnalyzedResource(_ input: GetAnalyzedResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAnalyzedResourceResponse> {
        return client.send(operation: "GetAnalyzedResource", path: "/analyzed-resource", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves information about the specified analyzer.
    public func getAnalyzer(_ input: GetAnalyzerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAnalyzerResponse> {
        return client.send(operation: "GetAnalyzer", path: "/analyzer/{analyzerName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves information about an archive rule.
    public func getArchiveRule(_ input: GetArchiveRuleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetArchiveRuleResponse> {
        return client.send(operation: "GetArchiveRule", path: "/analyzer/{analyzerName}/archive-rule/{ruleName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves information about the specified finding.
    public func getFinding(_ input: GetFindingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFindingResponse> {
        return client.send(operation: "GetFinding", path: "/finding/{id}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves a list of resources of the specified type that have been analyzed by the specified analyzer..
    public func listAnalyzedResources(_ input: ListAnalyzedResourcesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAnalyzedResourcesResponse> {
        return client.send(operation: "ListAnalyzedResources", path: "/analyzed-resource", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list of analyzers.
    public func listAnalyzers(_ input: ListAnalyzersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAnalyzersResponse> {
        return client.send(operation: "ListAnalyzers", path: "/analyzer", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves a list of archive rules created for the specified analyzer.
    public func listArchiveRules(_ input: ListArchiveRulesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListArchiveRulesResponse> {
        return client.send(operation: "ListArchiveRules", path: "/analyzer/{analyzerName}/archive-rule", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves a list of findings generated by the specified analyzer.
    public func listFindings(_ input: ListFindingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFindingsResponse> {
        return client.send(operation: "ListFindings", path: "/finding", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list of tags applied to the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Immediately starts a scan of the policies applied to the specified resource.
    @discardableResult public func startResourceScan(_ input: StartResourceScanRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "StartResourceScan", path: "/resource/scan", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds a tag to the specified resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes a tag from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Updates the criteria and values for the specified archive rule.
    @discardableResult public func updateArchiveRule(_ input: UpdateArchiveRuleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateArchiveRule", path: "/analyzer/{analyzerName}/archive-rule/{ruleName}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates the status for the specified findings.
    @discardableResult public func updateFindings(_ input: UpdateFindingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateFindings", path: "/finding", httpMethod: "PUT", input: input, on: eventLoop)
    }
}
