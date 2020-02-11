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
Client object for interacting with AWS Mobile service.

 AWS Mobile Service provides mobile app and website developers with capabilities required to configure AWS resources and bootstrap their developer desktop projects with the necessary SDKs, constants, tools and samples to make use of those resources. 
*/
public struct Mobile {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Mobile client
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
            service: "mobile",
            signingName: "AWSMobileHubService",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-07-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MobileErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///   Creates an AWS Mobile Hub project. 
    public func createProject(_ input: CreateProjectRequest) -> EventLoopFuture<CreateProjectResult> {
        return client.send(operation: "CreateProject", path: "/projects", httpMethod: "POST", input: input)
    }

    ///   Delets a project in AWS Mobile Hub. 
    public func deleteProject(_ input: DeleteProjectRequest) -> EventLoopFuture<DeleteProjectResult> {
        return client.send(operation: "DeleteProject", path: "/projects/{projectId}", httpMethod: "DELETE", input: input)
    }

    ///   Get the bundle details for the requested bundle id. 
    public func describeBundle(_ input: DescribeBundleRequest) -> EventLoopFuture<DescribeBundleResult> {
        return client.send(operation: "DescribeBundle", path: "/bundles/{bundleId}", httpMethod: "GET", input: input)
    }

    ///   Gets details about a project in AWS Mobile Hub. 
    public func describeProject(_ input: DescribeProjectRequest) -> EventLoopFuture<DescribeProjectResult> {
        return client.send(operation: "DescribeProject", path: "/project", httpMethod: "GET", input: input)
    }

    ///   Generates customized software development kit (SDK) and or tool packages used to integrate mobile web or mobile app clients with backend AWS resources. 
    public func exportBundle(_ input: ExportBundleRequest) -> EventLoopFuture<ExportBundleResult> {
        return client.send(operation: "ExportBundle", path: "/bundles/{bundleId}", httpMethod: "POST", input: input)
    }

    ///   Exports project configuration to a snapshot which can be downloaded and shared. Note that mobile app push credentials are encrypted in exported projects, so they can only be shared successfully within the same AWS account. 
    public func exportProject(_ input: ExportProjectRequest) -> EventLoopFuture<ExportProjectResult> {
        return client.send(operation: "ExportProject", path: "/exports/{projectId}", httpMethod: "POST", input: input)
    }

    ///   List all available bundles. 
    public func listBundles(_ input: ListBundlesRequest) -> EventLoopFuture<ListBundlesResult> {
        return client.send(operation: "ListBundles", path: "/bundles", httpMethod: "GET", input: input)
    }

    ///   Lists projects in AWS Mobile Hub. 
    public func listProjects(_ input: ListProjectsRequest) -> EventLoopFuture<ListProjectsResult> {
        return client.send(operation: "ListProjects", path: "/projects", httpMethod: "GET", input: input)
    }

    ///   Update an existing project. 
    public func updateProject(_ input: UpdateProjectRequest) -> EventLoopFuture<UpdateProjectResult> {
        return client.send(operation: "UpdateProject", path: "/update", httpMethod: "POST", input: input)
    }
}
