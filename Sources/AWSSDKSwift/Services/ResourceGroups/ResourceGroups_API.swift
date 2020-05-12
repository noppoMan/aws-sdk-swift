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
Client object for interacting with AWS ResourceGroups service.

AWS Resource Groups AWS Resource Groups lets you organize AWS resources such as Amazon EC2 instances, Amazon Relational Database Service databases, and Amazon S3 buckets into groups using criteria that you define as tags. A resource group is a collection of resources that match the resource types specified in a query, and share one or more tags or portions of tags. You can create a group of resources based on their roles in your cloud infrastructure, lifecycle stages, regions, application layers, or virtually any criteria. Resource groups enable you to automate management tasks, such as those in AWS Systems Manager Automation documents, on tag-related resources in AWS Systems Manager. Groups of tagged resources also let you quickly view a custom console in AWS Systems Manager that shows AWS Config compliance and other monitoring data about member resources. To create a resource group, build a resource query, and specify tags that identify the criteria that members of the group have in common. Tags are key-value pairs. For more information about Resource Groups, see the AWS Resource Groups User Guide. AWS Resource Groups uses a REST-compliant API that you can use to perform the following types of operations.   Create, Read, Update, and Delete (CRUD) operations on resource groups and resource query entities   Applying, editing, and removing tags from resource groups   Resolving resource group member ARNs so they can be returned as search results   Getting data about resources that are members of a group   Searching AWS resources based on a resource query  
*/
public struct ResourceGroups {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ResourceGroups client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? .aws,
            service: "resource-groups",
            serviceProtocol: .restjson,
            apiVersion: "2017-11-27",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ResourceGroupsErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a group with a specified name, description, and resource query.
    public func createGroup(_ input: CreateGroupInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGroupOutput> {
        return client.send(operation: "CreateGroup", path: "/groups", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a specified resource group. Deleting a resource group does not delete resources that are members of the group; it only deletes the group structure.
    public func deleteGroup(_ input: DeleteGroupInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGroupOutput> {
        return client.send(operation: "DeleteGroup", path: "/groups/{GroupName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Returns information about a specified resource group.
    public func getGroup(_ input: GetGroupInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGroupOutput> {
        return client.send(operation: "GetGroup", path: "/groups/{GroupName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns the resource query associated with the specified resource group.
    public func getGroupQuery(_ input: GetGroupQueryInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGroupQueryOutput> {
        return client.send(operation: "GetGroupQuery", path: "/groups/{GroupName}/query", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of tags that are associated with a resource group, specified by an ARN.
    public func getTags(_ input: GetTagsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTagsOutput> {
        return client.send(operation: "GetTags", path: "/resources/{Arn}/tags", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of ARNs of resources that are members of a specified resource group.
    public func listGroupResources(_ input: ListGroupResourcesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListGroupResourcesOutput> {
        return client.send(operation: "ListGroupResources", path: "/groups/{GroupName}/resource-identifiers-list", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of existing resource groups in your account.
    public func listGroups(_ input: ListGroupsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListGroupsOutput> {
        return client.send(operation: "ListGroups", path: "/groups-list", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of AWS resource identifiers that matches a specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.
    public func searchResources(_ input: SearchResourcesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchResourcesOutput> {
        return client.send(operation: "SearchResources", path: "/resources/search", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds tags to a resource group with the specified ARN. Existing tags on a resource group are not changed if they are not specified in the request parameters.
    public func tag(_ input: TagInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagOutput> {
        return client.send(operation: "Tag", path: "/resources/{Arn}/tags", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Deletes specified tags from a specified resource.
    public func untag(_ input: UntagInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagOutput> {
        return client.send(operation: "Untag", path: "/resources/{Arn}/tags", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates an existing group with a new or changed description. You cannot update the name of a resource group.
    public func updateGroup(_ input: UpdateGroupInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGroupOutput> {
        return client.send(operation: "UpdateGroup", path: "/groups/{GroupName}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates the resource query of a group.
    public func updateGroupQuery(_ input: UpdateGroupQueryInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGroupQueryOutput> {
        return client.send(operation: "UpdateGroupQuery", path: "/groups/{GroupName}/query", httpMethod: "PUT", input: input, on: eventLoop)
    }
}
