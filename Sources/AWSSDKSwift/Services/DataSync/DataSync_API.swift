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
Client object for interacting with AWS DataSync service.

AWS DataSync AWS DataSync is a managed data transfer service that makes it simpler for you to automate moving data between on-premises storage and Amazon Simple Storage Service (Amazon S3) or Amazon Elastic File System (Amazon EFS).  This API interface reference for AWS DataSync contains documentation for a programming interface that you can use to manage AWS DataSync.
*/
public struct DataSync {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the DataSync client
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
            amzTarget: "FmrsService",
            service: "datasync",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-11-09",
            endpoint: endpoint,
            possibleErrorTypes: [DataSyncErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Cancels execution of a task.  When you cancel a task execution, the transfer of some files are abruptly interrupted. The contents of files that are transferred to the destination might be incomplete or inconsistent with the source files. However, if you start a new task execution on the same task and you allow the task execution to complete, file content on the destination is complete and consistent. This applies to other unexpected failures that interrupt a task execution. In all of these cases, AWS DataSync successfully complete the transfer when you start the next task execution.
    public func cancelTaskExecution(_ input: CancelTaskExecutionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelTaskExecutionResponse> {
        return client.execute(operation: "CancelTaskExecution", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Activates an AWS DataSync agent that you have deployed on your host. The activation process associates your agent with your account. In the activation process, you specify information such as the AWS Region that you want to activate the agent in. You activate the agent in the AWS Region where your target locations (in Amazon S3 or Amazon EFS) reside. Your tasks are created in this AWS Region. You can activate the agent in a VPC (Virtual private Cloud) or provide the agent access to a VPC endpoint so you can run tasks without going over the public Internet. You can use an agent for more than one location. If a task uses multiple agents, all of them need to have status AVAILABLE for the task to run. If you use multiple agents for a source location, the status of all the agents must be AVAILABLE for the task to run.  Agents are automatically updated by AWS on a regular basis, using a mechanism that ensures minimal interruption to your tasks. 
    public func createAgent(_ input: CreateAgentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAgentResponse> {
        return client.execute(operation: "CreateAgent", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates an endpoint for an Amazon EFS file system.
    public func createLocationEfs(_ input: CreateLocationEfsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLocationEfsResponse> {
        return client.execute(operation: "CreateLocationEfs", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates an endpoint for an Amazon FSx for Windows file system.
    public func createLocationFsxWindows(_ input: CreateLocationFsxWindowsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLocationFsxWindowsResponse> {
        return client.execute(operation: "CreateLocationFsxWindows", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Defines a file system on a Network File System (NFS) server that can be read from or written to
    public func createLocationNfs(_ input: CreateLocationNfsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLocationNfsResponse> {
        return client.execute(operation: "CreateLocationNfs", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates an endpoint for an Amazon S3 bucket. For AWS DataSync to access a destination S3 bucket, it needs an AWS Identity and Access Management (IAM) role that has the required permissions. You can set up the required permissions by creating an IAM policy that grants the required permissions and attaching the policy to the role. An example of such a policy is shown in the examples section. For more information, see https://docs.aws.amazon.com/datasync/latest/userguide/working-with-locations.html#create-s3-location in the AWS DataSync User Guide. 
    public func createLocationS3(_ input: CreateLocationS3Request, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLocationS3Response> {
        return client.execute(operation: "CreateLocationS3", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Defines a file system on an Server Message Block (SMB) server that can be read from or written to.
    public func createLocationSmb(_ input: CreateLocationSmbRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLocationSmbResponse> {
        return client.execute(operation: "CreateLocationSmb", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a task. A task is a set of two locations (source and destination) and a set of Options that you use to control the behavior of a task. If you don't specify Options when you create a task, AWS DataSync populates them with service defaults. When you create a task, it first enters the CREATING state. During CREATING AWS DataSync attempts to mount the on-premises Network File System (NFS) location. The task transitions to the AVAILABLE state without waiting for the AWS location to become mounted. If required, AWS DataSync mounts the AWS location before each task execution. If an agent that is associated with a source (NFS) location goes offline, the task transitions to the UNAVAILABLE status. If the status of the task remains in the CREATING status for more than a few minutes, it means that your agent might be having trouble mounting the source NFS file system. Check the task's ErrorCode and ErrorDetail. Mount issues are often caused by either a misconfigured firewall or a mistyped NFS server host name.
    public func createTask(_ input: CreateTaskRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskResponse> {
        return client.execute(operation: "CreateTask", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes an agent. To specify which agent to delete, use the Amazon Resource Name (ARN) of the agent in your request. The operation disassociates the agent from your AWS account. However, it doesn't delete the agent virtual machine (VM) from your on-premises environment.
    public func deleteAgent(_ input: DeleteAgentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAgentResponse> {
        return client.execute(operation: "DeleteAgent", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the configuration of a location used by AWS DataSync. 
    public func deleteLocation(_ input: DeleteLocationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLocationResponse> {
        return client.execute(operation: "DeleteLocation", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a task.
    public func deleteTask(_ input: DeleteTaskRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTaskResponse> {
        return client.execute(operation: "DeleteTask", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns metadata such as the name, the network interfaces, and the status (that is, whether the agent is running or not) for an agent. To specify which agent to describe, use the Amazon Resource Name (ARN) of the agent in your request. 
    public func describeAgent(_ input: DescribeAgentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentResponse> {
        return client.execute(operation: "DescribeAgent", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns metadata, such as the path information about an Amazon EFS location.
    public func describeLocationEfs(_ input: DescribeLocationEfsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLocationEfsResponse> {
        return client.execute(operation: "DescribeLocationEfs", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns metadata, such as the path information about an Amazon FSx for Windows location.
    public func describeLocationFsxWindows(_ input: DescribeLocationFsxWindowsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLocationFsxWindowsResponse> {
        return client.execute(operation: "DescribeLocationFsxWindows", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns metadata, such as the path information, about a NFS location.
    public func describeLocationNfs(_ input: DescribeLocationNfsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLocationNfsResponse> {
        return client.execute(operation: "DescribeLocationNfs", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns metadata, such as bucket name, about an Amazon S3 bucket location.
    public func describeLocationS3(_ input: DescribeLocationS3Request, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLocationS3Response> {
        return client.execute(operation: "DescribeLocationS3", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns metadata, such as the path and user information about a SMB location.
    public func describeLocationSmb(_ input: DescribeLocationSmbRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLocationSmbResponse> {
        return client.execute(operation: "DescribeLocationSmb", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns metadata about a task.
    public func describeTask(_ input: DescribeTaskRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskResponse> {
        return client.execute(operation: "DescribeTask", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns detailed metadata about a task that is being executed.
    public func describeTaskExecution(_ input: DescribeTaskExecutionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskExecutionResponse> {
        return client.execute(operation: "DescribeTaskExecution", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of agents owned by an AWS account in the AWS Region specified in the request. The returned list is ordered by agent Amazon Resource Name (ARN). By default, this operation returns a maximum of 100 agents. This operation supports pagination that enables you to optionally reduce the number of agents returned in a response. If you have more agents than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a marker that you can specify in your next request to fetch the next page of agents.
    public func listAgents(_ input: ListAgentsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAgentsResponse> {
        return client.execute(operation: "ListAgents", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a lists of source and destination locations. If you have more locations than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a token that you can specify in your next request to fetch the next page of locations.
    public func listLocations(_ input: ListLocationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLocationsResponse> {
        return client.execute(operation: "ListLocations", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns all the tags associated with a specified resources. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of executed tasks.
    public func listTaskExecutions(_ input: ListTaskExecutionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTaskExecutionsResponse> {
        return client.execute(operation: "ListTaskExecutions", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of all the tasks.
    public func listTasks(_ input: ListTasksRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTasksResponse> {
        return client.execute(operation: "ListTasks", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Starts a specific invocation of a task. A TaskExecution value represents an individual run of a task. Each task can have at most one TaskExecution at a time.  TaskExecution has the following transition phases: INITIALIZING | PREPARING | TRANSFERRING | VERIFYING | SUCCESS/FAILURE.  For detailed information, see the Task Execution section in the Components and Terminology topic in the AWS DataSync User Guide.
    public func startTaskExecution(_ input: StartTaskExecutionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartTaskExecutionResponse> {
        return client.execute(operation: "StartTaskExecution", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Applies a key-value pair to an AWS resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes a tag from an AWS resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the name of an agent.
    public func updateAgent(_ input: UpdateAgentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAgentResponse> {
        return client.execute(operation: "UpdateAgent", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the metadata associated with a task.
    public func updateTask(_ input: UpdateTaskRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTaskResponse> {
        return client.execute(operation: "UpdateTask", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
