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
Client object for interacting with AWS Cloud9 service.

AWS Cloud9 AWS Cloud9 is a collection of tools that you can use to code, build, run, test, debug, and release software in the cloud. For more information about AWS Cloud9, see the AWS Cloud9 User Guide. AWS Cloud9 supports these operations:    CreateEnvironmentEC2: Creates an AWS Cloud9 development environment, launches an Amazon EC2 instance, and then connects from the instance to the environment.    CreateEnvironmentMembership: Adds an environment member to an environment.    DeleteEnvironment: Deletes an environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.    DeleteEnvironmentMembership: Deletes an environment member from an environment.    DescribeEnvironmentMemberships: Gets information about environment members for an environment.    DescribeEnvironments: Gets information about environments.    DescribeEnvironmentStatus: Gets status information for an environment.    ListEnvironments: Gets a list of environment identifiers.    ListTagsForResource: Gets the tags for an environment.    TagResource: Adds tags to an environment.    UntagResource: Removes tags from an environment.    UpdateEnvironment: Changes the settings of an existing environment.    UpdateEnvironmentMembership: Changes the settings of an existing environment member for an environment.  
*/
public struct Cloud9 {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Cloud9 client
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
        httpClientProvider: AWSClient.HTTPClientProvider = .useAWSClientShared
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AWSCloud9WorkspaceManagementService",
            service: "cloud9",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-09-23",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [Cloud9ErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates an AWS Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.
    public func createEnvironmentEC2(_ input: CreateEnvironmentEC2Request) -> EventLoopFuture<CreateEnvironmentEC2Result> {
        return client.send(operation: "CreateEnvironmentEC2", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds an environment member to an AWS Cloud9 development environment.
    public func createEnvironmentMembership(_ input: CreateEnvironmentMembershipRequest) -> EventLoopFuture<CreateEnvironmentMembershipResult> {
        return client.send(operation: "CreateEnvironmentMembership", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an AWS Cloud9 development environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.
    public func deleteEnvironment(_ input: DeleteEnvironmentRequest) -> EventLoopFuture<DeleteEnvironmentResult> {
        return client.send(operation: "DeleteEnvironment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an environment member from an AWS Cloud9 development environment.
    public func deleteEnvironmentMembership(_ input: DeleteEnvironmentMembershipRequest) -> EventLoopFuture<DeleteEnvironmentMembershipResult> {
        return client.send(operation: "DeleteEnvironmentMembership", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about environment members for an AWS Cloud9 development environment.
    public func describeEnvironmentMemberships(_ input: DescribeEnvironmentMembershipsRequest) -> EventLoopFuture<DescribeEnvironmentMembershipsResult> {
        return client.send(operation: "DescribeEnvironmentMemberships", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets status information for an AWS Cloud9 development environment.
    public func describeEnvironmentStatus(_ input: DescribeEnvironmentStatusRequest) -> EventLoopFuture<DescribeEnvironmentStatusResult> {
        return client.send(operation: "DescribeEnvironmentStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about AWS Cloud9 development environments.
    public func describeEnvironments(_ input: DescribeEnvironmentsRequest) -> EventLoopFuture<DescribeEnvironmentsResult> {
        return client.send(operation: "DescribeEnvironments", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of AWS Cloud9 development environment identifiers.
    public func listEnvironments(_ input: ListEnvironmentsRequest) -> EventLoopFuture<ListEnvironmentsResult> {
        return client.send(operation: "ListEnvironments", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the tags associated with an AWS Cloud9 development environment.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds tags to an AWS Cloud9 development environment.  Tags that you add to an AWS Cloud9 environment by using this method will NOT be automatically propagated to underlying resources. 
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes tags from an AWS Cloud9 development environment.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Changes the settings of an existing AWS Cloud9 development environment.
    public func updateEnvironment(_ input: UpdateEnvironmentRequest) -> EventLoopFuture<UpdateEnvironmentResult> {
        return client.send(operation: "UpdateEnvironment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Changes the settings of an existing environment member for an AWS Cloud9 development environment.
    public func updateEnvironmentMembership(_ input: UpdateEnvironmentMembershipRequest) -> EventLoopFuture<UpdateEnvironmentMembershipResult> {
        return client.send(operation: "UpdateEnvironmentMembership", path: "/", httpMethod: "POST", input: input)
    }
}
