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
Client object for interacting with AWS Support service.

AWS Support The AWS Support API reference is intended for programmers who need detailed information about the AWS Support operations and data types. This service enables you to manage your AWS Support cases programmatically. It uses HTTP methods that return results in JSON format. The AWS Support service also exposes a set of Trusted Advisor features. You can retrieve a list of checks and their descriptions, get check results, specify checks to refresh, and get the refresh status of checks. The following list describes the AWS Support case management operations:    Service names, issue categories, and available severity levels. The DescribeServices and DescribeSeverityLevels operations return AWS service names, service codes, service categories, and problem severity levels. You use these values when you call the CreateCase operation.    Case creation, case details, and case resolution. The CreateCase, DescribeCases, DescribeAttachment, and ResolveCase operations create AWS Support cases, retrieve information about cases, and resolve cases.    Case communication. The DescribeCommunications, AddCommunicationToCase, and AddAttachmentsToSet operations retrieve and add communications and attachments to AWS Support cases.   The following list describes the operations available from the AWS Support service for Trusted Advisor:    DescribeTrustedAdvisorChecks returns the list of checks that run against your AWS resources.   Using the checkId for a specific check returned by DescribeTrustedAdvisorChecks, you can call DescribeTrustedAdvisorCheckResult to obtain the results for the check you specified.    DescribeTrustedAdvisorCheckSummaries returns summarized results for one or more Trusted Advisor checks.    RefreshTrustedAdvisorCheck requests that Trusted Advisor rerun a specified check.    DescribeTrustedAdvisorCheckRefreshStatuses reports the refresh status of one or more checks.   For authentication of requests, AWS Support uses Signature Version 4 Signing Process. See About the AWS Support API in the AWS Support User Guide for information about how to use this service to create and manage your support cases, and how to call Trusted Advisor for results of checks on your resources.
*/
public struct Support {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Support client
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
            amzTarget: "AWSSupport_20130415",
            service: "support",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2013-04-15",
            endpoint: endpoint,
            serviceEndpoints: ["aws-global": "support.us-east-1.amazonaws.com"],
            partitionEndpoint: "aws-global",
            middlewares: middlewares,
            possibleErrorTypes: [SupportErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Adds one or more attachments to an attachment set. If an attachmentSetId is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an attachmentSetId is specified, the attachments are added to the specified set, if it exists. An attachment set is a temporary container for attachments that are to be added to a case or case communication. The set is available for one hour after it is created; the expiryTime returned in the response indicates when the set expires. The maximum number of attachments in a set is 3, and the maximum size of any attachment in the set is 5 MB.
    public func addAttachmentsToSet(_ input: AddAttachmentsToSetRequest) -> EventLoopFuture<AddAttachmentsToSetResponse> {
        return client.send(operation: "AddAttachmentsToSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds additional customer communication to an AWS Support case. You use the caseId value to identify the case to add communication to. You can list a set of email addresses to copy on the communication using the ccEmailAddresses value. The communicationBody value contains the text of the communication. The response indicates the success or failure of the request. This operation implements a subset of the features of the AWS Support Center.
    public func addCommunicationToCase(_ input: AddCommunicationToCaseRequest) -> EventLoopFuture<AddCommunicationToCaseResponse> {
        return client.send(operation: "AddCommunicationToCase", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new case in the AWS Support Center. This operation is modeled on the behavior of the AWS Support Center Create Case page. Its parameters require you to specify the following information:    issueType. The type of issue for the case. You can specify either "customer-service" or "technical." If you do not indicate a value, the default is "technical."  Service limit increases are not supported by the Support API; you must submit service limit increase requests in Support Center. The caseId is not the displayId that appears in Support Center. You can use the DescribeCases API to get the displayId.     serviceCode. The code for an AWS service. You can get the possible serviceCode values by calling DescribeServices.    categoryCode. The category for the service defined for the serviceCode value. You also get the category code for a service by calling DescribeServices. Each AWS service defines its own set of category codes.    severityCode. A value that indicates the urgency of the case, which in turn determines the response time according to your service level agreement with AWS Support. You can get the possible severityCode values by calling DescribeSeverityLevels. For more information about the meaning of the codes, see SeverityLevel and Choosing a Severity.    subject. The Subject field on the AWS Support Center Create Case page.    communicationBody. The Description field on the AWS Support Center Create Case page.    attachmentSetId. The ID of a set of attachments that has been created by using AddAttachmentsToSet.    language. The human language in which AWS Support handles the case. English and Japanese are currently supported.    ccEmailAddresses. The AWS Support Center CC field on the Create Case page. You can list email addresses to be copied on any correspondence about the case. The account that opens the case is already identified by passing the AWS Credentials in the HTTP POST method or in a method or function call from one of the programming languages supported by an AWS SDK.     To add additional communication or attachments to an existing case, use AddCommunicationToCase.  A successful CreateCase request returns an AWS Support case number. Case numbers are used by the DescribeCases operation to retrieve existing AWS Support cases.
    public func createCase(_ input: CreateCaseRequest) -> EventLoopFuture<CreateCaseResponse> {
        return client.send(operation: "CreateCase", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the attachment that has the specified ID. Attachment IDs are generated by the case management system when you add an attachment to a case or case communication. Attachment IDs are returned in the AttachmentDetails objects that are returned by the DescribeCommunications operation.
    public func describeAttachment(_ input: DescribeAttachmentRequest) -> EventLoopFuture<DescribeAttachmentResponse> {
        return client.send(operation: "DescribeAttachment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of cases that you specify by passing one or more case IDs. In addition, you can filter the cases by date by setting values for the afterTime and beforeTime request parameters. You can set values for the includeResolvedCases and includeCommunications request parameters to control how much information is returned. Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error. The response returns the following in JSON format:   One or more CaseDetails data types.   One or more nextToken values, which specify where to paginate the returned records represented by the CaseDetails objects.  
    public func describeCases(_ input: DescribeCasesRequest) -> EventLoopFuture<DescribeCasesResponse> {
        return client.send(operation: "DescribeCases", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns communications (and attachments) for one or more support cases. You can use the afterTime and beforeTime parameters to filter by date. You can use the caseId parameter to restrict the results to a particular case. Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error. You can use the maxResults and nextToken parameters to control the pagination of the result set. Set maxResults to the number of cases you want displayed on each page, and use nextToken to specify the resumption of pagination.
    public func describeCommunications(_ input: DescribeCommunicationsRequest) -> EventLoopFuture<DescribeCommunicationsResponse> {
        return client.send(operation: "DescribeCommunications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the current list of AWS services and a list of service categories that applies to each one. You then use service names and categories in your CreateCase requests. Each AWS service has its own set of categories. The service codes and category codes correspond to the values that are displayed in the Service and Category drop-down lists on the AWS Support Center Create Case page. The values in those fields, however, do not necessarily match the service codes and categories returned by the DescribeServices request. Always use the service codes and categories obtained programmatically. This practice ensures that you always have the most recent set of service and category codes.
    public func describeServices(_ input: DescribeServicesRequest) -> EventLoopFuture<DescribeServicesResponse> {
        return client.send(operation: "DescribeServices", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the list of severity levels that you can assign to an AWS Support case. The severity level for a case is also a field in the CaseDetails data type included in any CreateCase request.
    public func describeSeverityLevels(_ input: DescribeSeverityLevelsRequest) -> EventLoopFuture<DescribeSeverityLevelsResponse> {
        return client.send(operation: "DescribeSeverityLevels", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the refresh status of the Trusted Advisor checks that have the specified check IDs. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks.  Some checks are refreshed automatically, and their refresh statuses cannot be retrieved by using this operation. Use of the DescribeTrustedAdvisorCheckRefreshStatuses operation for these checks causes an InvalidParameterValue error. 
    public func describeTrustedAdvisorCheckRefreshStatuses(_ input: DescribeTrustedAdvisorCheckRefreshStatusesRequest) -> EventLoopFuture<DescribeTrustedAdvisorCheckRefreshStatusesResponse> {
        return client.send(operation: "DescribeTrustedAdvisorCheckRefreshStatuses", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the results of the Trusted Advisor check that has the specified check ID. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks. The response contains a TrustedAdvisorCheckResult object, which contains these three objects:    TrustedAdvisorCategorySpecificSummary     TrustedAdvisorResourceDetail     TrustedAdvisorResourcesSummary    In addition, the response contains these fields:    status. The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".    timestamp. The time of the last refresh of the check.    checkId. The unique identifier for the check.  
    public func describeTrustedAdvisorCheckResult(_ input: DescribeTrustedAdvisorCheckResultRequest) -> EventLoopFuture<DescribeTrustedAdvisorCheckResultResponse> {
        return client.send(operation: "DescribeTrustedAdvisorCheckResult", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the summaries of the results of the Trusted Advisor checks that have the specified check IDs. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks. The response contains an array of TrustedAdvisorCheckSummary objects.
    public func describeTrustedAdvisorCheckSummaries(_ input: DescribeTrustedAdvisorCheckSummariesRequest) -> EventLoopFuture<DescribeTrustedAdvisorCheckSummariesResponse> {
        return client.send(operation: "DescribeTrustedAdvisorCheckSummaries", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all available Trusted Advisor checks, including name, ID, category, description, and metadata. You must specify a language code; English ("en") and Japanese ("ja") are currently supported. The response contains a TrustedAdvisorCheckDescription for each check. The region must be set to us-east-1.
    public func describeTrustedAdvisorChecks(_ input: DescribeTrustedAdvisorChecksRequest) -> EventLoopFuture<DescribeTrustedAdvisorChecksResponse> {
        return client.send(operation: "DescribeTrustedAdvisorChecks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Requests a refresh of the Trusted Advisor check that has the specified check ID. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks.  Some checks are refreshed automatically, and they cannot be refreshed by using this operation. Use of the RefreshTrustedAdvisorCheck operation for these checks causes an InvalidParameterValue error.  The response contains a TrustedAdvisorCheckRefreshStatus object, which contains these fields:    status. The refresh status of the check:     none: The check is not refreshed or the non-success status exceeds the timeout    enqueued: The check refresh requests has entered the refresh queue    processing: The check refresh request is picked up by the rule processing engine    success: The check is successfully refreshed    abandoned: The check refresh has failed      millisUntilNextRefreshable. The amount of time, in milliseconds, until the check is eligible for refresh.    checkId. The unique identifier for the check.  
    public func refreshTrustedAdvisorCheck(_ input: RefreshTrustedAdvisorCheckRequest) -> EventLoopFuture<RefreshTrustedAdvisorCheckResponse> {
        return client.send(operation: "RefreshTrustedAdvisorCheck", path: "/", httpMethod: "POST", input: input)
    }

    ///  Takes a caseId and returns the initial state of the case along with the state of the case after the call to ResolveCase completed.
    public func resolveCase(_ input: ResolveCaseRequest) -> EventLoopFuture<ResolveCaseResponse> {
        return client.send(operation: "ResolveCase", path: "/", httpMethod: "POST", input: input)
    }
}
