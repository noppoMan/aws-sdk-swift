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
Client object for interacting with AWS DataPipeline service.

AWS Data Pipeline configures and manages a data-driven workflow called a pipeline. AWS Data Pipeline handles the details of scheduling and ensuring that data dependencies are met so that your application can focus on processing the data. AWS Data Pipeline provides a JAR implementation of a task runner called AWS Data Pipeline Task Runner. AWS Data Pipeline Task Runner provides logic for common data management scenarios, such as performing database queries and running data analysis using Amazon Elastic MapReduce (Amazon EMR). You can use AWS Data Pipeline Task Runner as your task runner, or you can write your own task runner to provide custom data management. AWS Data Pipeline implements two main sets of functionality. Use the first set to create a pipeline and define data sources, schedules, dependencies, and the transforms to be performed on the data. Use the second set in your task runner application to receive the next task ready for processing. The logic for performing the task, such as querying the data, running data analysis, or converting the data from one format to another, is contained within the task runner. The task runner performs the task assigned to it by the web service, reporting progress to the web service as it does so. When the task is done, the task runner reports the final success or failure of the task to the web service.
*/
public struct DataPipeline {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the DataPipeline client
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
            amzTarget: "DataPipeline",
            service: "datapipeline",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2012-10-29",
            endpoint: endpoint,
            possibleErrorTypes: [DataPipelineErrorType.self]
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

