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
Client object for interacting with AWS Synthetics service.

Amazon CloudWatch Synthetics You can use Amazon CloudWatch Synthetics to continually monitor your services. You can create and manage canaries, which are modular, lightweight scripts that monitor your endpoints and APIs from the outside-in. You can set up your canaries to run 24 hours a day, once per minute. The canaries help you check the availability and latency of your web services and troubleshoot anomalies by investigating load time data, screenshots of the UI, logs, and metrics. The canaries seamlessly integrate with CloudWatch ServiceLens to help you trace the causes of impacted nodes in your applications. For more information, see Using ServiceLens to Monitor the Health of Your Applications in the Amazon CloudWatch User Guide. Before you create and manage canaries, be aware of the security considerations. For more information, see Security Considerations for Synthetics Canaries.
*/
public struct Synthetics {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Synthetics client
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
            service: "synthetics",
            serviceProtocol: .restjson,
            apiVersion: "2017-10-11",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [SyntheticsErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a canary. Canaries are scripts that monitor your endpoints and APIs from the outside-in. Canaries help you check the availability and latency of your web services and troubleshoot anomalies by investigating load time data, screenshots of the UI, logs, and metrics. You can set up a canary to run continuously or just once.  Do not use CreateCanary to modify an existing canary. Use UpdateCanary instead. To create canaries, you must have the CloudWatchSyntheticsFullAccess policy. If you are creating a new IAM role for the canary, you also need the the iam:CreateRole, iam:CreatePolicy and iam:AttachRolePolicy permissions. For more information, see Necessary Roles and Permissions. Do not include secrets or proprietary information in your canary names. The canary name makes up part of the Amazon Resource Name (ARN) for the canary, and the ARN is included in outbound calls over the internet. For more information, see Security Considerations for Synthetics Canaries.
    public func createCanary(_ input: CreateCanaryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCanaryResponse> {
        return client.send(operation: "CreateCanary", path: "/canary", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Permanently deletes the specified canary. When you delete a canary, resources used and created by the canary are not automatically deleted. After you delete a canary that you do not intend to use again, you should also delete the following:   The Lambda functions and layers used by this canary. These have the prefix cwsyn-MyCanaryName .   The CloudWatch alarms created for this canary. These alarms have a name of Synthetics-SharpDrop-Alarm-MyCanaryName .   Amazon S3 objects and buckets, such as the canary's artifact location.   IAM roles created for the canary. If they were created in the console, these roles have the name  role/service-role/CloudWatchSyntheticsRole-MyCanaryName .   CloudWatch Logs log groups created for the canary. These logs groups have the name /aws/lambda/cwsyn-MyCanaryName .    Before you delete a canary, you might want to use GetCanary to display the information about this canary. Make note of the information returned by this operation so that you can delete these resources after you delete the canary.
    public func deleteCanary(_ input: DeleteCanaryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCanaryResponse> {
        return client.send(operation: "DeleteCanary", path: "/canary/{name}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  This operation returns a list of the canaries in your account, along with full details about each canary. This operation does not have resource-level authorization, so if a user is able to use DescribeCanaries, the user can see all of the canaries in the account. A deny policy can only be used to restrict access to all canaries. It cannot be used on specific resources. 
    public func describeCanaries(_ input: DescribeCanariesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCanariesResponse> {
        return client.send(operation: "DescribeCanaries", path: "/canaries", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Use this operation to see information from the most recent run of each canary that you have created.
    public func describeCanariesLastRun(_ input: DescribeCanariesLastRunRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCanariesLastRunResponse> {
        return client.send(operation: "DescribeCanariesLastRun", path: "/canaries/last-run", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of Synthetics canary runtime versions. For more information, see  Canary Runtime Versions.
    public func describeRuntimeVersions(_ input: DescribeRuntimeVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuntimeVersionsResponse> {
        return client.send(operation: "DescribeRuntimeVersions", path: "/runtime-versions", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves complete information about one canary. You must specify the name of the canary that you want. To get a list of canaries and their names, use DescribeCanaries.
    public func getCanary(_ input: GetCanaryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCanaryResponse> {
        return client.send(operation: "GetCanary", path: "/canary/{name}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves a list of runs for a specified canary.
    public func getCanaryRuns(_ input: GetCanaryRunsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCanaryRunsResponse> {
        return client.send(operation: "GetCanaryRuns", path: "/canary/{name}/runs", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Displays the tags associated with a canary.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Use this operation to run a canary that has already been created. The frequency of the canary runs is determined by the value of the canary's Schedule. To see a canary's schedule, use GetCanary.
    public func startCanary(_ input: StartCanaryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartCanaryResponse> {
        return client.send(operation: "StartCanary", path: "/canary/{name}/start", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops the canary to prevent all future runs. If the canary is currently running, Synthetics stops waiting for the current run of the specified canary to complete. The run that is in progress completes on its own, publishes metrics, and uploads artifacts, but it is not recorded in Synthetics as a completed run. You can use StartCanary to start it running again with the canary’s current schedule at any point in the future. 
    public func stopCanary(_ input: StopCanaryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopCanaryResponse> {
        return client.send(operation: "StopCanary", path: "/canary/{name}/stop", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Assigns one or more tags (key-value pairs) to the specified canary.  Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of characters. You can use the TagResource action with a canary that already has tags. If you specify a new tag key for the alarm, this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the alarm, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a canary.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes one or more tags from the specified canary.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Use this operation to change the settings of a canary that has already been created. You can't use this operation to update the tags of an existing canary. To change the tags of an existing canary, use TagResource.
    public func updateCanary(_ input: UpdateCanaryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCanaryResponse> {
        return client.send(operation: "UpdateCanary", path: "/canary/{name}", httpMethod: "PATCH", input: input, on: eventLoop)
    }
}
