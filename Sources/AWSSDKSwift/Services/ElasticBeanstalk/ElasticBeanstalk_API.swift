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
Client object for interacting with AWS ElasticBeanstalk service.

AWS Elastic Beanstalk AWS Elastic Beanstalk makes it easy for you to create, deploy, and manage scalable, fault-tolerant applications running on the Amazon Web Services cloud. For more information about this product, go to the AWS Elastic Beanstalk details page. The location of the latest AWS Elastic Beanstalk WSDL is http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl. To install the Software Development Kits (SDKs), Integrated Development Environment (IDE) Toolkits, and command line tools that enable you to access the API, go to Tools for Amazon Web Services.  Endpoints  For a list of region-specific endpoints that AWS Elastic Beanstalk supports, go to Regions and Endpoints in the Amazon Web Services Glossary.
*/
public struct ElasticBeanstalk {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ElasticBeanstalk client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? partition,
            service: "elasticbeanstalk",
            serviceProtocol: .query,
            apiVersion: "2010-12-01",
            endpoint: endpoint,
            serviceEndpoints: ["us-gov-east-1": "elasticbeanstalk.us-gov-east-1.amazonaws.com", "us-gov-west-1": "elasticbeanstalk.us-gov-west-1.amazonaws.com"],
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            possibleErrorTypes: [ElasticBeanstalkErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Cancels in-progress environment configuration update or application version deployment.
    @discardableResult public func abortEnvironmentUpdate(_ input: AbortEnvironmentUpdateMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "AbortEnvironmentUpdate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Applies a scheduled managed action immediately. A managed action can be applied only if its status is Scheduled. Get the status and action ID of a managed action with DescribeEnvironmentManagedActions.
    public func applyEnvironmentManagedAction(_ input: ApplyEnvironmentManagedActionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyEnvironmentManagedActionResult> {
        return client.send(operation: "ApplyEnvironmentManagedAction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Checks if the specified CNAME is available.
    public func checkDNSAvailability(_ input: CheckDNSAvailabilityMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckDNSAvailabilityResultMessage> {
        return client.send(operation: "CheckDNSAvailability", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Create or update a group of environments that each run a separate component of a single application. Takes a list of version labels that specify application source bundles for each of the environments to create or update. The name of each environment and other required information must be included in the source bundles in an environment manifest named env.yaml. See Compose Environments for details.
    public func composeEnvironments(_ input: ComposeEnvironmentsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnvironmentDescriptionsMessage> {
        return client.send(operation: "ComposeEnvironments", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an application that has one configuration template named default and no application versions.
    public func createApplication(_ input: CreateApplicationMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplicationDescriptionMessage> {
        return client.send(operation: "CreateApplication", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an application version for the specified application. You can create an application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the output of an AWS CodeBuild build as follows: Specify a commit in an AWS CodeCommit repository with SourceBuildInformation. Specify a build in an AWS CodeBuild with SourceBuildInformation and BuildConfiguration. Specify a source bundle in S3 with SourceBundle  Omit both SourceBuildInformation and SourceBundle to use the default sample application.  After you create an application version with a specified Amazon S3 bucket and key location, you can't change that Amazon S3 location. If you change the Amazon S3 location, you receive an exception when you attempt to launch an environment from the application version. 
    public func createApplicationVersion(_ input: CreateApplicationVersionMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplicationVersionDescriptionMessage> {
        return client.send(operation: "CreateApplicationVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an AWS Elastic Beanstalk configuration template, associated with a specific Elastic Beanstalk application. You define application configuration settings in a configuration template. You can then use the configuration template to deploy different versions of the application with the same configuration settings. Templates aren't associated with any environment. The EnvironmentName response element is always null. Related Topics    DescribeConfigurationOptions     DescribeConfigurationSettings     ListAvailableSolutionStacks   
    public func createConfigurationTemplate(_ input: CreateConfigurationTemplateMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfigurationSettingsDescription> {
        return client.send(operation: "CreateConfigurationTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Launches an AWS Elastic Beanstalk environment for the specified application using the specified configuration.
    public func createEnvironment(_ input: CreateEnvironmentMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnvironmentDescription> {
        return client.send(operation: "CreateEnvironment", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Create a new version of your custom platform.
    public func createPlatformVersion(_ input: CreatePlatformVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePlatformVersionResult> {
        return client.send(operation: "CreatePlatformVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a bucket in Amazon S3 to store application versions, logs, and other files used by Elastic Beanstalk environments. The Elastic Beanstalk console and EB CLI call this API the first time you create an environment in a region. If the storage location already exists, CreateStorageLocation still returns the bucket name but does not create a new bucket.
    public func createStorageLocation(on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStorageLocationResultMessage> {
        return client.send(operation: "CreateStorageLocation", path: "/", httpMethod: "POST", on: eventLoop)
    }

    ///  Deletes the specified application along with all associated versions and configurations. The application versions will not be deleted from your Amazon S3 bucket.  You cannot delete an application that has a running environment. 
    @discardableResult public func deleteApplication(_ input: DeleteApplicationMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteApplication", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified version from the specified application.  You cannot delete an application version that is associated with a running environment. 
    @discardableResult public func deleteApplicationVersion(_ input: DeleteApplicationVersionMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteApplicationVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified configuration template.  When you launch an environment using a configuration template, the environment gets a copy of the template. You can delete or modify the environment's copy of the template without affecting the running environment. 
    @discardableResult public func deleteConfigurationTemplate(_ input: DeleteConfigurationTemplateMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteConfigurationTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the draft configuration associated with the running environment. Updating a running environment with any configuration changes creates a draft configuration set. You can get the draft configuration using DescribeConfigurationSettings while the update is in progress or if the update fails. The DeploymentStatus for the draft configuration indicates whether the deployment is in process or has failed. The draft configuration remains in existence until it is deleted with this action.
    @discardableResult public func deleteEnvironmentConfiguration(_ input: DeleteEnvironmentConfigurationMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteEnvironmentConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified version of a custom platform.
    public func deletePlatformVersion(_ input: DeletePlatformVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePlatformVersionResult> {
        return client.send(operation: "DeletePlatformVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns attributes related to AWS Elastic Beanstalk that are associated with the calling AWS account. The result currently has one set of attributes—resource quotas.
    public func describeAccountAttributes(on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountAttributesResult> {
        return client.send(operation: "DescribeAccountAttributes", path: "/", httpMethod: "POST", on: eventLoop)
    }

    ///  Retrieve a list of application versions.
    public func describeApplicationVersions(_ input: DescribeApplicationVersionsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplicationVersionDescriptionsMessage> {
        return client.send(operation: "DescribeApplicationVersions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the descriptions of existing applications.
    public func describeApplications(_ input: DescribeApplicationsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplicationDescriptionsMessage> {
        return client.send(operation: "DescribeApplications", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed.
    public func describeConfigurationOptions(_ input: DescribeConfigurationOptionsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfigurationOptionsDescription> {
        return client.send(operation: "DescribeConfigurationOptions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment. When describing the settings for the configuration set associated with a running environment, it is possible to receive two sets of setting descriptions. One is the deployed configuration set, and the other is a draft configuration of an environment that is either in the process of deployment or that failed to deploy. Related Topics    DeleteEnvironmentConfiguration   
    public func describeConfigurationSettings(_ input: DescribeConfigurationSettingsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfigurationSettingsDescriptions> {
        return client.send(operation: "DescribeConfigurationSettings", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about the overall health of the specified environment. The DescribeEnvironmentHealth operation is only available with AWS Elastic Beanstalk Enhanced Health.
    public func describeEnvironmentHealth(_ input: DescribeEnvironmentHealthRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvironmentHealthResult> {
        return client.send(operation: "DescribeEnvironmentHealth", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists an environment's completed and failed managed actions.
    public func describeEnvironmentManagedActionHistory(_ input: DescribeEnvironmentManagedActionHistoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvironmentManagedActionHistoryResult> {
        return client.send(operation: "DescribeEnvironmentManagedActionHistory", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists an environment's upcoming and in-progress managed actions.
    public func describeEnvironmentManagedActions(_ input: DescribeEnvironmentManagedActionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvironmentManagedActionsResult> {
        return client.send(operation: "DescribeEnvironmentManagedActions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns AWS resources for this environment.
    public func describeEnvironmentResources(_ input: DescribeEnvironmentResourcesMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnvironmentResourceDescriptionsMessage> {
        return client.send(operation: "DescribeEnvironmentResources", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns descriptions for existing environments.
    public func describeEnvironments(_ input: DescribeEnvironmentsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnvironmentDescriptionsMessage> {
        return client.send(operation: "DescribeEnvironments", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns list of event descriptions matching criteria up to the last 6 weeks.  This action returns the most recent 1,000 events from the specified NextToken. 
    public func describeEvents(_ input: DescribeEventsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EventDescriptionsMessage> {
        return client.send(operation: "DescribeEvents", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves detailed information about the health of instances in your AWS Elastic Beanstalk. This operation requires enhanced health reporting.
    public func describeInstancesHealth(_ input: DescribeInstancesHealthRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesHealthResult> {
        return client.send(operation: "DescribeInstancesHealth", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a platform version. Provides full details. Compare to ListPlatformVersions, which provides summary information about a list of platform versions. For definitions of platform version and other platform-related terms, see AWS Elastic Beanstalk Platforms Glossary.
    public func describePlatformVersion(_ input: DescribePlatformVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePlatformVersionResult> {
        return client.send(operation: "DescribePlatformVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of the available solution stack names, with the public version first and then in reverse chronological order.
    public func listAvailableSolutionStacks(on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAvailableSolutionStacksResultMessage> {
        return client.send(operation: "ListAvailableSolutionStacks", path: "/", httpMethod: "POST", on: eventLoop)
    }

    ///  Lists the platform branches available for your account in an AWS Region. Provides summary information about each platform branch. For definitions of platform branch and other platform-related terms, see AWS Elastic Beanstalk Platforms Glossary.
    public func listPlatformBranches(_ input: ListPlatformBranchesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPlatformBranchesResult> {
        return client.send(operation: "ListPlatformBranches", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the platform versions available for your account in an AWS Region. Provides summary information about each platform version. Compare to DescribePlatformVersion, which provides full details about a single platform version. For definitions of platform version and other platform-related terms, see AWS Elastic Beanstalk Platforms Glossary.
    public func listPlatformVersions(_ input: ListPlatformVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPlatformVersionsResult> {
        return client.send(operation: "ListPlatformVersions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Return the tags applied to an AWS Elastic Beanstalk resource. The response contains a list of tag key-value pairs. Elastic Beanstalk supports tagging of all of its resources. For details about resource tagging, see Tagging Application Resources.
    public func listTagsForResource(_ input: ListTagsForResourceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResourceTagsDescriptionMessage> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc.) for a specified environment and forces a restart.
    @discardableResult public func rebuildEnvironment(_ input: RebuildEnvironmentMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "RebuildEnvironment", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Initiates a request to compile the specified type of information of the deployed environment.  Setting the InfoType to tail compiles the last lines from the application server log files of every Amazon EC2 instance in your environment.   Setting the InfoType to bundle compresses the application server log files for every Amazon EC2 instance into a .zip file. Legacy and .NET containers do not support bundle logs.   Use RetrieveEnvironmentInfo to obtain the set of logs.  Related Topics    RetrieveEnvironmentInfo   
    @discardableResult public func requestEnvironmentInfo(_ input: RequestEnvironmentInfoMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "RequestEnvironmentInfo", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Causes the environment to restart the application container server running on each Amazon EC2 instance.
    @discardableResult public func restartAppServer(_ input: RestartAppServerMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "RestartAppServer", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the compiled information from a RequestEnvironmentInfo request. Related Topics    RequestEnvironmentInfo   
    public func retrieveEnvironmentInfo(_ input: RetrieveEnvironmentInfoMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RetrieveEnvironmentInfoResultMessage> {
        return client.send(operation: "RetrieveEnvironmentInfo", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Swaps the CNAMEs of two environments.
    @discardableResult public func swapEnvironmentCNAMEs(_ input: SwapEnvironmentCNAMEsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "SwapEnvironmentCNAMEs", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Terminates the specified environment.
    public func terminateEnvironment(_ input: TerminateEnvironmentMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnvironmentDescription> {
        return client.send(operation: "TerminateEnvironment", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the specified application to have the specified properties.  If a property (for example, description) is not provided, the value remains unchanged. To clear these properties, specify an empty string. 
    public func updateApplication(_ input: UpdateApplicationMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplicationDescriptionMessage> {
        return client.send(operation: "UpdateApplication", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies lifecycle settings for an application.
    public func updateApplicationResourceLifecycle(_ input: UpdateApplicationResourceLifecycleMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplicationResourceLifecycleDescriptionMessage> {
        return client.send(operation: "UpdateApplicationResourceLifecycle", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the specified application version to have the specified properties.  If a property (for example, description) is not provided, the value remains unchanged. To clear properties, specify an empty string. 
    public func updateApplicationVersion(_ input: UpdateApplicationVersionMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplicationVersionDescriptionMessage> {
        return client.send(operation: "UpdateApplicationVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the specified configuration template to have the specified properties or configuration option values.  If a property (for example, ApplicationName) is not provided, its value remains unchanged. To clear such properties, specify an empty string.  Related Topics    DescribeConfigurationOptions   
    public func updateConfigurationTemplate(_ input: UpdateConfigurationTemplateMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfigurationSettingsDescription> {
        return client.send(operation: "UpdateConfigurationTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment.  Attempting to update both the release and configuration is not allowed and AWS Elastic Beanstalk returns an InvalidParameterCombination error.   When updating the configuration settings to a new template or individual settings, a draft configuration is created and DescribeConfigurationSettings for this environment returns two setting descriptions with different DeploymentStatus values. 
    public func updateEnvironment(_ input: UpdateEnvironmentMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnvironmentDescription> {
        return client.send(operation: "UpdateEnvironment", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Update the list of tags applied to an AWS Elastic Beanstalk resource. Two lists can be passed: TagsToAdd for tags to add or update, and TagsToRemove. Elastic Beanstalk supports tagging of all of its resources. For details about resource tagging, see Tagging Application Resources. If you create a custom IAM user policy to control permission to this operation, specify one of the following two virtual actions (or both) instead of the API operation name:  elasticbeanstalk:AddTags  Controls permission to call UpdateTagsForResource and pass a list of tags to add in the TagsToAdd parameter.  elasticbeanstalk:RemoveTags  Controls permission to call UpdateTagsForResource and pass a list of tag keys to remove in the TagsToRemove parameter.   For details about creating a custom user policy, see Creating a Custom User Policy.
    @discardableResult public func updateTagsForResource(_ input: UpdateTagsForResourceMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid. This action returns a list of messages indicating any errors or warnings associated with the selection of option values.
    public func validateConfigurationSettings(_ input: ValidateConfigurationSettingsMessage, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfigurationSettingsValidationMessages> {
        return client.send(operation: "ValidateConfigurationSettings", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
