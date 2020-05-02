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
import Foundation
import NIO

/**
Client object for interacting with AWS Inspector service.

Amazon Inspector Amazon Inspector enables you to analyze the behavior of your AWS resources and to identify potential security issues. For more information, see  Amazon Inspector User Guide.
*/
public struct Inspector {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Inspector client
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
            amzTarget: "InspectorService",
            service: "inspector",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-02-16",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [InspectorErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings.
    public func addAttributesToFindings(_ input: AddAttributesToFindingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddAttributesToFindingsResponse> {
        return client.send(operation: "AddAttributesToFindings", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new assessment target using the ARN of the resource group that is generated by CreateResourceGroup. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target. If the service-linked role isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments. You can create up to 50 assessment targets per AWS account. You can run up to 500 concurrent agents per AWS account. For more information, see  Amazon Inspector Assessment Targets.
    public func createAssessmentTarget(_ input: CreateAssessmentTargetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssessmentTargetResponse> {
        return client.send(operation: "CreateAssessmentTarget", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an assessment template for the assessment target that is specified by the ARN of the assessment target. If the service-linked role isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments.
    public func createAssessmentTemplate(_ input: CreateAssessmentTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssessmentTemplateResponse> {
        return client.send(operation: "CreateAssessmentTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts the generation of an exclusions preview for the specified assessment template. The exclusions preview lists the potential exclusions (ExclusionPreview) that Inspector can detect before it runs the assessment. 
    public func createExclusionsPreview(_ input: CreateExclusionsPreviewRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateExclusionsPreviewResponse> {
        return client.send(operation: "CreateExclusionsPreview", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target. The created resource group is then used to create an Amazon Inspector assessment target. For more information, see CreateAssessmentTarget.
    public func createResourceGroup(_ input: CreateResourceGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateResourceGroupResponse> {
        return client.send(operation: "CreateResourceGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the assessment run that is specified by the ARN of the assessment run.
    @discardableResult public func deleteAssessmentRun(_ input: DeleteAssessmentRunRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteAssessmentRun", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the assessment target that is specified by the ARN of the assessment target.
    @discardableResult public func deleteAssessmentTarget(_ input: DeleteAssessmentTargetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteAssessmentTarget", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the assessment template that is specified by the ARN of the assessment template.
    @discardableResult public func deleteAssessmentTemplate(_ input: DeleteAssessmentTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteAssessmentTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the assessment runs that are specified by the ARNs of the assessment runs.
    public func describeAssessmentRuns(_ input: DescribeAssessmentRunsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssessmentRunsResponse> {
        return client.send(operation: "DescribeAssessmentRuns", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the assessment targets that are specified by the ARNs of the assessment targets.
    public func describeAssessmentTargets(_ input: DescribeAssessmentTargetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssessmentTargetsResponse> {
        return client.send(operation: "DescribeAssessmentTargets", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the assessment templates that are specified by the ARNs of the assessment templates.
    public func describeAssessmentTemplates(_ input: DescribeAssessmentTemplatesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssessmentTemplatesResponse> {
        return client.send(operation: "DescribeAssessmentTemplates", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the IAM role that enables Amazon Inspector to access your AWS account.
    public func describeCrossAccountAccessRole(on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCrossAccountAccessRoleResponse> {
        return client.send(operation: "DescribeCrossAccountAccessRole", path: "/", httpMethod: "POST", on: eventLoop)
    }

    ///  Describes the exclusions that are specified by the exclusions' ARNs.
    public func describeExclusions(_ input: DescribeExclusionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExclusionsResponse> {
        return client.send(operation: "DescribeExclusions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the findings that are specified by the ARNs of the findings.
    public func describeFindings(_ input: DescribeFindingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFindingsResponse> {
        return client.send(operation: "DescribeFindings", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the resource groups that are specified by the ARNs of the resource groups.
    public func describeResourceGroups(_ input: DescribeResourceGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceGroupsResponse> {
        return client.send(operation: "DescribeResourceGroups", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the rules packages that are specified by the ARNs of the rules packages.
    public func describeRulesPackages(_ input: DescribeRulesPackagesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRulesPackagesResponse> {
        return client.send(operation: "DescribeRulesPackages", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Produces an assessment report that includes detailed and comprehensive results of a specified assessment run. 
    public func getAssessmentReport(_ input: GetAssessmentReportRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAssessmentReportResponse> {
        return client.send(operation: "GetAssessmentReport", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token. You can obtain the preview token by running the CreateExclusionsPreview API.
    public func getExclusionsPreview(_ input: GetExclusionsPreviewRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetExclusionsPreviewResponse> {
        return client.send(operation: "GetExclusionsPreview", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Information about the data that is collected for the specified assessment run.
    public func getTelemetryMetadata(_ input: GetTelemetryMetadataRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTelemetryMetadataResponse> {
        return client.send(operation: "GetTelemetryMetadata", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.
    public func listAssessmentRunAgents(_ input: ListAssessmentRunAgentsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAssessmentRunAgentsResponse> {
        return client.send(operation: "ListAssessmentRunAgents", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.
    public func listAssessmentRuns(_ input: ListAssessmentRunsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAssessmentRunsResponse> {
        return client.send(operation: "ListAssessmentRuns", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the ARNs of the assessment targets within this AWS account. For more information about assessment targets, see Amazon Inspector Assessment Targets.
    public func listAssessmentTargets(_ input: ListAssessmentTargetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAssessmentTargetsResponse> {
        return client.send(operation: "ListAssessmentTargets", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.
    public func listAssessmentTemplates(_ input: ListAssessmentTemplatesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAssessmentTemplatesResponse> {
        return client.send(operation: "ListAssessmentTemplates", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see SubscribeToEvent and UnsubscribeFromEvent.
    public func listEventSubscriptions(_ input: ListEventSubscriptionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEventSubscriptionsResponse> {
        return client.send(operation: "ListEventSubscriptions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  List exclusions that are generated by the assessment run.
    public func listExclusions(_ input: ListExclusionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListExclusionsResponse> {
        return client.send(operation: "ListExclusions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.
    public func listFindings(_ input: ListFindingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFindingsResponse> {
        return client.send(operation: "ListFindings", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all available Amazon Inspector rules packages.
    public func listRulesPackages(_ input: ListRulesPackagesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRulesPackagesResponse> {
        return client.send(operation: "ListRulesPackages", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all tags associated with an assessment template.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Previews the agents installed on the EC2 instances that are part of the specified assessment target.
    public func previewAgents(_ input: PreviewAgentsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PreviewAgentsResponse> {
        return client.send(operation: "PreviewAgents", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Registers the IAM role that grants Amazon Inspector access to AWS Services needed to perform security assessments.
    @discardableResult public func registerCrossAccountAccessRole(_ input: RegisterCrossAccountAccessRoleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "RegisterCrossAccountAccessRole", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists.
    public func removeAttributesFromFindings(_ input: RemoveAttributesFromFindingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveAttributesFromFindingsResponse> {
        return client.send(operation: "RemoveAttributesFromFindings", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template.
    @discardableResult public func setTagsForResource(_ input: SetTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "SetTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts the assessment run specified by the ARN of the assessment template. For this API to function properly, you must not exceed the limit of running up to 500 concurrent agents per AWS account.
    public func startAssessmentRun(_ input: StartAssessmentRunRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartAssessmentRunResponse> {
        return client.send(operation: "StartAssessmentRun", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops the assessment run that is specified by the ARN of the assessment run.
    @discardableResult public func stopAssessmentRun(_ input: StopAssessmentRunRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "StopAssessmentRun", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Enables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    @discardableResult public func subscribeToEvent(_ input: SubscribeToEventRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "SubscribeToEvent", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    @discardableResult public func unsubscribeFromEvent(_ input: UnsubscribeFromEventRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UnsubscribeFromEvent", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the assessment target that is specified by the ARN of the assessment target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target.
    @discardableResult public func updateAssessmentTarget(_ input: UpdateAssessmentTargetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateAssessmentTarget", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
