// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Glue Defines the public endpoint for the AWS Glue service.
*/
public struct Glue {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSGlue",
            service: "glue",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-03-31",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [GlueErrorType.self]
        )
    }

    ///  Modifies an existing classifier (a GrokClassifier, XMLClassifier, or JsonClassifier, depending on which field is present).
    public func updateClassifier(_ input: UpdateClassifierRequest) throws -> EventLoopFuture<UpdateClassifierResponse> {
        return try client.send(operation: "UpdateClassifier", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a classifier from the Data Catalog.
    public func deleteClassifier(_ input: DeleteClassifierRequest) throws -> EventLoopFuture<DeleteClassifierResponse> {
        return try client.send(operation: "DeleteClassifier", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the Data Catalog resource policy for access control.
    public func putResourcePolicy(_ input: PutResourcePolicyRequest) throws -> EventLoopFuture<PutResourcePolicyResponse> {
        return try client.send(operation: "PutResourcePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a specified Database from a Data Catalog.  After completing this operation, you will no longer have access to the tables (and all table versions and partitions that might belong to the tables) and the user-defined functions in the deleted database. AWS Glue deletes these "orphaned" resources asynchronously in a timely manner, at the discretion of the service. To ensure immediate deletion of all related resources, before calling DeleteDatabase, use DeleteTableVersion or BatchDeleteTableVersion, DeletePartition or BatchDeletePartition, DeleteUserDefinedFunction, and DeleteTable or BatchDeleteTable, to delete any resources that belong to the database. 
    public func deleteDatabase(_ input: DeleteDatabaseRequest) throws -> EventLoopFuture<DeleteDatabaseResponse> {
        return try client.send(operation: "DeleteDatabase", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a classifier in the user's account. This may be a GrokClassifier, an XMLClassifier, or abbrev JsonClassifier, depending on which field of the request is present.
    public func createClassifier(_ input: CreateClassifierRequest) throws -> EventLoopFuture<CreateClassifierResponse> {
        return try client.send(operation: "CreateClassifier", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an existing trigger. See Triggering Jobs for information about how different types of trigger are started.
    public func startTrigger(_ input: StartTriggerRequest) throws -> EventLoopFuture<StartTriggerResponse> {
        return try client.send(operation: "StartTrigger", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an existing function definition in the Data Catalog.
    public func updateUserDefinedFunction(_ input: UpdateUserDefinedFunctionRequest) throws -> EventLoopFuture<UpdateUserDefinedFunctionResponse> {
        return try client.send(operation: "UpdateUserDefinedFunction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Imports an existing Athena Data Catalog to AWS Glue
    public func importCatalogToGlue(_ input: ImportCatalogToGlueRequest) throws -> EventLoopFuture<ImportCatalogToGlueResponse> {
        return try client.send(operation: "ImportCatalogToGlue", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified DevEndpoint.
    public func deleteDevEndpoint(_ input: DeleteDevEndpointRequest) throws -> EventLoopFuture<DeleteDevEndpointResponse> {
        return try client.send(operation: "DeleteDevEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified security configuration.
    public func deleteSecurityConfiguration(_ input: DeleteSecurityConfigurationRequest) throws -> EventLoopFuture<DeleteSecurityConfigurationResponse> {
        return try client.send(operation: "DeleteSecurityConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an existing database definition in a Data Catalog.
    public func updateDatabase(_ input: UpdateDatabaseRequest) throws -> EventLoopFuture<UpdateDatabaseResponse> {
        return try client.send(operation: "UpdateDatabase", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a specified security configuration.
    public func getSecurityConfiguration(_ input: GetSecurityConfigurationRequest) throws -> EventLoopFuture<GetSecurityConfigurationResponse> {
        return try client.send(operation: "GetSecurityConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates one or more partitions in a batch operation.
    public func batchCreatePartition(_ input: BatchCreatePartitionRequest) throws -> EventLoopFuture<BatchCreatePartitionResponse> {
        return try client.send(operation: "BatchCreatePartition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new function definition in the Data Catalog.
    public func createUserDefinedFunction(_ input: CreateUserDefinedFunctionRequest) throws -> EventLoopFuture<CreateUserDefinedFunctionResponse> {
        return try client.send(operation: "CreateUserDefinedFunction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a connection definition in the Data Catalog.
    public func updateConnection(_ input: UpdateConnectionRequest) throws -> EventLoopFuture<UpdateConnectionResponse> {
        return try client.send(operation: "UpdateConnection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves information about a specified partition.
    public func getPartition(_ input: GetPartitionRequest) throws -> EventLoopFuture<GetPartitionResponse> {
        return try client.send(operation: "GetPartition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves partitions in a batch request.
    public func batchGetPartition(_ input: BatchGetPartitionRequest) throws -> EventLoopFuture<BatchGetPartitionResponse> {
        return try client.send(operation: "BatchGetPartition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a metadata table in the Data Catalog.
    public func updateTable(_ input: UpdateTableRequest) throws -> EventLoopFuture<UpdateTableResponse> {
        return try client.send(operation: "UpdateTable", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all classifier objects in the Data Catalog.
    public func getClassifiers(_ input: GetClassifiersRequest) throws -> EventLoopFuture<GetClassifiersResponse> {
        return try client.send(operation: "GetClassifiers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new crawler with specified targets, role, configuration, and optional schedule. At least one crawl target must be specified, in the s3Targets field, the jdbcTargets field, or the DynamoDBTargets field.
    public func createCrawler(_ input: CreateCrawlerRequest) throws -> EventLoopFuture<CreateCrawlerResponse> {
        return try client.send(operation: "CreateCrawler", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a specified trigger.
    public func stopTrigger(_ input: StopTriggerRequest) throws -> EventLoopFuture<StopTriggerResponse> {
        return try client.send(operation: "StopTrigger", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves metadata for a specified crawler.
    public func getCrawler(_ input: GetCrawlerRequest) throws -> EventLoopFuture<GetCrawlerResponse> {
        return try client.send(operation: "GetCrawler", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets all the triggers associated with a job.
    public func getTriggers(_ input: GetTriggersRequest) throws -> EventLoopFuture<GetTriggersResponse> {
        return try client.send(operation: "GetTriggers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new trigger.
    public func createTrigger(_ input: CreateTriggerRequest) throws -> EventLoopFuture<CreateTriggerResponse> {
        return try client.send(operation: "CreateTrigger", path: "/", httpMethod: "POST", input: input)
    }

    ///  If the specified crawler is running, stops the crawl.
    public func stopCrawler(_ input: StopCrawlerRequest) throws -> EventLoopFuture<StopCrawlerResponse> {
        return try client.send(operation: "StopCrawler", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new table definition in the Data Catalog.
    public func createTable(_ input: CreateTableRequest) throws -> EventLoopFuture<CreateTableResponse> {
        return try client.send(operation: "CreateTable", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified version of a table.
    public func deleteTableVersion(_ input: DeleteTableVersionRequest) throws -> EventLoopFuture<DeleteTableVersionResponse> {
        return try client.send(operation: "DeleteTableVersion", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops one or more job runs for a specified job definition.
    public func batchStopJobRun(_ input: BatchStopJobRunRequest) throws -> EventLoopFuture<BatchStopJobRunResponse> {
        return try client.send(operation: "BatchStopJobRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing function definition from the Data Catalog.
    public func deleteUserDefinedFunction(_ input: DeleteUserDefinedFunctionRequest) throws -> EventLoopFuture<DeleteUserDefinedFunctionResponse> {
        return try client.send(operation: "DeleteUserDefinedFunction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves metadata for all crawlers defined in the customer account.
    public func getCrawlers(_ input: GetCrawlersRequest) throws -> EventLoopFuture<GetCrawlersResponse> {
        return try client.send(operation: "GetCrawlers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves information about a specified DevEndpoint.  When you create a development endpoint in a virtual private cloud (VPC), AWS Glue returns only a private IP address, and the public IP address field is not populated. When you create a non-VPC development endpoint, AWS Glue returns only a public IP address. 
    public func getDevEndpoint(_ input: GetDevEndpointRequest) throws -> EventLoopFuture<GetDevEndpointResponse> {
        return try client.send(operation: "GetDevEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a specified resource policy.
    public func getResourcePolicy(_ input: GetResourcePolicyRequest) throws -> EventLoopFuture<GetResourcePolicyResponse> {
        return try client.send(operation: "GetResourcePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates mappings.
    public func getMapping(_ input: GetMappingRequest) throws -> EventLoopFuture<GetMappingResponse> {
        return try client.send(operation: "GetMapping", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the Table definition in a Data Catalog for a specified table.
    public func getTable(_ input: GetTableRequest) throws -> EventLoopFuture<GetTableResponse> {
        return try client.send(operation: "GetTable", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a connection from the Data Catalog.
    public func deleteConnection(_ input: DeleteConnectionRequest) throws -> EventLoopFuture<DeleteConnectionResponse> {
        return try client.send(operation: "DeleteConnection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the status of a migration operation.
    public func getCatalogImportStatus(_ input: GetCatalogImportStatusRequest) throws -> EventLoopFuture<GetCatalogImportStatusResponse> {
        return try client.send(operation: "GetCatalogImportStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified policy.
    public func deleteResourcePolicy(_ input: DeleteResourcePolicyRequest) throws -> EventLoopFuture<DeleteResourcePolicyResponse> {
        return try client.send(operation: "DeleteResourcePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a list of connection definitions from the Data Catalog.
    public func batchDeleteConnection(_ input: BatchDeleteConnectionRequest) throws -> EventLoopFuture<BatchDeleteConnectionResponse> {
        return try client.send(operation: "BatchDeleteConnection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a crawler. If a crawler is running, you must stop it using StopCrawler before updating it.
    public func updateCrawler(_ input: UpdateCrawlerRequest) throws -> EventLoopFuture<UpdateCrawlerResponse> {
        return try client.send(operation: "UpdateCrawler", path: "/", httpMethod: "POST", input: input)
    }

    ///  Changes the schedule state of the specified crawler to SCHEDULED, unless the crawler is already running or the schedule state is already SCHEDULED.
    public func startCrawlerSchedule(_ input: StartCrawlerScheduleRequest) throws -> EventLoopFuture<StartCrawlerScheduleResponse> {
        return try client.send(operation: "StartCrawlerSchedule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new security configuration.
    public func createSecurityConfiguration(_ input: CreateSecurityConfigurationRequest) throws -> EventLoopFuture<CreateSecurityConfigurationResponse> {
        return try client.send(operation: "CreateSecurityConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the schedule of a crawler using a cron expression. 
    public func updateCrawlerSchedule(_ input: UpdateCrawlerScheduleRequest) throws -> EventLoopFuture<UpdateCrawlerScheduleResponse> {
        return try client.send(operation: "UpdateCrawlerSchedule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the security configuration for a specified catalog.
    public func getDataCatalogEncryptionSettings(_ input: GetDataCatalogEncryptionSettingsRequest) throws -> EventLoopFuture<GetDataCatalogEncryptionSettingsResponse> {
        return try client.send(operation: "GetDataCatalogEncryptionSettings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a multiple function definitions from the Data Catalog.
    public func getUserDefinedFunctions(_ input: GetUserDefinedFunctionsRequest) throws -> EventLoopFuture<GetUserDefinedFunctionsResponse> {
        return try client.send(operation: "GetUserDefinedFunctions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the definition of a trigger.
    public func getTrigger(_ input: GetTriggerRequest) throws -> EventLoopFuture<GetTriggerResponse> {
        return try client.send(operation: "GetTrigger", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of connection definitions from the Data Catalog.
    public func getConnections(_ input: GetConnectionsRequest) throws -> EventLoopFuture<GetConnectionsResponse> {
        return try client.send(operation: "GetConnections", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a table definition from the Data Catalog.  After completing this operation, you will no longer have access to the table versions and partitions that belong to the deleted table. AWS Glue deletes these "orphaned" resources asynchronously in a timely manner, at the discretion of the service. To ensure immediate deletion of all related resources, before calling DeleteTable, use DeleteTableVersion or BatchDeleteTableVersion, and DeletePartition or BatchDeletePartition, to delete any resources that belong to the table. 
    public func deleteTable(_ input: DeleteTableRequest) throws -> EventLoopFuture<DeleteTableResponse> {
        return try client.send(operation: "DeleteTable", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves all current job definitions.
    public func getJobs(_ input: GetJobsRequest) throws -> EventLoopFuture<GetJobsResponse> {
        return try client.send(operation: "GetJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets code to perform a specified mapping.
    public func getPlan(_ input: GetPlanRequest) throws -> EventLoopFuture<GetPlanResponse> {
        return try client.send(operation: "GetPlan", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes one or more partitions in a batch operation.
    public func batchDeletePartition(_ input: BatchDeletePartitionRequest) throws -> EventLoopFuture<BatchDeletePartitionResponse> {
        return try client.send(operation: "BatchDeletePartition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the security configuration for a specified catalog. Once the configuration has been set, the specified encryption is applied to every catalog write thereafter.
    public func putDataCatalogEncryptionSettings(_ input: PutDataCatalogEncryptionSettingsRequest) throws -> EventLoopFuture<PutDataCatalogEncryptionSettingsResponse> {
        return try client.send(operation: "PutDataCatalogEncryptionSettings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts a job run using a job definition.
    public func startJobRun(_ input: StartJobRunRequest) throws -> EventLoopFuture<StartJobRunResponse> {
        return try client.send(operation: "StartJobRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves an existing job definition.
    public func getJob(_ input: GetJobRequest) throws -> EventLoopFuture<GetJobResponse> {
        return try client.send(operation: "GetJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new partition.
    public func createPartition(_ input: CreatePartitionRequest) throws -> EventLoopFuture<CreatePartitionResponse> {
        return try client.send(operation: "CreatePartition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a trigger definition.
    public func updateTrigger(_ input: UpdateTriggerRequest) throws -> EventLoopFuture<UpdateTriggerResponse> {
        return try client.send(operation: "UpdateTrigger", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of all security configurations.
    public func getSecurityConfigurations(_ input: GetSecurityConfigurationsRequest) throws -> EventLoopFuture<GetSecurityConfigurationsResponse> {
        return try client.send(operation: "GetSecurityConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a partition.
    public func updatePartition(_ input: UpdatePartitionRequest) throws -> EventLoopFuture<UpdatePartitionResponse> {
        return try client.send(operation: "UpdatePartition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieve a classifier by name.
    public func getClassifier(_ input: GetClassifierRequest) throws -> EventLoopFuture<GetClassifierResponse> {
        return try client.send(operation: "GetClassifier", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a specified crawler from the Data Catalog, unless the crawler state is RUNNING.
    public func deleteCrawler(_ input: DeleteCrawlerRequest) throws -> EventLoopFuture<DeleteCrawlerResponse> {
        return try client.send(operation: "DeleteCrawler", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the definitions of some or all of the tables in a given Database.
    public func getTables(_ input: GetTablesRequest) throws -> EventLoopFuture<GetTablesResponse> {
        return try client.send(operation: "GetTables", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new job definition.
    public func createJob(_ input: CreateJobRequest) throws -> EventLoopFuture<CreateJobResponse> {
        return try client.send(operation: "CreateJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the schedule state of the specified crawler to NOT_SCHEDULED, but does not stop the crawler if it is already running.
    public func stopCrawlerSchedule(_ input: StopCrawlerScheduleRequest) throws -> EventLoopFuture<StopCrawlerScheduleResponse> {
        return try client.send(operation: "StopCrawlerSchedule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes multiple tables at once.  After completing this operation, you will no longer have access to the table versions and partitions that belong to the deleted table. AWS Glue deletes these "orphaned" resources asynchronously in a timely manner, at the discretion of the service. To ensure immediate deletion of all related resources, before calling BatchDeleteTable, use DeleteTableVersion or BatchDeleteTableVersion, and DeletePartition or BatchDeletePartition, to delete any resources that belong to the table. 
    public func batchDeleteTable(_ input: BatchDeleteTableRequest) throws -> EventLoopFuture<BatchDeleteTableResponse> {
        return try client.send(operation: "BatchDeleteTable", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a specified function definition from the Data Catalog.
    public func getUserDefinedFunction(_ input: GetUserDefinedFunctionRequest) throws -> EventLoopFuture<GetUserDefinedFunctionResponse> {
        return try client.send(operation: "GetUserDefinedFunction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of strings that identify available versions of a specified table.
    public func getTableVersions(_ input: GetTableVersionsRequest) throws -> EventLoopFuture<GetTableVersionsResponse> {
        return try client.send(operation: "GetTableVersions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves information about the partitions in a table.
    public func getPartitions(_ input: GetPartitionsRequest) throws -> EventLoopFuture<GetPartitionsResponse> {
        return try client.send(operation: "GetPartitions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a specified DevEndpoint.
    public func updateDevEndpoint(_ input: UpdateDevEndpointRequest) throws -> EventLoopFuture<UpdateDevEndpointResponse> {
        return try client.send(operation: "UpdateDevEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an existing job definition.
    public func updateJob(_ input: UpdateJobRequest) throws -> EventLoopFuture<UpdateJobResponse> {
        return try client.send(operation: "UpdateJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts a crawl using the specified crawler, regardless of what is scheduled. If the crawler is already running, returns a CrawlerRunningException.
    public func startCrawler(_ input: StartCrawlerRequest) throws -> EventLoopFuture<StartCrawlerResponse> {
        return try client.send(operation: "StartCrawler", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the metadata for a given job run.
    public func getJobRun(_ input: GetJobRunRequest) throws -> EventLoopFuture<GetJobRunResponse> {
        return try client.send(operation: "GetJobRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Transforms a directed acyclic graph (DAG) into code.
    public func createScript(_ input: CreateScriptRequest) throws -> EventLoopFuture<CreateScriptResponse> {
        return try client.send(operation: "CreateScript", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new DevEndpoint.
    public func createDevEndpoint(_ input: CreateDevEndpointRequest) throws -> EventLoopFuture<CreateDevEndpointResponse> {
        return try client.send(operation: "CreateDevEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves all Databases defined in a given Data Catalog.
    public func getDatabases(_ input: GetDatabasesRequest) throws -> EventLoopFuture<GetDatabasesResponse> {
        return try client.send(operation: "GetDatabases", path: "/", httpMethod: "POST", input: input)
    }

    ///  Transforms a Python script into a directed acyclic graph (DAG). 
    public func getDataflowGraph(_ input: GetDataflowGraphRequest) throws -> EventLoopFuture<GetDataflowGraphResponse> {
        return try client.send(operation: "GetDataflowGraph", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified job definition. If the job definition is not found, no exception is thrown.
    public func deleteJob(_ input: DeleteJobRequest) throws -> EventLoopFuture<DeleteJobResponse> {
        return try client.send(operation: "DeleteJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified partition.
    public func deletePartition(_ input: DeletePartitionRequest) throws -> EventLoopFuture<DeletePartitionResponse> {
        return try client.send(operation: "DeletePartition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a connection definition from the Data Catalog.
    public func getConnection(_ input: GetConnectionRequest) throws -> EventLoopFuture<GetConnectionResponse> {
        return try client.send(operation: "GetConnection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new database in a Data Catalog.
    public func createDatabase(_ input: CreateDatabaseRequest) throws -> EventLoopFuture<CreateDatabaseResponse> {
        return try client.send(operation: "CreateDatabase", path: "/", httpMethod: "POST", input: input)
    }

    ///  Resets a bookmark entry.
    public func resetJobBookmark(_ input: ResetJobBookmarkRequest) throws -> EventLoopFuture<ResetJobBookmarkResponse> {
        return try client.send(operation: "ResetJobBookmark", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a connection definition in the Data Catalog.
    public func createConnection(_ input: CreateConnectionRequest) throws -> EventLoopFuture<CreateConnectionResponse> {
        return try client.send(operation: "CreateConnection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves metadata for all runs of a given job definition.
    public func getJobRuns(_ input: GetJobRunsRequest) throws -> EventLoopFuture<GetJobRunsResponse> {
        return try client.send(operation: "GetJobRuns", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves all the DevEndpoints in this AWS account.  When you create a development endpoint in a virtual private cloud (VPC), AWS Glue returns only a private IP address and the public IP address field is not populated. When you create a non-VPC development endpoint, AWS Glue returns only a public IP address. 
    public func getDevEndpoints(_ input: GetDevEndpointsRequest) throws -> EventLoopFuture<GetDevEndpointsResponse> {
        return try client.send(operation: "GetDevEndpoints", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified trigger. If the trigger is not found, no exception is thrown.
    public func deleteTrigger(_ input: DeleteTriggerRequest) throws -> EventLoopFuture<DeleteTriggerResponse> {
        return try client.send(operation: "DeleteTrigger", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a specified version of a table.
    public func getTableVersion(_ input: GetTableVersionRequest) throws -> EventLoopFuture<GetTableVersionResponse> {
        return try client.send(operation: "GetTableVersion", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified batch of versions of a table.
    public func batchDeleteTableVersion(_ input: BatchDeleteTableVersionRequest) throws -> EventLoopFuture<BatchDeleteTableVersionResponse> {
        return try client.send(operation: "BatchDeleteTableVersion", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the definition of a specified database.
    public func getDatabase(_ input: GetDatabaseRequest) throws -> EventLoopFuture<GetDatabaseResponse> {
        return try client.send(operation: "GetDatabase", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves metrics about specified crawlers.
    public func getCrawlerMetrics(_ input: GetCrawlerMetricsRequest) throws -> EventLoopFuture<GetCrawlerMetricsResponse> {
        return try client.send(operation: "GetCrawlerMetrics", path: "/", httpMethod: "POST", input: input)
    }


}