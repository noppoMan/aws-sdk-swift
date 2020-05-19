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
Client object for interacting with AWS FMS service.

AWS Firewall Manager This is the AWS Firewall Manager API Reference. This guide is for developers who need detailed information about the AWS Firewall Manager API actions, data types, and errors. For detailed information about AWS Firewall Manager features, see the AWS Firewall Manager Developer Guide.
*/
public struct FMS {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the FMS client
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
            amzTarget: "AWSFMS_20180101",
            service: "fms",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-01-01",
            endpoint: endpoint,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            possibleErrorTypes: [FMSErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Sets the AWS Firewall Manager administrator account. AWS Firewall Manager must be associated with the master account of your AWS organization or associated with a member account that has the appropriate permissions. If the account ID that you submit is not an AWS Organizations master account, AWS Firewall Manager will set the appropriate permissions for the given member account. The account that you associate with AWS Firewall Manager is called the AWS Firewall Manager administrator account. 
    @discardableResult public func associateAdminAccount(_ input: AssociateAdminAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "AssociateAdminAccount", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an AWS Firewall Manager association with the IAM role and the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs.
    @discardableResult public func deleteNotificationChannel(_ input: DeleteNotificationChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteNotificationChannel", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Permanently deletes an AWS Firewall Manager policy. 
    @discardableResult public func deletePolicy(_ input: DeletePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeletePolicy", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates the account that has been set as the AWS Firewall Manager administrator account. To set a different account as the administrator account, you must submit an AssociateAdminAccount request.
    @discardableResult public func disassociateAdminAccount(_ input: DisassociateAdminAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DisassociateAdminAccount", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the AWS Organizations master account that is associated with AWS Firewall Manager as the AWS Firewall Manager administrator.
    public func getAdminAccount(_ input: GetAdminAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAdminAccountResponse> {
        return client.send(operation: "GetAdminAccount", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns detailed compliance information about the specified member account. Details include resources that are in and out of compliance with the specified policy. Resources are considered noncompliant for AWS WAF and Shield Advanced policies if the specified policy has not been applied to them. Resources are considered noncompliant for security group policies if they are in scope of the policy, they violate one or more of the policy rules, and remediation is disabled or not possible. 
    public func getComplianceDetail(_ input: GetComplianceDetailRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetComplianceDetailResponse> {
        return client.send(operation: "GetComplianceDetail", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Information about the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs.
    public func getNotificationChannel(_ input: GetNotificationChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetNotificationChannelResponse> {
        return client.send(operation: "GetNotificationChannel", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about the specified AWS Firewall Manager policy.
    public func getPolicy(_ input: GetPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPolicyResponse> {
        return client.send(operation: "GetPolicy", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  If you created a Shield Advanced policy, returns policy-level attack summary information in the event of a potential DDoS attack. Other policy types are currently unsupported.
    public func getProtectionStatus(_ input: GetProtectionStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetProtectionStatusResponse> {
        return client.send(operation: "GetProtectionStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns an array of PolicyComplianceStatus objects in the response. Use PolicyComplianceStatus to get a summary of which member accounts are protected by the specified policy. 
    public func listComplianceStatus(_ input: ListComplianceStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListComplianceStatusResponse> {
        return client.send(operation: "ListComplianceStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a MemberAccounts object that lists the member accounts in the administrator's AWS organization. The ListMemberAccounts must be submitted by the account that is set as the AWS Firewall Manager administrator.
    public func listMemberAccounts(_ input: ListMemberAccountsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMemberAccountsResponse> {
        return client.send(operation: "ListMemberAccounts", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns an array of PolicySummary objects in the response.
    public func listPolicies(_ input: ListPoliciesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPoliciesResponse> {
        return client.send(operation: "ListPolicies", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the list of tags for the specified AWS resource. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Designates the IAM role and Amazon Simple Notification Service (SNS) topic that AWS Firewall Manager uses to record SNS logs.
    @discardableResult public func putNotificationChannel(_ input: PutNotificationChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "PutNotificationChannel", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an AWS Firewall Manager policy. Firewall Manager provides the following types of policies:    A Shield Advanced policy, which applies Shield Advanced protection to specified accounts and resources   An AWS WAF policy (type WAFV2), which defines rule groups to run first in the corresponding AWS WAF web ACL and rule groups to run last in the web ACL.   An AWS WAF Classic policy (type WAF), which defines a rule group.    A security group policy, which manages VPC security groups across your AWS organization.    Each policy is specific to one of the types. If you want to enforce more than one policy type across accounts, create multiple policies. You can create multiple policies for each type. You must be subscribed to Shield Advanced to create a Shield Advanced policy. For more information about subscribing to Shield Advanced, see CreateSubscription.
    public func putPolicy(_ input: PutPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutPolicyResponse> {
        return client.send(operation: "PutPolicy", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds one or more tags to an AWS resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes one or more tags from an AWS resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
