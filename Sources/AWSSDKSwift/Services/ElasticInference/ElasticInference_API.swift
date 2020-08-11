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
Client object for interacting with AWS ElasticInference service.

 Elastic Inference public APIs. 
*/
public struct ElasticInference: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the ElasticInference client
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
            service: "api.elastic-inference",
            signingName: "elastic-inference",
            serviceProtocol: .restjson,
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            serviceEndpoints: ["ap-northeast-1": "api.elastic-inference.ap-northeast-1.amazonaws.com", "ap-northeast-2": "api.elastic-inference.ap-northeast-2.amazonaws.com", "eu-west-1": "api.elastic-inference.eu-west-1.amazonaws.com", "us-east-1": "api.elastic-inference.us-east-1.amazonaws.com", "us-east-2": "api.elastic-inference.us-east-2.amazonaws.com", "us-west-2": "api.elastic-inference.us-west-2.amazonaws.com"],
            errorType: ElasticInferenceErrorType.self,
            timeout: timeout
        )
    }
    
    public func transform(_ transform:(AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, context: transform(self.context))
    }
    
    //MARK: API Calls

    ///   Describes the locations in which a given accelerator type or set of types is present in a given region. 
    public func describeAcceleratorOfferings(_ input: DescribeAcceleratorOfferingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAcceleratorOfferingsResponse> {
        return client.execute(operation: "DescribeAcceleratorOfferings", path: "/describe-accelerator-offerings", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Describes the accelerator types available in a given region, as well as their characteristics, such as memory and throughput. 
    public func describeAcceleratorTypes(_ input: DescribeAcceleratorTypesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAcceleratorTypesResponse> {
        return client.execute(operation: "DescribeAcceleratorTypes", path: "/describe-accelerator-types", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Describes information over a provided set of accelerators belonging to an account. 
    public func describeAccelerators(_ input: DescribeAcceleratorsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAcceleratorsResponse> {
        return client.execute(operation: "DescribeAccelerators", path: "/describe-accelerators", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Returns all tags of an Elastic Inference Accelerator. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResult> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Adds the specified tags to an Elastic Inference Accelerator. 
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResult> {
        return client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///   Removes the specified tags from an Elastic Inference Accelerator. 
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResult> {
        return client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceContext: context, input: input, on: eventLoop)
    }
}

extension ElasticInference {
    init(client: AWSClient, context: AWSServiceContext) {
        self.client = client
        self.context = context
    }
}
