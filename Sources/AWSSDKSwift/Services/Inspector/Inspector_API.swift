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
Client object for interacting with AWS Inspector service.

Amazon Inspector Amazon Inspector enables you to analyze the behavior of your AWS resources and to identify potential security issues. For more information, see  Amazon Inspector User Guide.
*/
public struct Inspector {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the Inspector client
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
            amzTarget: "InspectorService",
            service: "inspector",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-02-16",
            endpoint: endpoint,
            possibleErrorTypes: [InspectorErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings.
    public func addAttributesToFindings(_ input: AddAttributesToFindingsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AddAttributesToFindingsResponse> {
        return client.execute(operation: "AddAttributesToFindings", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new assessment target using the ARN of the resource group that is generated by CreateResourceGroup. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target. If the service-linked role isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments. You can create up to 50 assessment targets per AWS account. You can run up to 500 concurrent agents per AWS account. For more information, see  Amazon Inspector Assessment Targets.
    public func createAssessmentTarget(_ input: CreateAssessmentTargetRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateAssessmentTargetResponse> {
        return client.execute(operation: "CreateAssessmentTarget", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an assessment template for the assessment target that is specified by the ARN of the assessment target. If the service-linked role isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments.
    public func createAssessmentTemplate(_ input: CreateAssessmentTemplateRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateAssessmentTemplateResponse> {
        return client.execute(operation: "CreateAssessmentTemplate", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts the generation of an exclusions preview for the specified assessment template. The exclusions preview lists the potential exclusions (ExclusionPreview) that Inspector can detect before it runs the assessment. 
    public func createExclusionsPreview(_ input: CreateExclusionsPreviewRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateExclusionsPreviewResponse> {
        return client.execute(operation: "CreateExclusionsPreview", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target. The created resource group is then used to create an Amazon Inspector assessment target. For more information, see CreateAssessmentTarget.
    public func createResourceGroup(_ input: CreateResourceGroupRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateResourceGroupResponse> {
        return client.execute(operation: "CreateResourceGroup", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the assessment run that is specified by the ARN of the assessment run.
    @discardableResult public func deleteAssessmentRun(_ input: DeleteAssessmentRunRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteAssessmentRun", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the assessment target that is specified by the ARN of the assessment target.
    @discardableResult public func deleteAssessmentTarget(_ input: DeleteAssessmentTargetRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteAssessmentTarget", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the assessment template that is specified by the ARN of the assessment template.
    @discardableResult public func deleteAssessmentTemplate(_ input: DeleteAssessmentTemplateRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteAssessmentTemplate", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the assessment runs that are specified by the ARNs of the assessment runs.
    public func describeAssessmentRuns(_ input: DescribeAssessmentRunsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeAssessmentRunsResponse> {
        return client.execute(operation: "DescribeAssessmentRuns", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the assessment targets that are specified by the ARNs of the assessment targets.
    public func describeAssessmentTargets(_ input: DescribeAssessmentTargetsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeAssessmentTargetsResponse> {
        return client.execute(operation: "DescribeAssessmentTargets", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the assessment templates that are specified by the ARNs of the assessment templates.
    public func describeAssessmentTemplates(_ input: DescribeAssessmentTemplatesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeAssessmentTemplatesResponse> {
        return client.execute(operation: "DescribeAssessmentTemplates", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the IAM role that enables Amazon Inspector to access your AWS account.
    public func describeCrossAccountAccessRole(on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeCrossAccountAccessRoleResponse> {
        return client.execute(operation: "DescribeCrossAccountAccessRole", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, on: eventLoop, logger: logger)
    }

    ///  Describes the exclusions that are specified by the exclusions' ARNs.
    public func describeExclusions(_ input: DescribeExclusionsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeExclusionsResponse> {
        return client.execute(operation: "DescribeExclusions", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the findings that are specified by the ARNs of the findings.
    public func describeFindings(_ input: DescribeFindingsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeFindingsResponse> {
        return client.execute(operation: "DescribeFindings", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the resource groups that are specified by the ARNs of the resource groups.
    public func describeResourceGroups(_ input: DescribeResourceGroupsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeResourceGroupsResponse> {
        return client.execute(operation: "DescribeResourceGroups", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the rules packages that are specified by the ARNs of the rules packages.
    public func describeRulesPackages(_ input: DescribeRulesPackagesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeRulesPackagesResponse> {
        return client.execute(operation: "DescribeRulesPackages", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Produces an assessment report that includes detailed and comprehensive results of a specified assessment run. 
    public func getAssessmentReport(_ input: GetAssessmentReportRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAssessmentReportResponse> {
        return client.execute(operation: "GetAssessmentReport", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token. You can obtain the preview token by running the CreateExclusionsPreview API.
    public func getExclusionsPreview(_ input: GetExclusionsPreviewRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetExclusionsPreviewResponse> {
        return client.execute(operation: "GetExclusionsPreview", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Information about the data that is collected for the specified assessment run.
    public func getTelemetryMetadata(_ input: GetTelemetryMetadataRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetTelemetryMetadataResponse> {
        return client.execute(operation: "GetTelemetryMetadata", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.
    public func listAssessmentRunAgents(_ input: ListAssessmentRunAgentsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListAssessmentRunAgentsResponse> {
        return client.execute(operation: "ListAssessmentRunAgents", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.
    public func listAssessmentRuns(_ input: ListAssessmentRunsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListAssessmentRunsResponse> {
        return client.execute(operation: "ListAssessmentRuns", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the ARNs of the assessment targets within this AWS account. For more information about assessment targets, see Amazon Inspector Assessment Targets.
    public func listAssessmentTargets(_ input: ListAssessmentTargetsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListAssessmentTargetsResponse> {
        return client.execute(operation: "ListAssessmentTargets", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.
    public func listAssessmentTemplates(_ input: ListAssessmentTemplatesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListAssessmentTemplatesResponse> {
        return client.execute(operation: "ListAssessmentTemplates", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see SubscribeToEvent and UnsubscribeFromEvent.
    public func listEventSubscriptions(_ input: ListEventSubscriptionsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListEventSubscriptionsResponse> {
        return client.execute(operation: "ListEventSubscriptions", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  List exclusions that are generated by the assessment run.
    public func listExclusions(_ input: ListExclusionsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListExclusionsResponse> {
        return client.execute(operation: "ListExclusions", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.
    public func listFindings(_ input: ListFindingsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListFindingsResponse> {
        return client.execute(operation: "ListFindings", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists all available Amazon Inspector rules packages.
    public func listRulesPackages(_ input: ListRulesPackagesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListRulesPackagesResponse> {
        return client.execute(operation: "ListRulesPackages", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists all tags associated with an assessment template.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Previews the agents installed on the EC2 instances that are part of the specified assessment target.
    public func previewAgents(_ input: PreviewAgentsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PreviewAgentsResponse> {
        return client.execute(operation: "PreviewAgents", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Registers the IAM role that grants Amazon Inspector access to AWS Services needed to perform security assessments.
    @discardableResult public func registerCrossAccountAccessRole(_ input: RegisterCrossAccountAccessRoleRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "RegisterCrossAccountAccessRole", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists.
    public func removeAttributesFromFindings(_ input: RemoveAttributesFromFindingsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RemoveAttributesFromFindingsResponse> {
        return client.execute(operation: "RemoveAttributesFromFindings", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template.
    @discardableResult public func setTagsForResource(_ input: SetTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "SetTagsForResource", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts the assessment run specified by the ARN of the assessment template. For this API to function properly, you must not exceed the limit of running up to 500 concurrent agents per AWS account.
    public func startAssessmentRun(_ input: StartAssessmentRunRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartAssessmentRunResponse> {
        return client.execute(operation: "StartAssessmentRun", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Stops the assessment run that is specified by the ARN of the assessment run.
    @discardableResult public func stopAssessmentRun(_ input: StopAssessmentRunRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "StopAssessmentRun", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Enables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    @discardableResult public func subscribeToEvent(_ input: SubscribeToEventRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "SubscribeToEvent", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    @discardableResult public func unsubscribeFromEvent(_ input: UnsubscribeFromEventRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "UnsubscribeFromEvent", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the assessment target that is specified by the ARN of the assessment target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target.
    @discardableResult public func updateAssessmentTarget(_ input: UpdateAssessmentTargetRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "UpdateAssessmentTarget", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
