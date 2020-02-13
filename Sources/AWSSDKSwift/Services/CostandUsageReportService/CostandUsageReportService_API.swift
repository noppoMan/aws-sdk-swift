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
Client object for interacting with AWS CostandUsageReportService service.

The AWS Cost and Usage Report API enables you to programmatically create, query, and delete AWS Cost and Usage report definitions. AWS Cost and Usage reports track the monthly AWS costs and usage associated with your AWS account. The report contains line items for each unique combination of AWS product, usage type, and operation that your AWS account uses. You can configure the AWS Cost and Usage report to show only the data that you want, using the AWS Cost and Usage API. Service Endpoint The AWS Cost and Usage Report API provides the following endpoint:   cur.us-east-1.amazonaws.com  
*/
public struct CostandUsageReportService {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the CostandUsageReportService client
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
            amzTarget: "AWSOrigamiServiceGatewayService",
            service: "cur",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-01-06",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [CostandUsageReportServiceErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Deletes the specified report.
    public func deleteReportDefinition(_ input: DeleteReportDefinitionRequest) -> EventLoopFuture<DeleteReportDefinitionResponse> {
        return client.send(operation: "DeleteReportDefinition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the AWS Cost and Usage reports available to this account.
    public func describeReportDefinitions(_ input: DescribeReportDefinitionsRequest) -> EventLoopFuture<DescribeReportDefinitionsResponse> {
        return client.send(operation: "DescribeReportDefinitions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Allows you to programatically update your report preferences.
    public func modifyReportDefinition(_ input: ModifyReportDefinitionRequest) -> EventLoopFuture<ModifyReportDefinitionResponse> {
        return client.send(operation: "ModifyReportDefinition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new report using the description that you provide.
    public func putReportDefinition(_ input: PutReportDefinitionRequest) -> EventLoopFuture<PutReportDefinitionResponse> {
        return client.send(operation: "PutReportDefinition", path: "/", httpMethod: "POST", input: input)
    }
}
