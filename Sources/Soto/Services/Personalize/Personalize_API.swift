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

/// Service object for interacting with AWS Personalize service.
///
/// Amazon Personalize is a machine learning service that makes it easy to add individualized recommendations to customers.
public struct Personalize: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Personalize client
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
            amzTarget: "AmazonPersonalize",
            service: "personalize",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-05-22",
            endpoint: endpoint,
            errorType: PersonalizeErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a batch inference job. The operation can handle up to 50 million records and the input file must be in JSON format. For more information, see recommendations-batch.
    public func createBatchInferenceJob(_ input: CreateBatchInferenceJobRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBatchInferenceJobResponse> {
        return self.client.execute(operation: "CreateBatchInferenceJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates a campaign by deploying a solution version. When a client calls the GetRecommendations and GetPersonalizedRanking APIs, a campaign is specified in the request.  Minimum Provisioned TPS and Auto-Scaling  A transaction is a single GetRecommendations or GetPersonalizedRanking call. Transactions per second (TPS) is the throughput and unit of billing for Amazon Personalize. The minimum provisioned TPS (minProvisionedTPS) specifies the baseline throughput provisioned by Amazon Personalize, and thus, the minimum billing charge.   If your TPS increases beyond minProvisionedTPS, Amazon Personalize auto-scales the provisioned capacity up and down, but never below minProvisionedTPS. There's a short time delay while the capacity is increased that might cause loss of transactions. The actual TPS used is calculated as the average requests/second within a 5-minute window. You pay for maximum of either the minimum provisioned TPS or the actual TPS. We recommend starting with a low minProvisionedTPS, track your usage using Amazon CloudWatch metrics, and then increase the minProvisionedTPS as necessary.  Status  A campaign can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING &gt; DELETE IN_PROGRESS   To get the campaign status, call DescribeCampaign.  Wait until the status of the campaign is ACTIVE before asking the campaign for recommendations.   Related APIs     ListCampaigns     DescribeCampaign     UpdateCampaign     DeleteCampaign
    public func createCampaign(_ input: CreateCampaignRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCampaignResponse> {
        return self.client.execute(operation: "CreateCampaign", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates an empty dataset and adds it to the specified dataset group. Use CreateDatasetImportJob to import your training data to a dataset. There are three types of datasets:   Interactions   Items   Users   Each dataset type has an associated schema with required field types. Only the Interactions dataset is required in order to train a model (also referred to as creating a solution). A dataset can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING &gt; DELETE IN_PROGRESS   To get the status of the dataset, call DescribeDataset.  Related APIs     CreateDatasetGroup     ListDatasets     DescribeDataset     DeleteDataset
    public func createDataset(_ input: CreateDatasetRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatasetResponse> {
        return self.client.execute(operation: "CreateDataset", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    ///  Creates a job that exports data from your dataset to an Amazon S3 bucket. To allow Amazon Personalize to export the training data, you must specify an service-linked AWS Identity and Access Management (IAM) role that gives Amazon Personalize PutObject permissions for your Amazon S3 bucket. For information, see Exporting a dataset in the Amazon Personalize developer guide.   Status  A dataset export job can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED    To get the status of the export job, call DescribeDatasetExportJob, and specify the Amazon Resource Name (ARN) of the dataset export job. The dataset export is complete when the status shows as ACTIVE. If the status shows as CREATE FAILED, the response includes a failureReason key, which describes why the job failed.
    public func createDatasetExportJob(_ input: CreateDatasetExportJobRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatasetExportJobResponse> {
        return self.client.execute(operation: "CreateDatasetExportJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates an empty dataset group. A dataset group contains related datasets that supply data for training a model. A dataset group can contain at most three datasets, one for each type of dataset:   Interactions   Items   Users   To train a model (create a solution), a dataset group that contains an Interactions dataset is required. Call CreateDataset to add a dataset to the group. A dataset group can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING   To get the status of the dataset group, call DescribeDatasetGroup. If the status shows as CREATE FAILED, the response includes a failureReason key, which describes why the creation failed.  You must wait until the status of the dataset group is ACTIVE before adding a dataset to the group.  You can specify an AWS Key Management Service (KMS) key to encrypt the datasets in the group. If you specify a KMS key, you must also include an AWS Identity and Access Management (IAM) role that has permission to access the key.  APIs that require a dataset group ARN in the request     CreateDataset     CreateEventTracker     CreateSolution     Related APIs     ListDatasetGroups     DescribeDatasetGroup     DeleteDatasetGroup
    public func createDatasetGroup(_ input: CreateDatasetGroupRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatasetGroupResponse> {
        return self.client.execute(operation: "CreateDatasetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates a job that imports training data from your data source (an Amazon S3 bucket) to an Amazon Personalize dataset. To allow Amazon Personalize to import the training data, you must specify an AWS Identity and Access Management (IAM) service role that has permission to read from the data source, as Amazon Personalize makes a copy of your data and processes it in an internal AWS system. For information on granting access to your Amazon S3 bucket, see Giving Amazon Personalize Access to Amazon S3 Resources.   The dataset import job replaces any existing data in the dataset that you imported in bulk.   Status  A dataset import job can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   To get the status of the import job, call DescribeDatasetImportJob, providing the Amazon Resource Name (ARN) of the dataset import job. The dataset import is complete when the status shows as ACTIVE. If the status shows as CREATE FAILED, the response includes a failureReason key, which describes why the job failed.  Importing takes time. You must wait until the status shows as ACTIVE before training a model using the dataset.   Related APIs     ListDatasetImportJobs     DescribeDatasetImportJob
    public func createDatasetImportJob(_ input: CreateDatasetImportJobRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatasetImportJobResponse> {
        return self.client.execute(operation: "CreateDatasetImportJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates an event tracker that you use when adding event data to a specified dataset group using the PutEvents API.  Only one event tracker can be associated with a dataset group. You will get an error if you call CreateEventTracker using the same dataset group as an existing event tracker.  When you create an event tracker, the response includes a tracking ID, which you pass as a parameter when you use the PutEvents operation. Amazon Personalize then appends the event data to the Interactions dataset of the dataset group you specify in your event tracker.  The event tracker can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING &gt; DELETE IN_PROGRESS   To get the status of the event tracker, call DescribeEventTracker.  The event tracker must be in the ACTIVE state before using the tracking ID.   Related APIs     ListEventTrackers     DescribeEventTracker     DeleteEventTracker
    public func createEventTracker(_ input: CreateEventTrackerRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEventTrackerResponse> {
        return self.client.execute(operation: "CreateEventTracker", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates a recommendation filter. For more information, see filter.
    public func createFilter(_ input: CreateFilterRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFilterResponse> {
        return self.client.execute(operation: "CreateFilter", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates an Amazon Personalize schema from the specified schema string. The schema you create must be in Avro JSON format. Amazon Personalize recognizes three schema variants. Each schema is associated with a dataset type and has a set of required field and keywords. You specify a schema when you call CreateDataset.  Related APIs     ListSchemas     DescribeSchema     DeleteSchema
    public func createSchema(_ input: CreateSchemaRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSchemaResponse> {
        return self.client.execute(operation: "CreateSchema", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates the configuration for training a model. A trained model is known as a solution. After the configuration is created, you train the model (create a solution) by calling the CreateSolutionVersion operation. Every time you call CreateSolutionVersion, a new version of the solution is created. After creating a solution version, you check its accuracy by calling GetSolutionMetrics. When you are satisfied with the version, you deploy it using CreateCampaign. The campaign provides recommendations to a client through the GetRecommendations API. To train a model, Amazon Personalize requires training data and a recipe. The training data comes from the dataset group that you provide in the request. A recipe specifies the training algorithm and a feature transformation. You can specify one of the predefined recipes provided by Amazon Personalize. Alternatively, you can specify performAutoML and Amazon Personalize will analyze your data and select the optimum USER_PERSONALIZATION recipe for you.  Amazon Personalize doesn't support configuring the hpoObjective for solution hyperparameter optimization at this time.   Status  A solution can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING &gt; DELETE IN_PROGRESS   To get the status of the solution, call DescribeSolution. Wait until the status shows as ACTIVE before calling CreateSolutionVersion.  Related APIs     ListSolutions     CreateSolutionVersion     DescribeSolution     DeleteSolution       ListSolutionVersions     DescribeSolutionVersion
    public func createSolution(_ input: CreateSolutionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSolutionResponse> {
        return self.client.execute(operation: "CreateSolution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Trains or retrains an active solution. A solution is created using the CreateSolution operation and must be in the ACTIVE state before calling CreateSolutionVersion. A new version of the solution is created every time you call this operation.  Status  A solution version can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   To get the status of the version, call DescribeSolutionVersion. Wait until the status shows as ACTIVE before calling CreateCampaign. If the status shows as CREATE FAILED, the response includes a failureReason key, which describes why the job failed.  Related APIs     ListSolutionVersions     DescribeSolutionVersion       ListSolutions     CreateSolution     DescribeSolution     DeleteSolution
    public func createSolutionVersion(_ input: CreateSolutionVersionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSolutionVersionResponse> {
        return self.client.execute(operation: "CreateSolutionVersion", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Removes a campaign by deleting the solution deployment. The solution that the campaign is based on is not deleted and can be redeployed when needed. A deleted campaign can no longer be specified in a GetRecommendations request. For more information on campaigns, see CreateCampaign.
    @discardableResult public func deleteCampaign(_ input: DeleteCampaignRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteCampaign", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes a dataset. You can't delete a dataset if an associated DatasetImportJob or SolutionVersion is in the CREATE PENDING or IN PROGRESS state. For more information on datasets, see CreateDataset.
    @discardableResult public func deleteDataset(_ input: DeleteDatasetRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteDataset", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes a dataset group. Before you delete a dataset group, you must delete the following:   All associated event trackers.   All associated solutions.   All datasets in the dataset group.
    @discardableResult public func deleteDatasetGroup(_ input: DeleteDatasetGroupRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteDatasetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes the event tracker. Does not delete the event-interactions dataset from the associated dataset group. For more information on event trackers, see CreateEventTracker.
    @discardableResult public func deleteEventTracker(_ input: DeleteEventTrackerRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteEventTracker", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes a filter.
    @discardableResult public func deleteFilter(_ input: DeleteFilterRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteFilter", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes a schema. Before deleting a schema, you must delete all datasets referencing the schema. For more information on schemas, see CreateSchema.
    @discardableResult public func deleteSchema(_ input: DeleteSchemaRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteSchema", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes all versions of a solution and the Solution object itself. Before deleting a solution, you must delete all campaigns based on the solution. To determine what campaigns are using the solution, call ListCampaigns and supply the Amazon Resource Name (ARN) of the solution. You can't delete a solution if an associated SolutionVersion is in the CREATE PENDING or IN PROGRESS state. For more information on solutions, see CreateSolution.
    @discardableResult public func deleteSolution(_ input: DeleteSolutionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteSolution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes the given algorithm.
    public func describeAlgorithm(_ input: DescribeAlgorithmRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlgorithmResponse> {
        return self.client.execute(operation: "DescribeAlgorithm", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets the properties of a batch inference job including name, Amazon Resource Name (ARN), status, input and output configurations, and the ARN of the solution version used to generate the recommendations.
    public func describeBatchInferenceJob(_ input: DescribeBatchInferenceJobRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchInferenceJobResponse> {
        return self.client.execute(operation: "DescribeBatchInferenceJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes the given campaign, including its status. A campaign can be in one of the following states:   CREATE PENDING &gt; CREATE IN_PROGRESS &gt; ACTIVE -or- CREATE FAILED   DELETE PENDING &gt; DELETE IN_PROGRESS   When the status is CREATE FAILED, the response includes the failureReason key, which describes why. For more information on campaigns, see CreateCampaign.
    public func describeCampaign(_ input: DescribeCampaignRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCampaignResponse> {
        return self.client.execute(operation: "DescribeCampaign", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes the given dataset. For more information on datasets, see CreateDataset.
    public func describeDataset(_ input: DescribeDatasetRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetResponse> {
        return self.client.execute(operation: "DescribeDataset", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes the dataset export job created by CreateDatasetExportJob, including the export job status.
    public func describeDatasetExportJob(_ input: DescribeDatasetExportJobRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetExportJobResponse> {
        return self.client.execute(operation: "DescribeDatasetExportJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes the given dataset group. For more information on dataset groups, see CreateDatasetGroup.
    public func describeDatasetGroup(_ input: DescribeDatasetGroupRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetGroupResponse> {
        return self.client.execute(operation: "DescribeDatasetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes the dataset import job created by CreateDatasetImportJob, including the import job status.
    public func describeDatasetImportJob(_ input: DescribeDatasetImportJobRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetImportJobResponse> {
        return self.client.execute(operation: "DescribeDatasetImportJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes an event tracker. The response includes the trackingId and status of the event tracker. For more information on event trackers, see CreateEventTracker.
    public func describeEventTracker(_ input: DescribeEventTrackerRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventTrackerResponse> {
        return self.client.execute(operation: "DescribeEventTracker", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes the given feature transformation.
    public func describeFeatureTransformation(_ input: DescribeFeatureTransformationRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFeatureTransformationResponse> {
        return self.client.execute(operation: "DescribeFeatureTransformation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes a filter's properties.
    public func describeFilter(_ input: DescribeFilterRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFilterResponse> {
        return self.client.execute(operation: "DescribeFilter", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes a recipe. A recipe contains three items:   An algorithm that trains a model.   Hyperparameters that govern the training.   Feature transformation information for modifying the input data before training.   Amazon Personalize provides a set of predefined recipes. You specify a recipe when you create a solution with the CreateSolution API. CreateSolution trains a model by using the algorithm in the specified recipe and a training dataset. The solution, when deployed as a campaign, can provide recommendations using the GetRecommendations API.
    public func describeRecipe(_ input: DescribeRecipeRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecipeResponse> {
        return self.client.execute(operation: "DescribeRecipe", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes a schema. For more information on schemas, see CreateSchema.
    public func describeSchema(_ input: DescribeSchemaRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSchemaResponse> {
        return self.client.execute(operation: "DescribeSchema", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes a solution. For more information on solutions, see CreateSolution.
    public func describeSolution(_ input: DescribeSolutionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSolutionResponse> {
        return self.client.execute(operation: "DescribeSolution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes a specific version of a solution. For more information on solutions, see CreateSolution.
    public func describeSolutionVersion(_ input: DescribeSolutionVersionRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSolutionVersionResponse> {
        return self.client.execute(operation: "DescribeSolutionVersion", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets the metrics for the specified solution version.
    public func getSolutionMetrics(_ input: GetSolutionMetricsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSolutionMetricsResponse> {
        return self.client.execute(operation: "GetSolutionMetrics", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets a list of the batch inference jobs that have been performed off of a solution version.
    public func listBatchInferenceJobs(_ input: ListBatchInferenceJobsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBatchInferenceJobsResponse> {
        return self.client.execute(operation: "ListBatchInferenceJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns a list of campaigns that use the given solution. When a solution is not specified, all the campaigns associated with the account are listed. The response provides the properties for each campaign, including the Amazon Resource Name (ARN). For more information on campaigns, see CreateCampaign.
    public func listCampaigns(_ input: ListCampaignsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCampaignsResponse> {
        return self.client.execute(operation: "ListCampaigns", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns a list of dataset export jobs that use the given dataset. When a dataset is not specified, all the dataset export jobs associated with the account are listed. The response provides the properties for each dataset export job, including the Amazon Resource Name (ARN). For more information on dataset export jobs, see CreateDatasetExportJob. For more information on datasets, see CreateDataset.
    public func listDatasetExportJobs(_ input: ListDatasetExportJobsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatasetExportJobsResponse> {
        return self.client.execute(operation: "ListDatasetExportJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns a list of dataset groups. The response provides the properties for each dataset group, including the Amazon Resource Name (ARN). For more information on dataset groups, see CreateDatasetGroup.
    public func listDatasetGroups(_ input: ListDatasetGroupsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatasetGroupsResponse> {
        return self.client.execute(operation: "ListDatasetGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns a list of dataset import jobs that use the given dataset. When a dataset is not specified, all the dataset import jobs associated with the account are listed. The response provides the properties for each dataset import job, including the Amazon Resource Name (ARN). For more information on dataset import jobs, see CreateDatasetImportJob. For more information on datasets, see CreateDataset.
    public func listDatasetImportJobs(_ input: ListDatasetImportJobsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatasetImportJobsResponse> {
        return self.client.execute(operation: "ListDatasetImportJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns the list of datasets contained in the given dataset group. The response provides the properties for each dataset, including the Amazon Resource Name (ARN). For more information on datasets, see CreateDataset.
    public func listDatasets(_ input: ListDatasetsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatasetsResponse> {
        return self.client.execute(operation: "ListDatasets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns the list of event trackers associated with the account. The response provides the properties for each event tracker, including the Amazon Resource Name (ARN) and tracking ID. For more information on event trackers, see CreateEventTracker.
    public func listEventTrackers(_ input: ListEventTrackersRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEventTrackersResponse> {
        return self.client.execute(operation: "ListEventTrackers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists all filters that belong to a given dataset group.
    public func listFilters(_ input: ListFiltersRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFiltersResponse> {
        return self.client.execute(operation: "ListFilters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns a list of available recipes. The response provides the properties for each recipe, including the recipe's Amazon Resource Name (ARN).
    public func listRecipes(_ input: ListRecipesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecipesResponse> {
        return self.client.execute(operation: "ListRecipes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns the list of schemas associated with the account. The response provides the properties for each schema, including the Amazon Resource Name (ARN). For more information on schemas, see CreateSchema.
    public func listSchemas(_ input: ListSchemasRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSchemasResponse> {
        return self.client.execute(operation: "ListSchemas", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns a list of solution versions for the given solution. When a solution is not specified, all the solution versions associated with the account are listed. The response provides the properties for each solution version, including the Amazon Resource Name (ARN). For more information on solutions, see CreateSolution.
    public func listSolutionVersions(_ input: ListSolutionVersionsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSolutionVersionsResponse> {
        return self.client.execute(operation: "ListSolutionVersions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns a list of solutions that use the given dataset group. When a dataset group is not specified, all the solutions associated with the account are listed. The response provides the properties for each solution, including the Amazon Resource Name (ARN). For more information on solutions, see CreateSolution.
    public func listSolutions(_ input: ListSolutionsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSolutionsResponse> {
        return self.client.execute(operation: "ListSolutions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates a campaign by either deploying a new solution or changing the value of the campaign's minProvisionedTPS parameter. To update a campaign, the campaign status must be ACTIVE or CREATE FAILED. Check the campaign status using the DescribeCampaign API.  You must wait until the status of the updated campaign is ACTIVE before asking the campaign for recommendations.  For more information on campaigns, see CreateCampaign.
    public func updateCampaign(_ input: UpdateCampaignRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCampaignResponse> {
        return self.client.execute(operation: "UpdateCampaign", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }
}

extension Personalize {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Personalize, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
