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
Client object for interacting with AWS QuickSight service.

Amazon QuickSight API Reference Amazon QuickSight is a fully managed, serverless business intelligence service for the AWS Cloud that makes it easy to extend data and insights to every user in your organization. This API reference contains documentation for a programming interface that you can use to manage Amazon QuickSight. 
*/
public struct QuickSight {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the QuickSight client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "quicksight",
            serviceProtocol: .restjson,
            apiVersion: "2018-04-01",
            endpoint: endpoint,
            possibleErrorTypes: [QuickSightErrorType.self]
        )
    }
    
    //MARK: API Calls

    ///  Cancels an ongoing ingestion of data into SPICE.
    public func cancelIngestion(_ input: CancelIngestionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelIngestionResponse> {
        return client.execute(operation: "CancelIngestion", path: "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a dashboard from a template. To first create a template, see the CreateTemplate API operation. A dashboard is an entity in QuickSight that identifies QuickSight reports, created from analyses. You can share QuickSight dashboards. With the right permissions, you can create scheduled email reports from them. The CreateDashboard, DescribeDashboard, and ListDashboardsByUser API operations act on the dashboard entity. If you have the correct permissions, you can create a dashboard from a template that exists in a different AWS account.
    public func createDashboard(_ input: CreateDashboardRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDashboardResponse> {
        return client.execute(operation: "CreateDashboard", path: "/accounts/{AwsAccountId}/dashboards/{DashboardId}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a dataset.
    public func createDataSet(_ input: CreateDataSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDataSetResponse> {
        return client.execute(operation: "CreateDataSet", path: "/accounts/{AwsAccountId}/data-sets", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a data source.
    public func createDataSource(_ input: CreateDataSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDataSourceResponse> {
        return client.execute(operation: "CreateDataSource", path: "/accounts/{AwsAccountId}/data-sources", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates an Amazon QuickSight group. The permissions resource is arn:aws:quicksight:us-east-1:&lt;relevant-aws-account-id&gt;:group/default/&lt;group-name&gt; . The response is a group object.
    public func createGroup(_ input: CreateGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGroupResponse> {
        return client.execute(operation: "CreateGroup", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Adds an Amazon QuickSight user to an Amazon QuickSight group. 
    public func createGroupMembership(_ input: CreateGroupMembershipRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGroupMembershipResponse> {
        return client.execute(operation: "CreateGroupMembership", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates an assignment with one specified IAM policy, identified by its Amazon Resource Name (ARN). This policy will be assigned to specified groups or users of Amazon QuickSight. The users and groups need to be in the same namespace. 
    public func createIAMPolicyAssignment(_ input: CreateIAMPolicyAssignmentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIAMPolicyAssignmentResponse> {
        return client.execute(operation: "CreateIAMPolicyAssignment", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates and starts a new SPICE ingestion on a dataset Any ingestions operating on tagged datasets inherit the same tags automatically for use in access control. For an example, see How do I create an IAM policy to control access to Amazon EC2 resources using tags? in the AWS Knowledge Center. Tags are visible on the tagged dataset, but not on the ingestion resource.
    public func createIngestion(_ input: CreateIngestionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIngestionResponse> {
        return client.execute(operation: "CreateIngestion", path: "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a template from an existing QuickSight analysis or template. You can use the resulting template to create a dashboard. A template is an entity in QuickSight that encapsulates the metadata required to create an analysis and that you can use to create s dashboard. A template adds a layer of abstraction by using placeholders to replace the dataset associated with the analysis. You can use templates to create dashboards by replacing dataset placeholders with datasets that follow the same schema that was used to create the source analysis and template.
    public func createTemplate(_ input: CreateTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTemplateResponse> {
        return client.execute(operation: "CreateTemplate", path: "/accounts/{AwsAccountId}/templates/{TemplateId}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a template alias for a template.
    public func createTemplateAlias(_ input: CreateTemplateAliasRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTemplateAliasResponse> {
        return client.execute(operation: "CreateTemplateAlias", path: "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a dashboard.
    public func deleteDashboard(_ input: DeleteDashboardRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDashboardResponse> {
        return client.execute(operation: "DeleteDashboard", path: "/accounts/{AwsAccountId}/dashboards/{DashboardId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a dataset.
    public func deleteDataSet(_ input: DeleteDataSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDataSetResponse> {
        return client.execute(operation: "DeleteDataSet", path: "/accounts/{AwsAccountId}/data-sets/{DataSetId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the data source permanently. This action breaks all the datasets that reference the deleted data source.
    public func deleteDataSource(_ input: DeleteDataSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDataSourceResponse> {
        return client.execute(operation: "DeleteDataSource", path: "/accounts/{AwsAccountId}/data-sources/{DataSourceId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes a user group from Amazon QuickSight. 
    public func deleteGroup(_ input: DeleteGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGroupResponse> {
        return client.execute(operation: "DeleteGroup", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes a user from a group so that the user is no longer a member of the group.
    public func deleteGroupMembership(_ input: DeleteGroupMembershipRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGroupMembershipResponse> {
        return client.execute(operation: "DeleteGroupMembership", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes an existing IAM policy assignment.
    public func deleteIAMPolicyAssignment(_ input: DeleteIAMPolicyAssignmentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIAMPolicyAssignmentResponse> {
        return client.execute(operation: "DeleteIAMPolicyAssignment", path: "/accounts/{AwsAccountId}/namespace/{Namespace}/iam-policy-assignments/{AssignmentName}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a template.
    public func deleteTemplate(_ input: DeleteTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTemplateResponse> {
        return client.execute(operation: "DeleteTemplate", path: "/accounts/{AwsAccountId}/templates/{TemplateId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the item that the specified template alias points to. If you provide a specific alias, you delete the version of the template that the alias points to.
    public func deleteTemplateAlias(_ input: DeleteTemplateAliasRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTemplateAliasResponse> {
        return client.execute(operation: "DeleteTemplateAlias", path: "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the Amazon QuickSight user that is associated with the identity of the AWS Identity and Access Management (IAM) user or role that's making the call. The IAM user isn't deleted as a result of this call. 
    public func deleteUser(_ input: DeleteUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserResponse> {
        return client.execute(operation: "DeleteUser", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a user identified by its principal ID. 
    public func deleteUserByPrincipalId(_ input: DeleteUserByPrincipalIdRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserByPrincipalIdResponse> {
        return client.execute(operation: "DeleteUserByPrincipalId", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/user-principals/{PrincipalId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provides a summary for a dashboard.
    public func describeDashboard(_ input: DescribeDashboardRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDashboardResponse> {
        return client.execute(operation: "DescribeDashboard", path: "/accounts/{AwsAccountId}/dashboards/{DashboardId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes read and write permissions for a dashboard.
    public func describeDashboardPermissions(_ input: DescribeDashboardPermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDashboardPermissionsResponse> {
        return client.execute(operation: "DescribeDashboardPermissions", path: "/accounts/{AwsAccountId}/dashboards/{DashboardId}/permissions", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes a dataset. 
    public func describeDataSet(_ input: DescribeDataSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataSetResponse> {
        return client.execute(operation: "DescribeDataSet", path: "/accounts/{AwsAccountId}/data-sets/{DataSetId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes the permissions on a dataset. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/data-set-id.
    public func describeDataSetPermissions(_ input: DescribeDataSetPermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataSetPermissionsResponse> {
        return client.execute(operation: "DescribeDataSetPermissions", path: "/accounts/{AwsAccountId}/data-sets/{DataSetId}/permissions", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes a data source.
    public func describeDataSource(_ input: DescribeDataSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataSourceResponse> {
        return client.execute(operation: "DescribeDataSource", path: "/accounts/{AwsAccountId}/data-sources/{DataSourceId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes the resource permissions for a data source.
    public func describeDataSourcePermissions(_ input: DescribeDataSourcePermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataSourcePermissionsResponse> {
        return client.execute(operation: "DescribeDataSourcePermissions", path: "/accounts/{AwsAccountId}/data-sources/{DataSourceId}/permissions", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns an Amazon QuickSight group's description and Amazon Resource Name (ARN). 
    public func describeGroup(_ input: DescribeGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupResponse> {
        return client.execute(operation: "DescribeGroup", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes an existing IAM policy assignment, as specified by the assignment name.
    public func describeIAMPolicyAssignment(_ input: DescribeIAMPolicyAssignmentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIAMPolicyAssignmentResponse> {
        return client.execute(operation: "DescribeIAMPolicyAssignment", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/{AssignmentName}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes a SPICE ingestion.
    public func describeIngestion(_ input: DescribeIngestionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIngestionResponse> {
        return client.execute(operation: "DescribeIngestion", path: "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes a template's metadata.
    public func describeTemplate(_ input: DescribeTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTemplateResponse> {
        return client.execute(operation: "DescribeTemplate", path: "/accounts/{AwsAccountId}/templates/{TemplateId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes the template alias for a template.
    public func describeTemplateAlias(_ input: DescribeTemplateAliasRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTemplateAliasResponse> {
        return client.execute(operation: "DescribeTemplateAlias", path: "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes read and write permissions on a template.
    public func describeTemplatePermissions(_ input: DescribeTemplatePermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTemplatePermissionsResponse> {
        return client.execute(operation: "DescribeTemplatePermissions", path: "/accounts/{AwsAccountId}/templates/{TemplateId}/permissions", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns information about a user, given the user name. 
    public func describeUser(_ input: DescribeUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResponse> {
        return client.execute(operation: "DescribeUser", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Generates a URL and authorization code that you can embed in your web server code. Before you use this command, make sure that you have configured the dashboards and permissions.  Currently, you can use GetDashboardEmbedURL only from the server, not from the user's browser. The following rules apply to the combination of URL and authorization code:   They must be used together.   They can be used one time only.   They are valid for 5 minutes after you run this command.   The resulting user session is valid for 10 hours.    For more information, see Embedding Amazon QuickSight Dashboards in the Amazon QuickSight User Guide or Embedding Amazon QuickSight Dashboards in the Amazon QuickSight API Reference.
    public func getDashboardEmbedUrl(_ input: GetDashboardEmbedUrlRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDashboardEmbedUrlResponse> {
        return client.execute(operation: "GetDashboardEmbedUrl", path: "/accounts/{AwsAccountId}/dashboards/{DashboardId}/embed-url", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists all the versions of the dashboards in the QuickSight subscription.
    public func listDashboardVersions(_ input: ListDashboardVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDashboardVersionsResponse> {
        return client.execute(operation: "ListDashboardVersions", path: "/accounts/{AwsAccountId}/dashboards/{DashboardId}/versions", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists dashboards in an AWS account.
    public func listDashboards(_ input: ListDashboardsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDashboardsResponse> {
        return client.execute(operation: "ListDashboards", path: "/accounts/{AwsAccountId}/dashboards", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists all of the datasets belonging to the current AWS account in an AWS Region. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/*.
    public func listDataSets(_ input: ListDataSetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataSetsResponse> {
        return client.execute(operation: "ListDataSets", path: "/accounts/{AwsAccountId}/data-sets", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists data sources in current AWS Region that belong to this AWS account.
    public func listDataSources(_ input: ListDataSourcesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataSourcesResponse> {
        return client.execute(operation: "ListDataSources", path: "/accounts/{AwsAccountId}/data-sources", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists member users in a group.
    public func listGroupMemberships(_ input: ListGroupMembershipsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListGroupMembershipsResponse> {
        return client.execute(operation: "ListGroupMemberships", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists all user groups in Amazon QuickSight. 
    public func listGroups(_ input: ListGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListGroupsResponse> {
        return client.execute(operation: "ListGroups", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists IAM policy assignments in the current Amazon QuickSight account.
    public func listIAMPolicyAssignments(_ input: ListIAMPolicyAssignmentsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIAMPolicyAssignmentsResponse> {
        return client.execute(operation: "ListIAMPolicyAssignments", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists all the IAM policy assignments, including the Amazon Resource Names (ARNs) for the IAM policies assigned to the specified user and group or groups that the user belongs to.
    public func listIAMPolicyAssignmentsForUser(_ input: ListIAMPolicyAssignmentsForUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIAMPolicyAssignmentsForUserResponse> {
        return client.execute(operation: "ListIAMPolicyAssignmentsForUser", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/iam-policy-assignments", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the history of SPICE ingestions for a dataset.
    public func listIngestions(_ input: ListIngestionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIngestionsResponse> {
        return client.execute(operation: "ListIngestions", path: "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the tags assigned to a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/resources/{ResourceArn}/tags", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists all the aliases of a template.
    public func listTemplateAliases(_ input: ListTemplateAliasesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTemplateAliasesResponse> {
        return client.execute(operation: "ListTemplateAliases", path: "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists all the versions of the templates in the current Amazon QuickSight account.
    public func listTemplateVersions(_ input: ListTemplateVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTemplateVersionsResponse> {
        return client.execute(operation: "ListTemplateVersions", path: "/accounts/{AwsAccountId}/templates/{TemplateId}/versions", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists all the templates in the current Amazon QuickSight account.
    public func listTemplates(_ input: ListTemplatesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTemplatesResponse> {
        return client.execute(operation: "ListTemplates", path: "/accounts/{AwsAccountId}/templates", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the Amazon QuickSight groups that an Amazon QuickSight user is a member of.
    public func listUserGroups(_ input: ListUserGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUserGroupsResponse> {
        return client.execute(operation: "ListUserGroups", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/groups", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of all of the Amazon QuickSight users belonging to this account. 
    public func listUsers(_ input: ListUsersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersResponse> {
        return client.execute(operation: "ListUsers", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates an Amazon QuickSight user, whose identity is associated with the AWS Identity and Access Management (IAM) identity or role specified in the request. 
    public func registerUser(_ input: RegisterUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterUserResponse> {
        return client.execute(operation: "RegisterUser", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Searchs for dashboards that belong to a user. 
    public func searchDashboards(_ input: SearchDashboardsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchDashboardsResponse> {
        return client.execute(operation: "SearchDashboards", path: "/accounts/{AwsAccountId}/search/dashboards", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Assigns one or more tags (key-value pairs) to the specified QuickSight resource.  Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. You can use the TagResource operation with a resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource. QuickSight supports tagging on data set, data source, dashboard, and template.  Tagging for QuickSight works in a similar way to tagging for other AWS services, except for the following:   You can't use tags to track AWS costs for QuickSight. This restriction is because QuickSight costs are based on users and SPICE capacity, which aren't taggable resources.   QuickSight doesn't currently support the Tag Editor for AWS Resource Groups.  
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/resources/{ResourceArn}/tags", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes a tag or tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/resources/{ResourceArn}/tags", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a dashboard in an AWS account.
    public func updateDashboard(_ input: UpdateDashboardRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDashboardResponse> {
        return client.execute(operation: "UpdateDashboard", path: "/accounts/{AwsAccountId}/dashboards/{DashboardId}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates read and write permissions on a dashboard.
    public func updateDashboardPermissions(_ input: UpdateDashboardPermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDashboardPermissionsResponse> {
        return client.execute(operation: "UpdateDashboardPermissions", path: "/accounts/{AwsAccountId}/dashboards/{DashboardId}/permissions", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the published version of a dashboard.
    public func updateDashboardPublishedVersion(_ input: UpdateDashboardPublishedVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDashboardPublishedVersionResponse> {
        return client.execute(operation: "UpdateDashboardPublishedVersion", path: "/accounts/{AwsAccountId}/dashboards/{DashboardId}/versions/{VersionNumber}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a dataset.
    public func updateDataSet(_ input: UpdateDataSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDataSetResponse> {
        return client.execute(operation: "UpdateDataSet", path: "/accounts/{AwsAccountId}/data-sets/{DataSetId}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the permissions on a dataset. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/data-set-id.
    public func updateDataSetPermissions(_ input: UpdateDataSetPermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDataSetPermissionsResponse> {
        return client.execute(operation: "UpdateDataSetPermissions", path: "/accounts/{AwsAccountId}/data-sets/{DataSetId}/permissions", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a data source.
    public func updateDataSource(_ input: UpdateDataSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDataSourceResponse> {
        return client.execute(operation: "UpdateDataSource", path: "/accounts/{AwsAccountId}/data-sources/{DataSourceId}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the permissions to a data source.
    public func updateDataSourcePermissions(_ input: UpdateDataSourcePermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDataSourcePermissionsResponse> {
        return client.execute(operation: "UpdateDataSourcePermissions", path: "/accounts/{AwsAccountId}/data-sources/{DataSourceId}/permissions", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Changes a group description. 
    public func updateGroup(_ input: UpdateGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGroupResponse> {
        return client.execute(operation: "UpdateGroup", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates an existing IAM policy assignment. This operation updates only the optional parameter or parameters that are specified in the request.
    public func updateIAMPolicyAssignment(_ input: UpdateIAMPolicyAssignmentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateIAMPolicyAssignmentResponse> {
        return client.execute(operation: "UpdateIAMPolicyAssignment", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/{AssignmentName}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a template from an existing Amazon QuickSight analysis or another template.
    public func updateTemplate(_ input: UpdateTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTemplateResponse> {
        return client.execute(operation: "UpdateTemplate", path: "/accounts/{AwsAccountId}/templates/{TemplateId}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the template alias of a template.
    public func updateTemplateAlias(_ input: UpdateTemplateAliasRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTemplateAliasResponse> {
        return client.execute(operation: "UpdateTemplateAlias", path: "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the resource permissions for a template.
    public func updateTemplatePermissions(_ input: UpdateTemplatePermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTemplatePermissionsResponse> {
        return client.execute(operation: "UpdateTemplatePermissions", path: "/accounts/{AwsAccountId}/templates/{TemplateId}/permissions", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates an Amazon QuickSight user.
    public func updateUser(_ input: UpdateUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateUserResponse> {
        return client.execute(operation: "UpdateUser", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
