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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore

/*
Client object for interacting with AWS ResourceGroups service.

AWS Resource Groups AWS Resource Groups lets you organize AWS resources such as Amazon EC2 instances, Amazon Relational Database Service databases, and Amazon S3 buckets into groups using criteria that you define as tags. A resource group is a collection of resources that match the resource types specified in a query, and share one or more tags or portions of tags. You can create a group of resources based on their roles in your cloud infrastructure, lifecycle stages, regions, application layers, or virtually any criteria. Resource groups enable you to automate management tasks, such as those in AWS Systems Manager Automation documents, on tag-related resources in AWS Systems Manager. Groups of tagged resources also let you quickly view a custom console in AWS Systems Manager that shows AWS Config compliance and other monitoring data about member resources. To create a resource group, build a resource query, and specify tags that identify the criteria that members of the group have in common. Tags are key-value pairs. For more information about Resource Groups, see the AWS Resource Groups User Guide. AWS Resource Groups uses a REST-compliant API that you can use to perform the following types of operations.   Create, Read, Update, and Delete (CRUD) operations on resource groups and resource query entities   Applying, editing, and removing tags from resource groups   Resolving resource group member ARNs so they can be returned as search results   Getting data about resources that are members of a group   Searching AWS resources based on a resource query  
*/
public struct ResourceGroups: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ResourceGroups client
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
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "resource-groups",
            serviceProtocol: .restjson,
            apiVersion: "2017-11-27",
            endpoint: endpoint,
            possibleErrorTypes: [ResourceGroupsErrorType.self],
            timeout: timeout
        )
    }
    
    // MARK: API Calls

    ///  Creates a resource group with the specified name and description. You can optionally include a resource query, or a service configuration.
    public func createGroup(_ input: CreateGroupInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateGroupOutput> {
        return self.client.execute(operation: "CreateGroup", path: "/groups", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the specified resource group. Deleting a resource group does not delete any resources that are members of the group; it only deletes the group structure.
    public func deleteGroup(_ input: DeleteGroupInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteGroupOutput> {
        return self.client.execute(operation: "DeleteGroup", path: "/delete-group", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about a specified resource group.
    public func getGroup(_ input: GetGroupInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetGroupOutput> {
        return self.client.execute(operation: "GetGroup", path: "/get-group", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the service configuration associated with the specified resource group. AWS Resource Groups supports configurations for the following resource group types:    AWS::EC2::CapacityReservationPool - Amazon EC2 capacity reservation pools. For more information, see Working with capacity reservation groups in the EC2 Users Guide.  
    public func getGroupConfiguration(_ input: GetGroupConfigurationInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetGroupConfigurationOutput> {
        return self.client.execute(operation: "GetGroupConfiguration", path: "/get-group-configuration", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the resource query associated with the specified resource group.
    public func getGroupQuery(_ input: GetGroupQueryInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetGroupQueryOutput> {
        return self.client.execute(operation: "GetGroupQuery", path: "/get-group-query", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of tags that are associated with a resource group, specified by an ARN.
    public func getTags(_ input: GetTagsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetTagsOutput> {
        return self.client.execute(operation: "GetTags", path: "/resources/{Arn}/tags", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds the specified resources to the specified group.
    public func groupResources(_ input: GroupResourcesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GroupResourcesOutput> {
        return self.client.execute(operation: "GroupResources", path: "/group-resources", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of ARNs of the resources that are members of a specified resource group.
    public func listGroupResources(_ input: ListGroupResourcesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListGroupResourcesOutput> {
        return self.client.execute(operation: "ListGroupResources", path: "/list-group-resources", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of existing resource groups in your account.
    public func listGroups(_ input: ListGroupsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListGroupsOutput> {
        return self.client.execute(operation: "ListGroups", path: "/groups-list", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of AWS resource identifiers that matches tne specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.
    public func searchResources(_ input: SearchResourcesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<SearchResourcesOutput> {
        return self.client.execute(operation: "SearchResources", path: "/resources/search", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds tags to a resource group with the specified ARN. Existing tags on a resource group are not changed if they are not specified in the request parameters.  Do not store personally identifiable information (PII) or other confidential or sensitive information in tags. We use tags to provide you with billing and administration services. Tags are not intended to be used for private or sensitive data. 
    public func tag(_ input: TagInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagOutput> {
        return self.client.execute(operation: "Tag", path: "/resources/{Arn}/tags", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes the specified resources from the specified group.
    public func ungroupResources(_ input: UngroupResourcesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UngroupResourcesOutput> {
        return self.client.execute(operation: "UngroupResources", path: "/ungroup-resources", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes tags from a specified resource group.
    public func untag(_ input: UntagInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagOutput> {
        return self.client.execute(operation: "Untag", path: "/resources/{Arn}/tags", httpMethod: .PATCH, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the description for an existing group. You cannot update the name of a resource group.
    public func updateGroup(_ input: UpdateGroupInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateGroupOutput> {
        return self.client.execute(operation: "UpdateGroup", path: "/update-group", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the resource query of a group.
    public func updateGroupQuery(_ input: UpdateGroupQueryInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateGroupQueryOutput> {
        return self.client.execute(operation: "UpdateGroupQuery", path: "/update-group-query", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }
}
