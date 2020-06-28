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
Client object for interacting with AWS IoTJobsDataPlane service.

AWS IoT Jobs is a service that allows you to define a set of jobs — remote operations that are sent to and executed on one or more devices connected to AWS IoT. For example, you can define a job that instructs a set of devices to download and install application or firmware updates, reboot, rotate certificates, or perform remote troubleshooting operations.  To create a job, you make a job document which is a description of the remote operations to be performed, and you specify a list of targets that should perform the operations. The targets can be individual things, thing groups or both.  AWS IoT Jobs sends a message to inform the targets that a job is available. The target starts the execution of the job by downloading the job document, performing the operations it specifies, and reporting its progress to AWS IoT. The Jobs service provides commands to track the progress of a job on a specific target and for all the targets of the job
*/
public struct IoTJobsDataPlane {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the IoTJobsDataPlane client
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
            service: "data.jobs.iot",
            signingName: "iot-jobs-data",
            serviceProtocol: .restjson,
            apiVersion: "2017-09-29",
            endpoint: endpoint,
            possibleErrorTypes: [IoTJobsDataPlaneErrorType.self]
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

    ///  Gets details of a job execution.
    public func describeJobExecution(_ input: DescribeJobExecutionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobExecutionResponse> {
        return client.execute(operation: "DescribeJobExecution", path: "/things/{thingName}/jobs/{jobId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets the list of all jobs for a thing that are not in a terminal status.
    public func getPendingJobExecutions(_ input: GetPendingJobExecutionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPendingJobExecutionsResponse> {
        return client.execute(operation: "GetPendingJobExecutions", path: "/things/{thingName}/jobs", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.
    public func startNextPendingJobExecution(_ input: StartNextPendingJobExecutionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartNextPendingJobExecutionResponse> {
        return client.execute(operation: "StartNextPendingJobExecution", path: "/things/{thingName}/jobs/$next", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the status of a job execution.
    public func updateJobExecution(_ input: UpdateJobExecutionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateJobExecutionResponse> {
        return client.execute(operation: "UpdateJobExecution", path: "/things/{thingName}/jobs/{jobId}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
