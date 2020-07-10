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
Client object for interacting with AWS LakeFormation service.

AWS Lake Formation Defines the public endpoint for the AWS Lake Formation service.
*/
public struct LakeFormation {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the LakeFormation client
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
            amzTarget: "AWSLakeFormation",
            service: "lakeformation",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-03-31",
            endpoint: endpoint,
            possibleErrorTypes: [LakeFormationErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Batch operation to grant permissions to the principal.
    public func batchGrantPermissions(_ input: BatchGrantPermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGrantPermissionsResponse> {
        return client.execute(operation: "BatchGrantPermissions", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Batch operation to revoke permissions from the principal.
    public func batchRevokePermissions(_ input: BatchRevokePermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchRevokePermissionsResponse> {
        return client.execute(operation: "BatchRevokePermissions", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deregisters the resource as managed by the Data Catalog. When you deregister a path, Lake Formation removes the path from the inline policy attached to your service-linked role.
    public func deregisterResource(_ input: DeregisterResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterResourceResponse> {
        return client.execute(operation: "DeregisterResource", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves the current data access role for the given resource registered in AWS Lake Formation.
    public func describeResource(_ input: DescribeResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceResponse> {
        return client.execute(operation: "DescribeResource", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  The AWS Lake Formation principal.
    public func getDataLakeSettings(_ input: GetDataLakeSettingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataLakeSettingsResponse> {
        return client.execute(operation: "GetDataLakeSettings", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the permissions for a specified table or database resource located at a path in Amazon S3.
    public func getEffectivePermissionsForPath(_ input: GetEffectivePermissionsForPathRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEffectivePermissionsForPathResponse> {
        return client.execute(operation: "GetEffectivePermissionsForPath", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Grants permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. For information about permissions, see Security and Access Control to Metadata and Data.
    public func grantPermissions(_ input: GrantPermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GrantPermissionsResponse> {
        return client.execute(operation: "GrantPermissions", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of the principal permissions on the resource, filtered by the permissions of the caller. For example, if you are granted an ALTER permission, you are able to see only the principal permissions for ALTER. This operation returns only those permissions that have been explicitly granted. For information about permissions, see Security and Access Control to Metadata and Data.
    public func listPermissions(_ input: ListPermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPermissionsResponse> {
        return client.execute(operation: "ListPermissions", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the resources registered to be managed by the Data Catalog.
    public func listResources(_ input: ListResourcesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResourcesResponse> {
        return client.execute(operation: "ListResources", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  The AWS Lake Formation principal.
    public func putDataLakeSettings(_ input: PutDataLakeSettingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutDataLakeSettingsResponse> {
        return client.execute(operation: "PutDataLakeSettings", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Registers the resource as managed by the Data Catalog. To add or update data, Lake Formation needs read/write access to the chosen Amazon S3 path. Choose a role that you know has permission to do this, or choose the AWSServiceRoleForLakeFormationDataAccess service-linked role. When you register the first Amazon S3 path, the service-linked role and a new inline policy are created on your behalf. Lake Formation adds the first path to the inline policy and attaches it to the service-linked role. When you register subsequent paths, Lake Formation adds the path to the existing policy.
    public func registerResource(_ input: RegisterResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterResourceResponse> {
        return client.execute(operation: "RegisterResource", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Revokes permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3.
    public func revokePermissions(_ input: RevokePermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokePermissionsResponse> {
        return client.execute(operation: "RevokePermissions", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the data access role used for vending access to the given (registered) resource in AWS Lake Formation. 
    public func updateResource(_ input: UpdateResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateResourceResponse> {
        return client.execute(operation: "UpdateResource", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