    ///  Validates the specified pipeline and starts processing pipeline tasks. If the pipeline does not pass validation, activation fails. If you need to pause the pipeline to investigate an issue with a component, such as a data source or script, call DeactivatePipeline. To activate a finished pipeline, modify the end date for the pipeline and then activate it.
    public func activatePipeline(_ input: ActivatePipelineInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ActivatePipelineOutput> {
        return client.send(operation: "ActivatePipeline", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds or modifies tags for the specified pipeline.
    public func addTags(_ input: AddTagsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddTagsOutput> {
        return client.send(operation: "AddTags", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new, empty pipeline. Use PutPipelineDefinition to populate the pipeline.
    public func createPipeline(_ input: CreatePipelineInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePipelineOutput> {
        return client.send(operation: "CreatePipeline", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deactivates the specified running pipeline. The pipeline is set to the DEACTIVATING state until the deactivation process completes. To resume a deactivated pipeline, use ActivatePipeline. By default, the pipeline resumes from the last completed execution. Optionally, you can specify the date and time to resume the pipeline.
    public func deactivatePipeline(_ input: DeactivatePipelineInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeactivatePipelineOutput> {
        return client.send(operation: "DeactivatePipeline", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a pipeline, its pipeline definition, and its run history. AWS Data Pipeline attempts to cancel instances associated with the pipeline that are currently being processed by task runners. Deleting a pipeline cannot be undone. You cannot query or restore a deleted pipeline. To temporarily pause a pipeline instead of deleting it, call SetStatus with the status set to PAUSE on individual components. Components that are paused by SetStatus can be resumed.
    @discardableResult public func deletePipeline(_ input: DeletePipelineInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeletePipeline", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the object definitions for a set of objects associated with the pipeline. Object definitions are composed of a set of fields that define the properties of the object.
    public func describeObjects(_ input: DescribeObjectsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeObjectsOutput> {
        return client.send(operation: "DescribeObjects", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves metadata about one or more pipelines. The information retrieved includes the name of the pipeline, the pipeline identifier, its current state, and the user account that owns the pipeline. Using account credentials, you can retrieve metadata about pipelines that you or your IAM users have created. If you are using an IAM user account, you can retrieve metadata about only those pipelines for which you have read permissions. To retrieve the full pipeline definition instead of metadata about the pipeline, call GetPipelineDefinition.
    public func describePipelines(_ input: DescribePipelinesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePipelinesOutput> {
        return client.send(operation: "DescribePipelines", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Task runners call EvaluateExpression to evaluate a string in the context of the specified object. For example, a task runner can evaluate SQL queries stored in Amazon S3.
    public func evaluateExpression(_ input: EvaluateExpressionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EvaluateExpressionOutput> {
        return client.send(operation: "EvaluateExpression", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the definition of the specified pipeline. You can call GetPipelineDefinition to retrieve the pipeline definition that you provided using PutPipelineDefinition.
    public func getPipelineDefinition(_ input: GetPipelineDefinitionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPipelineDefinitionOutput> {
        return client.send(operation: "GetPipelineDefinition", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the pipeline identifiers for all active pipelines that you have permission to access.
    public func listPipelines(_ input: ListPipelinesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPipelinesOutput> {
        return client.send(operation: "ListPipelines", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Task runners call PollForTask to receive a task to perform from AWS Data Pipeline. The task runner specifies which tasks it can perform by setting a value for the workerGroup parameter. The task returned can come from any of the pipelines that match the workerGroup value passed in by the task runner and that was launched using the IAM user credentials specified by the task runner. If tasks are ready in the work queue, PollForTask returns a response immediately. If no tasks are available in the queue, PollForTask uses long-polling and holds on to a poll connection for up to a 90 seconds, during which time the first newly scheduled task is handed to the task runner. To accomodate this, set the socket timeout in your task runner to 90 seconds. The task runner should not call PollForTask again on the same workerGroup until it receives a response, and this can take up to 90 seconds. 
    public func pollForTask(_ input: PollForTaskInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PollForTaskOutput> {
        return client.send(operation: "PollForTask", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds tasks, schedules, and preconditions to the specified pipeline. You can use PutPipelineDefinition to populate a new pipeline.  PutPipelineDefinition also validates the configuration as it adds it to the pipeline. Changes to the pipeline are saved unless one of the following three validation errors exists in the pipeline.   An object is missing a name or identifier field. A string or reference field is empty. The number of objects in the pipeline exceeds the maximum allowed objects. The pipeline is in a FINISHED state.   Pipeline object definitions are passed to the PutPipelineDefinition action and returned by the GetPipelineDefinition action. 
    public func putPipelineDefinition(_ input: PutPipelineDefinitionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutPipelineDefinitionOutput> {
        return client.send(operation: "PutPipelineDefinition", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Queries the specified pipeline for the names of objects that match the specified set of conditions.
    public func queryObjects(_ input: QueryObjectsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryObjectsOutput> {
        return client.send(operation: "QueryObjects", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes existing tags from the specified pipeline.
    public func removeTags(_ input: RemoveTagsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveTagsOutput> {
        return client.send(operation: "RemoveTags", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Task runners call ReportTaskProgress when assigned a task to acknowledge that it has the task. If the web service does not receive this acknowledgement within 2 minutes, it assigns the task in a subsequent PollForTask call. After this initial acknowledgement, the task runner only needs to report progress every 15 minutes to maintain its ownership of the task. You can change this reporting time from 15 minutes by specifying a reportProgressTimeout field in your pipeline. If a task runner does not report its status after 5 minutes, AWS Data Pipeline assumes that the task runner is unable to process the task and reassigns the task in a subsequent response to PollForTask. Task runners should call ReportTaskProgress every 60 seconds.
    public func reportTaskProgress(_ input: ReportTaskProgressInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportTaskProgressOutput> {
        return client.send(operation: "ReportTaskProgress", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Task runners call ReportTaskRunnerHeartbeat every 15 minutes to indicate that they are operational. If the AWS Data Pipeline Task Runner is launched on a resource managed by AWS Data Pipeline, the web service can use this call to detect when the task runner application has failed and restart a new instance.
    public func reportTaskRunnerHeartbeat(_ input: ReportTaskRunnerHeartbeatInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportTaskRunnerHeartbeatOutput> {
        return client.send(operation: "ReportTaskRunnerHeartbeat", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Requests that the status of the specified physical or logical pipeline objects be updated in the specified pipeline. This update might not occur immediately, but is eventually consistent. The status that can be set depends on the type of object (for example, DataNode or Activity). You cannot perform this operation on FINISHED pipelines and attempting to do so returns InvalidRequestException.
    @discardableResult public func setStatus(_ input: SetStatusInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "SetStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Task runners call SetTaskStatus to notify AWS Data Pipeline that a task is completed and provide information about the final status. A task runner makes this call regardless of whether the task was sucessful. A task runner does not need to call SetTaskStatus for tasks that are canceled by the web service during a call to ReportTaskProgress.
    public func setTaskStatus(_ input: SetTaskStatusInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetTaskStatusOutput> {
        return client.send(operation: "SetTaskStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Validates the specified pipeline definition to ensure that it is well formed and can be run without error.
    public func validatePipelineDefinition(_ input: ValidatePipelineDefinitionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ValidatePipelineDefinitionOutput> {
        return client.send(operation: "ValidatePipelineDefinition", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
