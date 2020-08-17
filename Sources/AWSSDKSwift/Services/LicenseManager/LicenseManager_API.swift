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
Client object for interacting with AWS LicenseManager service.

 AWS License Manager  AWS License Manager makes it easier to manage licenses from software vendors across multiple AWS accounts and on-premises servers.
*/
public struct LicenseManager {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the LicenseManager client
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
            amzTarget: "AWSLicenseManager",
            service: "license-manager",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-08-01",
            endpoint: endpoint,
            possibleErrorTypes: [LicenseManagerErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Creates a license configuration. A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated Host, or all of these), license affinity to host (how long a license must be associated with a host), and the number of licenses purchased and used.
    public func createLicenseConfiguration(_ input: CreateLicenseConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateLicenseConfigurationResponse> {
        return client.execute(operation: "CreateLicenseConfiguration", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the specified license configuration. You cannot delete a license configuration that is in use.
    public func deleteLicenseConfiguration(_ input: DeleteLicenseConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteLicenseConfigurationResponse> {
        return client.execute(operation: "DeleteLicenseConfiguration", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets detailed information about the specified license configuration.
    public func getLicenseConfiguration(_ input: GetLicenseConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetLicenseConfigurationResponse> {
        return client.execute(operation: "GetLicenseConfiguration", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the License Manager settings for the current Region.
    public func getServiceSettings(_ input: GetServiceSettingsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetServiceSettingsResponse> {
        return client.execute(operation: "GetServiceSettings", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the resource associations for the specified license configuration. Resource associations need not consume licenses from a license configuration. For example, an AMI or a stopped instance might not consume a license (depending on the license rules).
    public func listAssociationsForLicenseConfiguration(_ input: ListAssociationsForLicenseConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListAssociationsForLicenseConfigurationResponse> {
        return client.execute(operation: "ListAssociationsForLicenseConfiguration", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the license configuration operations that failed.
    public func listFailuresForLicenseConfigurationOperations(_ input: ListFailuresForLicenseConfigurationOperationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListFailuresForLicenseConfigurationOperationsResponse> {
        return client.execute(operation: "ListFailuresForLicenseConfigurationOperations", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the license configurations for your account.
    public func listLicenseConfigurations(_ input: ListLicenseConfigurationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListLicenseConfigurationsResponse> {
        return client.execute(operation: "ListLicenseConfigurations", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the license configurations for the specified resource.
    public func listLicenseSpecificationsForResource(_ input: ListLicenseSpecificationsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListLicenseSpecificationsForResourceResponse> {
        return client.execute(operation: "ListLicenseSpecificationsForResource", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists resources managed using Systems Manager inventory.
    public func listResourceInventory(_ input: ListResourceInventoryRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListResourceInventoryResponse> {
        return client.execute(operation: "ListResourceInventory", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the tags for the specified license configuration.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists all license usage records for a license configuration, displaying license consumption details by resource at a selected point in time. Use this action to audit the current license consumption for any license inventory and configuration.
    public func listUsageForLicenseConfiguration(_ input: ListUsageForLicenseConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListUsageForLicenseConfigurationResponse> {
        return client.execute(operation: "ListUsageForLicenseConfiguration", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds the specified tags to the specified license configuration.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes the specified tags from the specified license configuration.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Modifies the attributes of an existing license configuration.
    public func updateLicenseConfiguration(_ input: UpdateLicenseConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateLicenseConfigurationResponse> {
        return client.execute(operation: "UpdateLicenseConfiguration", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds or removes the specified license configurations for the specified AWS resource. You can update the license specifications of AMIs, instances, and hosts. You cannot update the license specifications for launch templates and AWS CloudFormation templates, as they send license configurations to the operation that creates the resource.
    public func updateLicenseSpecificationsForResource(_ input: UpdateLicenseSpecificationsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateLicenseSpecificationsForResourceResponse> {
        return client.execute(operation: "UpdateLicenseSpecificationsForResource", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates License Manager settings for the current Region.
    public func updateServiceSettings(_ input: UpdateServiceSettingsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateServiceSettingsResponse> {
        return client.execute(operation: "UpdateServiceSettings", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
