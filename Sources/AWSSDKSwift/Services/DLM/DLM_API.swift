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
Client object for interacting with AWS DLM service.

Amazon Data Lifecycle Manager With Amazon Data Lifecycle Manager, you can manage the lifecycle of your AWS resources. You create lifecycle policies, which are used to automate operations on the specified resources. Amazon DLM supports Amazon EBS volumes and snapshots. For information about using Amazon DLM with Amazon EBS, see Automating the Amazon EBS Snapshot Lifecycle in the Amazon EC2 User Guide.
*/
public struct DLM {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the DLM client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "dlm",
            serviceProtocol: .restjson,
            apiVersion: "2018-01-12",
            endpoint: endpoint,
            possibleErrorTypes: [DLMErrorType.self]
        )
    }
    
    //MARK: API Calls

    ///  Creates a policy to manage the lifecycle of the specified AWS resources. You can create up to 100 lifecycle policies.
    public func createLifecyclePolicy(_ input: CreateLifecyclePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLifecyclePolicyResponse> {
        return client.execute(operation: "CreateLifecyclePolicy", path: "/policies", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the specified lifecycle policy and halts the automated operations that the policy specified.
    public func deleteLifecyclePolicy(_ input: DeleteLifecyclePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLifecyclePolicyResponse> {
        return client.execute(operation: "DeleteLifecyclePolicy", path: "/policies/{policyId}/", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets summary information about all or the specified data lifecycle policies. To get complete information about a policy, use GetLifecyclePolicy.
    public func getLifecyclePolicies(_ input: GetLifecyclePoliciesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLifecyclePoliciesResponse> {
        return client.execute(operation: "GetLifecyclePolicies", path: "/policies", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets detailed information about the specified lifecycle policy.
    public func getLifecyclePolicy(_ input: GetLifecyclePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLifecyclePolicyResponse> {
        return client.execute(operation: "GetLifecyclePolicy", path: "/policies/{policyId}/", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Adds the specified tags to the specified resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes the specified tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the specified lifecycle policy.
    public func updateLifecyclePolicy(_ input: UpdateLifecyclePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLifecyclePolicyResponse> {
        return client.execute(operation: "UpdateLifecyclePolicy", path: "/policies/{policyId}", httpMethod: "PATCH", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
