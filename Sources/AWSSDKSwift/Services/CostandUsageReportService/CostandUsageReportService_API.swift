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
Client object for interacting with AWS CostandUsageReportService service.

The AWS Cost and Usage Report API enables you to programmatically create, query, and delete AWS Cost and Usage report definitions. AWS Cost and Usage reports track the monthly AWS costs and usage associated with your AWS account. The report contains line items for each unique combination of AWS product, usage type, and operation that your AWS account uses. You can configure the AWS Cost and Usage report to show only the data that you want, using the AWS Cost and Usage API. Service Endpoint The AWS Cost and Usage Report API provides the following endpoint:   cur.us-east-1.amazonaws.com  
*/
public struct CostandUsageReportService {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the CostandUsageReportService client
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
            amzTarget: "AWSOrigamiServiceGatewayService",
            service: "cur",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-01-06",
            endpoint: endpoint,
            possibleErrorTypes: [CostandUsageReportServiceErrorType.self]
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

    ///  Deletes the specified report.
    public func deleteReportDefinition(_ input: DeleteReportDefinitionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReportDefinitionResponse> {
        return client.send(operation: "DeleteReportDefinition", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the AWS Cost and Usage reports available to this account.
    public func describeReportDefinitions(_ input: DescribeReportDefinitionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReportDefinitionsResponse> {
        return client.send(operation: "DescribeReportDefinitions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Allows you to programatically update your report preferences.
    public func modifyReportDefinition(_ input: ModifyReportDefinitionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyReportDefinitionResponse> {
        return client.send(operation: "ModifyReportDefinition", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new report using the description that you provide.
    public func putReportDefinition(_ input: PutReportDefinitionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutReportDefinitionResponse> {
        return client.send(operation: "PutReportDefinition", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
