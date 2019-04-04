// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Application Discovery Service AWS Application Discovery Service helps you plan application migration projects by automatically identifying servers, virtual machines (VMs), software, and software dependencies running in your on-premises data centers. Application Discovery Service also collects application performance data, which can help you assess the outcome of your migration. The data collected by Application Discovery Service is securely retained in an AWS-hosted and managed database in the cloud. You can export the data as a CSV or XML file into your preferred visualization tool or cloud-migration solution to plan your migration. For more information, see AWS Application Discovery Service FAQ. Application Discovery Service offers two modes of operation:    Agentless discovery mode is recommended for environments that use VMware vCenter Server. This mode doesn't require you to install an agent on each host. Agentless discovery gathers server information regardless of the operating systems, which minimizes the time required for initial on-premises infrastructure assessment. Agentless discovery doesn't collect information about software and software dependencies. It also doesn't work in non-VMware environments.     Agent-based discovery mode collects a richer set of data than agentless discovery by using the AWS Application Discovery Agent, which you install on one or more hosts in your data center. The agent captures infrastructure and application information, including an inventory of installed software applications, system and process performance, resource utilization, and network dependencies between workloads. The information collected by agents is secured at rest and in transit to the Application Discovery Service database in the cloud.    We recommend that you use agent-based discovery for non-VMware environments and to collect information about software and software dependencies. You can also run agent-based and agentless discovery simultaneously. Use agentless discovery to quickly complete the initial infrastructure assessment and then install agents on select hosts. Application Discovery Service integrates with application discovery solutions from AWS Partner Network (APN) partners. Third-party application discovery tools can query Application Discovery Service and write to the Application Discovery Service database using a public API. You can then import the data into either a visualization tool or cloud-migration solution.  Application Discovery Service doesn't gather sensitive information. All data is handled according to the AWS Privacy Policy. You can operate Application Discovery Service offline to inspect collected data before it is shared with the service.  Your AWS account must be granted access to Application Discovery Service, a process called whitelisting. This is true for AWS partners and customers alike. To request access, sign up for Application Discovery Service.  This API reference provides descriptions, syntax, and usage examples for each of the actions and data types for Application Discovery Service. The topic for each action shows the API request parameters and the response. Alternatively, you can use one of the AWS SDKs to access an API that is tailored to the programming language or platform that you're using. For more information, see AWS SDKs. This guide is intended for use with the  AWS Application Discovery Service User Guide .
*/
public struct ApplicationDiscoveryService {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSPoseidonService_V2015_11_01",
            service: "discovery",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-11-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [ApplicationDiscoveryServiceErrorType.self]
        )
    }

    ///  Instructs the specified agents or connectors to stop collecting data.
    public func stopDataCollectionByAgentIds(_ input: StopDataCollectionByAgentIdsRequest) throws -> EventLoopFuture<StopDataCollectionByAgentIdsResponse> {
        return try client.send(operation: "StopDataCollectionByAgentIds", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates one or more configuration items from an application.
    public func disassociateConfigurationItemsFromApplication(_ input: DisassociateConfigurationItemsFromApplicationRequest) throws -> EventLoopFuture<DisassociateConfigurationItemsFromApplicationResponse> {
        return try client.send(operation: "DisassociateConfigurationItemsFromApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists agents or connectors as specified by ID or other filters. All agents/connectors associated with your user account can be listed if you call DescribeAgents as is without passing any parameters.
    public func describeAgents(_ input: DescribeAgentsRequest) throws -> EventLoopFuture<DescribeAgentsResponse> {
        return try client.send(operation: "DescribeAgents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a list of applications and their associations with configuration items.
    public func deleteApplications(_ input: DeleteApplicationsRequest) throws -> EventLoopFuture<DeleteApplicationsResponse> {
        return try client.send(operation: "DeleteApplications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates one or more tags for configuration items. Tags are metadata that help you categorize IT assets. This API accepts a list of multiple configuration items.
    public func createTags(_ input: CreateTagsRequest) throws -> EventLoopFuture<CreateTagsResponse> {
        return try client.send(operation: "CreateTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deprecated. Use StartExportTask instead. Exports all discovered configuration data to an Amazon S3 bucket or an application that enables you to view and evaluate the data. Data includes tags and tag associations, processes, connections, servers, and system performance. This API returns an export ID that you can query using the DescribeExportConfigurations API. The system imposes a limit of two configuration exports in six hours.
    public func exportConfigurations() throws -> EventLoopFuture<ExportConfigurationsResponse> {
        return try client.send(operation: "ExportConfigurations", path: "/", httpMethod: "POST")
    }

    ///  Stop the continuous flow of agent's discovered data into Amazon Athena.
    public func stopContinuousExport(_ input: StopContinuousExportRequest) throws -> EventLoopFuture<StopContinuousExportResponse> {
        return try client.send(operation: "StopContinuousExport", path: "/", httpMethod: "POST", input: input)
    }

    ///  Start the continuous flow of agent's discovered data into Amazon Athena.
    public func startContinuousExport(_ input: StartContinuousExportRequest) throws -> EventLoopFuture<StartContinuousExportResponse> {
        return try client.send(operation: "StartContinuousExport", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves attributes for a list of configuration item IDs.  All of the supplied IDs must be for the same asset type from one of the follwoing:   server   application   process   connection   Output fields are specific to the asset type specified. For example, the output for a server configuration item includes a list of attributes about the server, such as host name, operating system, number of network cards, etc. For a complete list of outputs for each asset type, see Using the DescribeConfigurations Action. 
    public func describeConfigurations(_ input: DescribeConfigurationsRequest) throws -> EventLoopFuture<DescribeConfigurationsResponse> {
        return try client.send(operation: "DescribeConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an application with the given name and description.
    public func createApplication(_ input: CreateApplicationRequest) throws -> EventLoopFuture<CreateApplicationResponse> {
        return try client.send(operation: "CreateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists exports as specified by ID. All continuous exports associated with your user account can be listed if you call DescribeContinuousExports as is without passing any parameters.
    public func describeContinuousExports(_ input: DescribeContinuousExportsRequest) throws -> EventLoopFuture<DescribeContinuousExportsResponse> {
        return try client.send(operation: "DescribeContinuousExports", path: "/", httpMethod: "POST", input: input)
    }

    ///  Instructs the specified agents or connectors to start collecting data.
    public func startDataCollectionByAgentIds(_ input: StartDataCollectionByAgentIdsRequest) throws -> EventLoopFuture<StartDataCollectionByAgentIdsResponse> {
        return try client.send(operation: "StartDataCollectionByAgentIds", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieve status of one or more export tasks. You can retrieve the status of up to 100 export tasks.
    public func describeExportTasks(_ input: DescribeExportTasksRequest) throws -> EventLoopFuture<DescribeExportTasksResponse> {
        return try client.send(operation: "DescribeExportTasks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of servers that are one network hop away from a specified server.
    public func listServerNeighbors(_ input: ListServerNeighborsRequest) throws -> EventLoopFuture<ListServerNeighborsResponse> {
        return try client.send(operation: "ListServerNeighbors", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a short summary of discovered assets. This API operation takes no request parameters and is called as is at the command prompt as shown in the example.
    public func getDiscoverySummary(_ input: GetDiscoverySummaryRequest) throws -> EventLoopFuture<GetDiscoverySummaryResponse> {
        return try client.send(operation: "GetDiscoverySummary", path: "/", httpMethod: "POST", input: input)
    }

    ///   DescribeExportConfigurations is deprecated. Use instead  DescribeExportTasks .
    public func describeExportConfigurations(_ input: DescribeExportConfigurationsRequest) throws -> EventLoopFuture<DescribeExportConfigurationsResponse> {
        return try client.send(operation: "DescribeExportConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///   Begins the export of discovered data to an S3 bucket.  If you specify agentIds in a filter, the task exports up to 72 hours of detailed data collected by the identified Application Discovery Agent, including network, process, and performance details. A time range for exported agent data may be set by using startTime and endTime. Export of detailed agent data is limited to five concurrently running exports.   If you do not include an agentIds filter, summary data is exported that includes both AWS Agentless Discovery Connector data and summary data from AWS Discovery Agents. Export of summary data is limited to two exports per day. 
    public func startExportTask(_ input: StartExportTaskRequest) throws -> EventLoopFuture<StartExportTaskResponse> {
        return try client.send(operation: "StartExportTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates metadata about an application.
    public func updateApplication(_ input: UpdateApplicationRequest) throws -> EventLoopFuture<UpdateApplicationResponse> {
        return try client.send(operation: "UpdateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of configuration items that have tags as specified by the key-value pairs, name and value, passed to the optional parameter filters. There are three valid tag filter names:   tagKey   tagValue   configurationId   Also, all configuration items associated with your user account that have tags can be listed if you call DescribeTags as is without passing any parameters.
    public func describeTags(_ input: DescribeTagsRequest) throws -> EventLoopFuture<DescribeTagsResponse> {
        return try client.send(operation: "DescribeTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates one or more configuration items with an application.
    public func associateConfigurationItemsToApplication(_ input: AssociateConfigurationItemsToApplicationRequest) throws -> EventLoopFuture<AssociateConfigurationItemsToApplicationResponse> {
        return try client.send(operation: "AssociateConfigurationItemsToApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of configuration items as specified by the value passed to the required paramater configurationType. Optional filtering may be applied to refine search results.
    public func listConfigurations(_ input: ListConfigurationsRequest) throws -> EventLoopFuture<ListConfigurationsResponse> {
        return try client.send(operation: "ListConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the association between configuration items and one or more tags. This API accepts a list of multiple configuration items.
    public func deleteTags(_ input: DeleteTagsRequest) throws -> EventLoopFuture<DeleteTagsResponse> {
        return try client.send(operation: "DeleteTags", path: "/", httpMethod: "POST", input: input)
    }


}