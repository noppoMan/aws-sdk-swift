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
Client object for interacting with AWS ServerlessApplicationRepository service.

The AWS Serverless Application Repository makes it easy for developers and enterprises to quickly find
 and deploy serverless applications in the AWS Cloud. For more information about serverless applications,
 see Serverless Computing and Applications on the AWS website.The AWS Serverless Application Repository is deeply integrated with the AWS Lambda console, so that developers of 
 all levels can get started with serverless computing without needing to learn anything new. You can use category 
 keywords to browse for applications such as web and mobile backends, data processing applications, or chatbots. 
 You can also search for applications by name, publisher, or event source. To use an application, you simply choose it, 
 configure any required fields, and deploy it with a few clicks. You can also easily publish applications, sharing them publicly with the community at large, or privately
 within your team or across your organization. To publish a serverless application (or app), you can use the
 AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs to upload the code. Along with the
 code, you upload a simple manifest file, also known as the AWS Serverless Application Model (AWS SAM) template.
 For more information about AWS SAM, see AWS Serverless Application Model (AWS SAM) on the AWS Labs
 GitHub repository.The AWS Serverless Application Repository Developer Guide contains more information about the two developer
 experiences available:
 
 Consuming Applications – Browse for applications and view information about them, including
 source code and readme files. Also install, configure, and deploy applications of your choosing. 
 Publishing Applications – Configure and upload applications to make them available to other
 developers, and publish new versions of applications. 
 
 
*/
public struct ServerlessApplicationRepository {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the ServerlessApplicationRepository client
    /// - parameters:
    ///     - credentialProvider: Object providing credential to sign requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        credentialProvider credentialProviderFactory: CredentialProviderFactory = .default,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "serverlessrepo",
            serviceProtocol: .restjson,
            apiVersion: "2017-09-08",
            endpoint: endpoint,
            possibleErrorTypes: [ServerlessApplicationRepositoryErrorType.self]
        )
        self.client = AWSClient(
            credentialProvider: credentialProviderFactory,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            httpClientProvider: httpClientProvider
        )
    }
    
    public func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Creates an application, optionally including an AWS SAM file to create the first application version in the same call.
    public func createApplication(_ input: CreateApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationResponse> {
        return client.execute(operation: "CreateApplication", path: "/applications", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates an application version.
    public func createApplicationVersion(_ input: CreateApplicationVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationVersionResponse> {
        return client.execute(operation: "CreateApplicationVersion", path: "/applications/{applicationId}/versions/{semanticVersion}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates an AWS CloudFormation change set for the given application.
    public func createCloudFormationChangeSet(_ input: CreateCloudFormationChangeSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudFormationChangeSetResponse> {
        return client.execute(operation: "CreateCloudFormationChangeSet", path: "/applications/{applicationId}/changesets", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates an AWS CloudFormation template.
    public func createCloudFormationTemplate(_ input: CreateCloudFormationTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudFormationTemplateResponse> {
        return client.execute(operation: "CreateCloudFormationTemplate", path: "/applications/{applicationId}/templates", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the specified application.
    @discardableResult public func deleteApplication(_ input: DeleteApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteApplication", path: "/applications/{applicationId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets the specified application.
    public func getApplication(_ input: GetApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetApplicationResponse> {
        return client.execute(operation: "GetApplication", path: "/applications/{applicationId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves the policy for the application.
    public func getApplicationPolicy(_ input: GetApplicationPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetApplicationPolicyResponse> {
        return client.execute(operation: "GetApplicationPolicy", path: "/applications/{applicationId}/policy", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets the specified AWS CloudFormation template.
    public func getCloudFormationTemplate(_ input: GetCloudFormationTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCloudFormationTemplateResponse> {
        return client.execute(operation: "GetCloudFormationTemplate", path: "/applications/{applicationId}/templates/{templateId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves the list of applications nested in the containing application.
    public func listApplicationDependencies(_ input: ListApplicationDependenciesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationDependenciesResponse> {
        return client.execute(operation: "ListApplicationDependencies", path: "/applications/{applicationId}/dependencies", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists versions for the specified application.
    public func listApplicationVersions(_ input: ListApplicationVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationVersionsResponse> {
        return client.execute(operation: "ListApplicationVersions", path: "/applications/{applicationId}/versions", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists applications owned by the requester.
    public func listApplications(_ input: ListApplicationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationsResponse> {
        return client.execute(operation: "ListApplications", path: "/applications", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Sets the permission policy for an application. For the list of actions supported for this operation, see
    ///   Application 
    ///   Permissions
    ///   .
    public func putApplicationPolicy(_ input: PutApplicationPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutApplicationPolicyResponse> {
        return client.execute(operation: "PutApplicationPolicy", path: "/applications/{applicationId}/policy", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Unshares an application from an AWS Organization.This operation can be called only from the organization's master account.
    @discardableResult public func unshareApplication(_ input: UnshareApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "UnshareApplication", path: "/applications/{applicationId}/unshare", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the specified application.
    public func updateApplication(_ input: UpdateApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApplicationResponse> {
        return client.execute(operation: "UpdateApplication", path: "/applications/{applicationId}", httpMethod: "PATCH", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
