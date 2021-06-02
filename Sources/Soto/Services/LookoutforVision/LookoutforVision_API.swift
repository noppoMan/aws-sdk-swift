//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS LookoutforVision service.
///
/// This is the Amazon Lookout for Vision API Reference. It provides descriptions of actions, data types, common parameters, and common errors. Amazon Lookout for Vision enables you to find visual defects in industrial products, accurately and at scale. It uses computer vision to identify missing components in an industrial product, damage to vehicles or structures, irregularities in production lines, and even minuscule defects in silicon wafers — or any other physical item where quality is important such as a missing capacitor on printed circuit boards.
public struct LookoutforVision: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the LookoutforVision client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "lookoutvision",
            serviceProtocol: .restjson,
            apiVersion: "2020-11-20",
            endpoint: endpoint,
            errorType: LookoutforVisionErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a new dataset in an Amazon Lookout for Vision project. CreateDataset can create a training or a test dataset from a valid dataset source (DatasetSource). If you want a single dataset project, specify train for the value of DatasetType. To have a project with separate training and test datasets, call CreateDataset twice. On the first call, specify train for the value of DatasetType. On the second call, specify test for the value of DatasetType.  This operation requires permissions to perform the lookoutvision:CreateDataset operation.
    public func createDataset(_ input: CreateDatasetRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatasetResponse> {
        return self.client.execute(operation: "CreateDataset", path: "/2020-11-20/projects/{projectName}/datasets", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates a new version of a model within an an Amazon Lookout for Vision project. CreateModel is an asynchronous operation in which Amazon Lookout for Vision trains, tests, and evaluates a new version of a model.  To get the current status, check the Status field returned in the response from DescribeModel. If the project has a single dataset, Amazon Lookout for Vision internally splits the dataset to create a training and a test dataset. If the project has a training and a test dataset, Lookout for Vision uses the respective datasets to train and test the model.  After training completes, the evaluation metrics are stored at the location specified in OutputConfig.  This operation requires permissions to perform the lookoutvision:CreateModel operation. If you want to tag your model, you also require permission to the lookoutvision:TagResource operation.
    public func createModel(_ input: CreateModelRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateModelResponse> {
        return self.client.execute(operation: "CreateModel", path: "/2020-11-20/projects/{projectName}/models", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates an empty Amazon Lookout for Vision project. After you create the project, add a dataset by calling CreateDataset. This operation requires permissions to perform the lookoutvision:CreateProject operation.
    public func createProject(_ input: CreateProjectRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResponse> {
        return self.client.execute(operation: "CreateProject", path: "/2020-11-20/projects", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes an existing Amazon Lookout for Vision dataset.  If your the project has a single dataset, you must create a new dataset before you can create a model. If you project has a training dataset and a test dataset consider the following.    If you delete the test dataset, your project reverts to a single dataset project. If you then train the model, Amazon Lookout for Vision internally splits the remaining dataset into a training and test dataset.   If you delete the training dataset, you must create a training dataset before you can create a model.   This operation requires permissions to perform the lookoutvision:DeleteDataset operation.
    public func deleteDataset(_ input: DeleteDatasetRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDatasetResponse> {
        return self.client.execute(operation: "DeleteDataset", path: "/2020-11-20/projects/{projectName}/datasets/{datasetType}", httpMethod: .DELETE, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes an Amazon Lookout for Vision model. You can't delete a running model. To stop a running model, use the StopModel operation. It might take a few seconds to delete a model. To determine if a model has been deleted, call ListProjects and check if the version of the model (ModelVersion) is in the Models array.  This operation requires permissions to perform the lookoutvision:DeleteModel operation.
    public func deleteModel(_ input: DeleteModelRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteModelResponse> {
        return self.client.execute(operation: "DeleteModel", path: "/2020-11-20/projects/{projectName}/models/{modelVersion}", httpMethod: .DELETE, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes an Amazon Lookout for Vision project. To delete a project, you must first delete each version of the model associated with the project. To delete a model use the DeleteModel operation. You also have to delete the dataset(s) associated with the model. For more information, see DeleteDataset. The images referenced by the training and test datasets aren't deleted.  This operation requires permissions to perform the lookoutvision:DeleteProject operation.
    public func deleteProject(_ input: DeleteProjectRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProjectResponse> {
        return self.client.execute(operation: "DeleteProject", path: "/2020-11-20/projects/{projectName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describe an Amazon Lookout for Vision dataset. This operation requires permissions to perform the lookoutvision:DescribeDataset operation.
    public func describeDataset(_ input: DescribeDatasetRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetResponse> {
        return self.client.execute(operation: "DescribeDataset", path: "/2020-11-20/projects/{projectName}/datasets/{datasetType}", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes a version of an Amazon Lookout for Vision model. This operation requires permissions to perform the lookoutvision:DescribeModel operation.
    public func describeModel(_ input: DescribeModelRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelResponse> {
        return self.client.execute(operation: "DescribeModel", path: "/2020-11-20/projects/{projectName}/models/{modelVersion}", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes an Amazon Lookout for Vision project. This operation requires permissions to perform the lookoutvision:DescribeProject operation.
    public func describeProject(_ input: DescribeProjectRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectResponse> {
        return self.client.execute(operation: "DescribeProject", path: "/2020-11-20/projects/{projectName}", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Detects anomalies in an image that you supply.  The response from DetectAnomalies includes a boolean prediction that the image contains one or more anomalies and a confidence value for the prediction.  Before calling DetectAnomalies, you must first start your model with the StartModel operation. You are charged for the amount of time, in minutes, that a model runs and for the number of anomaly detection units that your model uses. If you are not using a model, use the StopModel operation to stop your model.   This operation requires permissions to perform the lookoutvision:DetectAnomalies operation.
    public func detectAnomalies(_ input: DetectAnomaliesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectAnomaliesResponse> {
        return self.client.execute(operation: "DetectAnomalies", path: "/2020-11-20/projects/{projectName}/models/{modelVersion}/detect", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the JSON Lines within a dataset. An Amazon Lookout for Vision JSON Line contains the anomaly information for a single image, including the image location and the assigned label. This operation requires permissions to perform the lookoutvision:ListDatasetEntries operation.
    public func listDatasetEntries(_ input: ListDatasetEntriesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatasetEntriesResponse> {
        return self.client.execute(operation: "ListDatasetEntries", path: "/2020-11-20/projects/{projectName}/datasets/{datasetType}/entries", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the versions of a model in an Amazon Lookout for Vision project. This operation requires permissions to perform the lookoutvision:ListModels operation.
    public func listModels(_ input: ListModelsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListModelsResponse> {
        return self.client.execute(operation: "ListModels", path: "/2020-11-20/projects/{projectName}/models", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the Amazon Lookout for Vision projects in your AWS account. This operation requires permissions to perform the lookoutvision:ListProjects operation.
    public func listProjects(_ input: ListProjectsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProjectsResponse> {
        return self.client.execute(operation: "ListProjects", path: "/2020-11-20/projects", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns a list of tags attached to the specified Amazon Lookout for Vision model. This operation requires permissions to perform the lookoutvision:ListTagsForResource operation.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/2020-11-20/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Starts the running of the version of an Amazon Lookout for Vision model. Starting a model takes a while to complete. To check the current state of the model, use DescribeModel. A model is ready to use when its status is HOSTED. Once the model is running, you can detect custom labels in new images by calling DetectAnomalies.  You are charged for the amount of time that the model is running. To stop a running model, call StopModel.  This operation requires permissions to perform the lookoutvision:StartModel operation.
    public func startModel(_ input: StartModelRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartModelResponse> {
        return self.client.execute(operation: "StartModel", path: "/2020-11-20/projects/{projectName}/models/{modelVersion}/start", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Stops the hosting of a running model. The operation might take a while to complete. To check the current status, call DescribeModel.  After the model hosting stops, the Status of the model is TRAINED. This operation requires permissions to perform the lookoutvision:StopModel operation.
    public func stopModel(_ input: StopModelRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopModelResponse> {
        return self.client.execute(operation: "StopModel", path: "/2020-11-20/projects/{projectName}/models/{modelVersion}/stop", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Adds one or more key-value tags to an Amazon Lookout for Vision model. For more information, see Tagging a model in the Amazon Lookout for Vision Developer Guide.  This operation requires permissions to perform the lookoutvision:TagResource operation.
    public func tagResource(_ input: TagResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/2020-11-20/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Removes one or more tags from an Amazon Lookout for Vision model. For more information, see Tagging a model in the Amazon Lookout for Vision Developer Guide.  This operation requires permissions to perform the lookoutvision:UntagResource operation.
    public func untagResource(_ input: UntagResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/2020-11-20/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Adds one or more JSON Line entries to a dataset. A JSON Line includes information about an image used for training or testing an Amazon Lookout for Vision model. The following is an example JSON Line. Updating a dataset might take a while to complete. To check the current status, call DescribeDataset and check the Status field in the response. This operation requires permissions to perform the lookoutvision:UpdateDatasetEntries operation.
    public func updateDatasetEntries(_ input: UpdateDatasetEntriesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDatasetEntriesResponse> {
        return self.client.execute(operation: "UpdateDatasetEntries", path: "/2020-11-20/projects/{projectName}/datasets/{datasetType}/entries", httpMethod: .PATCH, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }
}

extension LookoutforVision {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: LookoutforVision, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
