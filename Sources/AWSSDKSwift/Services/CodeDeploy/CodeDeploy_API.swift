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
Client object for interacting with AWS CodeDeploy service.

AWS CodeDeploy AWS CodeDeploy is a deployment service that automates application deployments to Amazon EC2 instances, on-premises instances running in your own facility, serverless AWS Lambda functions, or applications in an Amazon ECS service. You can deploy a nearly unlimited variety of application content, such as an updated Lambda function, updated applications in an Amazon ECS service, code, web and configuration files, executables, packages, scripts, multimedia files, and so on. AWS CodeDeploy can deploy application content stored in Amazon S3 buckets, GitHub repositories, or Bitbucket repositories. You do not need to make changes to your existing code before you can use AWS CodeDeploy. AWS CodeDeploy makes it easier for you to rapidly release new features, helps you avoid downtime during application deployment, and handles the complexity of updating your applications, without many of the risks associated with error-prone manual deployments.  AWS CodeDeploy Components  Use the information in this guide to help you work with the following AWS CodeDeploy components:    Application: A name that uniquely identifies the application you want to deploy. AWS CodeDeploy uses this name, which functions as a container, to ensure the correct combination of revision, deployment configuration, and deployment group are referenced during a deployment.    Deployment group: A set of individual instances, CodeDeploy Lambda deployment configuration settings, or an Amazon ECS service and network details. A Lambda deployment group specifies how to route traffic to a new version of a Lambda function. An Amazon ECS deployment group specifies the service created in Amazon ECS to deploy, a load balancer, and a listener to reroute production traffic to an updated containerized application. An EC2/On-premises deployment group contains individually tagged instances, Amazon EC2 instances in Amazon EC2 Auto Scaling groups, or both. All deployment groups can specify optional trigger, alarm, and rollback settings.    Deployment configuration: A set of deployment rules and deployment success and failure conditions used by AWS CodeDeploy during a deployment.    Deployment: The process and the components used when updating a Lambda function, a containerized application in an Amazon ECS service, or of installing content on one or more instances.     Application revisions: For an AWS Lambda deployment, this is an AppSpec file that specifies the Lambda function to be updated and one or more functions to validate deployment lifecycle events. For an Amazon ECS deployment, this is an AppSpec file that specifies the Amazon ECS task definition, container, and port where production traffic is rerouted. For an EC2/On-premises deployment, this is an archive file that contains source content—source code, webpages, executable files, and deployment scripts—along with an AppSpec file. Revisions are stored in Amazon S3 buckets or GitHub repositories. For Amazon S3, a revision is uniquely identified by its Amazon S3 object key and its ETag, version, or both. For GitHub, a revision is uniquely identified by its commit ID.   This guide also contains information to help you get details about the instances in your deployments, to make on-premises instances available for AWS CodeDeploy deployments, to get details about a Lambda function deployment, and to get details about Amazon ECS service deployments.  AWS CodeDeploy Information Resources     AWS CodeDeploy User Guide     AWS CodeDeploy API Reference Guide     AWS CLI Reference for AWS CodeDeploy     AWS CodeDeploy Developer Forum   
*/
public struct CodeDeploy: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CodeDeploy client
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
            amzTarget: "CodeDeploy_20141006",
            service: "codedeploy",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2014-10-06",
            endpoint: endpoint,
            possibleErrorTypes: [CodeDeployErrorType.self],
            timeout: timeout
        )
    }
    
    // MARK: API Calls

    ///  Adds tags to on-premises instances.
    @discardableResult public func addTagsToOnPremisesInstances(_ input: AddTagsToOnPremisesInstancesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "AddTagsToOnPremisesInstances", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about one or more application revisions. The maximum number of application revisions that can be returned is 25.
    public func batchGetApplicationRevisions(_ input: BatchGetApplicationRevisionsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchGetApplicationRevisionsOutput> {
        return self.client.execute(operation: "BatchGetApplicationRevisions", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about one or more applications. The maximum number of applications that can be returned is 100.
    public func batchGetApplications(_ input: BatchGetApplicationsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchGetApplicationsOutput> {
        return self.client.execute(operation: "BatchGetApplications", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about one or more deployment groups.
    public func batchGetDeploymentGroups(_ input: BatchGetDeploymentGroupsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchGetDeploymentGroupsOutput> {
        return self.client.execute(operation: "BatchGetDeploymentGroups", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///    This method works, but is deprecated. Use BatchGetDeploymentTargets instead.    Returns an array of one or more instances associated with a deployment. This method works with EC2/On-premises and AWS Lambda compute platforms. The newer BatchGetDeploymentTargets works with all compute platforms. The maximum number of instances that can be returned is 25.
    @available(*, deprecated, message:"This operation is deprecated, use BatchGetDeploymentTargets instead.")
    public func batchGetDeploymentInstances(_ input: BatchGetDeploymentInstancesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchGetDeploymentInstancesOutput> {
        return self.client.execute(operation: "BatchGetDeploymentInstances", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns an array of one or more targets associated with a deployment. This method works with all compute types and should be used instead of the deprecated BatchGetDeploymentInstances. The maximum number of targets that can be returned is 25.  The type of targets returned depends on the deployment's compute platform or deployment method:     EC2/On-premises: Information about EC2 instance targets.     AWS Lambda: Information about Lambda functions targets.     Amazon ECS: Information about Amazon ECS service targets.     CloudFormation: Information about targets of blue/green deployments initiated by a CloudFormation stack update.  
    public func batchGetDeploymentTargets(_ input: BatchGetDeploymentTargetsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchGetDeploymentTargetsOutput> {
        return self.client.execute(operation: "BatchGetDeploymentTargets", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about one or more deployments. The maximum number of deployments that can be returned is 25.
    public func batchGetDeployments(_ input: BatchGetDeploymentsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchGetDeploymentsOutput> {
        return self.client.execute(operation: "BatchGetDeployments", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about one or more on-premises instances. The maximum number of on-premises instances that can be returned is 25.
    public func batchGetOnPremisesInstances(_ input: BatchGetOnPremisesInstancesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchGetOnPremisesInstancesOutput> {
        return self.client.execute(operation: "BatchGetOnPremisesInstances", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  For a blue/green deployment, starts the process of rerouting traffic from instances in the original environment to instances in the replacement environment without waiting for a specified wait time to elapse. (Traffic rerouting, which is achieved by registering instances in the replacement environment with the load balancer, can start as soon as all instances have a status of Ready.) 
    @discardableResult public func continueDeployment(_ input: ContinueDeploymentInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "ContinueDeployment", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an application.
    public func createApplication(_ input: CreateApplicationInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateApplicationOutput> {
        return self.client.execute(operation: "CreateApplication", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deploys an application revision through the specified deployment group.
    public func createDeployment(_ input: CreateDeploymentInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateDeploymentOutput> {
        return self.client.execute(operation: "CreateDeployment", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///   Creates a deployment configuration. 
    public func createDeploymentConfig(_ input: CreateDeploymentConfigInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateDeploymentConfigOutput> {
        return self.client.execute(operation: "CreateDeploymentConfig", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a deployment group to which application revisions are deployed.
    public func createDeploymentGroup(_ input: CreateDeploymentGroupInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateDeploymentGroupOutput> {
        return self.client.execute(operation: "CreateDeploymentGroup", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an application.
    @discardableResult public func deleteApplication(_ input: DeleteApplicationInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteApplication", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a deployment configuration.  A deployment configuration cannot be deleted if it is currently in use. Predefined configurations cannot be deleted. 
    @discardableResult public func deleteDeploymentConfig(_ input: DeleteDeploymentConfigInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteDeploymentConfig", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a deployment group.
    public func deleteDeploymentGroup(_ input: DeleteDeploymentGroupInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteDeploymentGroupOutput> {
        return self.client.execute(operation: "DeleteDeploymentGroup", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a GitHub account connection.
    public func deleteGitHubAccountToken(_ input: DeleteGitHubAccountTokenInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteGitHubAccountTokenOutput> {
        return self.client.execute(operation: "DeleteGitHubAccountToken", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes resources linked to an external ID.
    public func deleteResourcesByExternalId(_ input: DeleteResourcesByExternalIdInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteResourcesByExternalIdOutput> {
        return self.client.execute(operation: "DeleteResourcesByExternalId", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deregisters an on-premises instance.
    @discardableResult public func deregisterOnPremisesInstance(_ input: DeregisterOnPremisesInstanceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeregisterOnPremisesInstance", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about an application.
    public func getApplication(_ input: GetApplicationInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetApplicationOutput> {
        return self.client.execute(operation: "GetApplication", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about an application revision.
    public func getApplicationRevision(_ input: GetApplicationRevisionInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetApplicationRevisionOutput> {
        return self.client.execute(operation: "GetApplicationRevision", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about a deployment.   The content property of the appSpecContent object in the returned revision is always null. Use GetApplicationRevision and the sha256 property of the returned appSpecContent object to get the content of the deployment’s AppSpec file.  
    public func getDeployment(_ input: GetDeploymentInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDeploymentOutput> {
        return self.client.execute(operation: "GetDeployment", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about a deployment configuration.
    public func getDeploymentConfig(_ input: GetDeploymentConfigInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDeploymentConfigOutput> {
        return self.client.execute(operation: "GetDeploymentConfig", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about a deployment group.
    public func getDeploymentGroup(_ input: GetDeploymentGroupInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDeploymentGroupOutput> {
        return self.client.execute(operation: "GetDeploymentGroup", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about an instance as part of a deployment.
    @available(*, deprecated, message:"This operation is deprecated, use GetDeploymentTarget instead.")
    public func getDeploymentInstance(_ input: GetDeploymentInstanceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDeploymentInstanceOutput> {
        return self.client.execute(operation: "GetDeploymentInstance", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns information about a deployment target. 
    public func getDeploymentTarget(_ input: GetDeploymentTargetInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDeploymentTargetOutput> {
        return self.client.execute(operation: "GetDeploymentTarget", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///   Gets information about an on-premises instance. 
    public func getOnPremisesInstance(_ input: GetOnPremisesInstanceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetOnPremisesInstanceOutput> {
        return self.client.execute(operation: "GetOnPremisesInstance", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists information about revisions for an application.
    public func listApplicationRevisions(_ input: ListApplicationRevisionsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListApplicationRevisionsOutput> {
        return self.client.execute(operation: "ListApplicationRevisions", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the applications registered with the IAM user or AWS account.
    public func listApplications(_ input: ListApplicationsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListApplicationsOutput> {
        return self.client.execute(operation: "ListApplications", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the deployment configurations with the IAM user or AWS account.
    public func listDeploymentConfigs(_ input: ListDeploymentConfigsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDeploymentConfigsOutput> {
        return self.client.execute(operation: "ListDeploymentConfigs", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the deployment groups for an application registered with the IAM user or AWS account.
    public func listDeploymentGroups(_ input: ListDeploymentGroupsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDeploymentGroupsOutput> {
        return self.client.execute(operation: "ListDeploymentGroups", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///    The newer BatchGetDeploymentTargets should be used instead because it works with all compute types. ListDeploymentInstances throws an exception if it is used with a compute platform other than EC2/On-premises or AWS Lambda.    Lists the instance for a deployment associated with the IAM user or AWS account. 
    @available(*, deprecated, message:"This operation is deprecated, use ListDeploymentTargets instead.")
    public func listDeploymentInstances(_ input: ListDeploymentInstancesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDeploymentInstancesOutput> {
        return self.client.execute(operation: "ListDeploymentInstances", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns an array of target IDs that are associated a deployment. 
    public func listDeploymentTargets(_ input: ListDeploymentTargetsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDeploymentTargetsOutput> {
        return self.client.execute(operation: "ListDeploymentTargets", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the deployments in a deployment group for an application registered with the IAM user or AWS account.
    public func listDeployments(_ input: ListDeploymentsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDeploymentsOutput> {
        return self.client.execute(operation: "ListDeployments", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the names of stored connections to GitHub accounts.
    public func listGitHubAccountTokenNames(_ input: ListGitHubAccountTokenNamesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListGitHubAccountTokenNamesOutput> {
        return self.client.execute(operation: "ListGitHubAccountTokenNames", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a list of names for one or more on-premises instances. Unless otherwise specified, both registered and deregistered on-premises instance names are listed. To list only registered or deregistered on-premises instance names, use the registration status parameter.
    public func listOnPremisesInstances(_ input: ListOnPremisesInstancesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListOnPremisesInstancesOutput> {
        return self.client.execute(operation: "ListOnPremisesInstances", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns a list of tags for the resource identified by a specified Amazon Resource Name (ARN). Tags are used to organize and categorize your CodeDeploy resources. 
    public func listTagsForResource(_ input: ListTagsForResourceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceOutput> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///   Sets the result of a Lambda validation function. The function validates lifecycle hooks during a deployment that uses the AWS Lambda or Amazon ECS compute platform. For AWS Lambda deployments, the available lifecycle hooks are BeforeAllowTraffic and AfterAllowTraffic. For Amazon ECS deployments, the available lifecycle hooks are BeforeInstall, AfterInstall, AfterAllowTestTraffic, BeforeAllowTraffic, and AfterAllowTraffic. Lambda validation functions return Succeeded or Failed. For more information, see AppSpec 'hooks' Section for an AWS Lambda Deployment  and AppSpec 'hooks' Section for an Amazon ECS Deployment.
    public func putLifecycleEventHookExecutionStatus(_ input: PutLifecycleEventHookExecutionStatusInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutLifecycleEventHookExecutionStatusOutput> {
        return self.client.execute(operation: "PutLifecycleEventHookExecutionStatus", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Registers with AWS CodeDeploy a revision for the specified application.
    @discardableResult public func registerApplicationRevision(_ input: RegisterApplicationRevisionInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "RegisterApplicationRevision", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Registers an on-premises instance.  Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the request. You cannot use both. 
    @discardableResult public func registerOnPremisesInstance(_ input: RegisterOnPremisesInstanceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "RegisterOnPremisesInstance", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes one or more tags from one or more on-premises instances.
    @discardableResult public func removeTagsFromOnPremisesInstances(_ input: RemoveTagsFromOnPremisesInstancesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "RemoveTagsFromOnPremisesInstances", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  In a blue/green deployment, overrides any specified wait time and starts terminating instances immediately after the traffic routing is complete.
    @available(*, deprecated, message:"This operation is deprecated, use ContinueDeployment with DeploymentWaitType instead.")
    @discardableResult public func skipWaitTimeForInstanceTermination(_ input: SkipWaitTimeForInstanceTerminationInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "SkipWaitTimeForInstanceTermination", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Attempts to stop an ongoing deployment.
    public func stopDeployment(_ input: StopDeploymentInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopDeploymentOutput> {
        return self.client.execute(operation: "StopDeployment", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///   Associates the list of tags in the input Tags parameter with the resource identified by the ResourceArn input parameter. 
    public func tagResource(_ input: TagResourceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceOutput> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///   Disassociates a resource from a list of tags. The resource is identified by the ResourceArn input parameter. The tags are identified by the list of keys in the TagKeys input parameter. 
    public func untagResource(_ input: UntagResourceInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceOutput> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Changes the name of an application.
    @discardableResult public func updateApplication(_ input: UpdateApplicationInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateApplication", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Changes information about a deployment group.
    public func updateDeploymentGroup(_ input: UpdateDeploymentGroupInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateDeploymentGroupOutput> {
        return self.client.execute(operation: "UpdateDeploymentGroup", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }
}
