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
Client object for interacting with AWS CodeGuruProfiler service.

This section provides documentation for the Amazon CodeGuru Profiler API operations.
*/
public struct CodeGuruProfiler {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the CodeGuruProfiler client
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
            service: "codeguru-profiler",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2019-07-18",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [CodeGuruProfilerErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    public func configureAgent(_ input: ConfigureAgentRequest) -> EventLoopFuture<ConfigureAgentResponse> {
        return client.send(operation: "ConfigureAgent", path: "/profilingGroups/{profilingGroupName}/configureAgent", httpMethod: "POST", input: input)
    }

    ///  Creates a profiling group.
    public func createProfilingGroup(_ input: CreateProfilingGroupRequest) -> EventLoopFuture<CreateProfilingGroupResponse> {
        return client.send(operation: "CreateProfilingGroup", path: "/profilingGroups", httpMethod: "POST", input: input)
    }

    ///  Deletes a profiling group.
    public func deleteProfilingGroup(_ input: DeleteProfilingGroupRequest) -> EventLoopFuture<DeleteProfilingGroupResponse> {
        return client.send(operation: "DeleteProfilingGroup", path: "/profilingGroups/{profilingGroupName}", httpMethod: "DELETE", input: input)
    }

    ///  Describes a profiling group.
    public func describeProfilingGroup(_ input: DescribeProfilingGroupRequest) -> EventLoopFuture<DescribeProfilingGroupResponse> {
        return client.send(operation: "DescribeProfilingGroup", path: "/profilingGroups/{profilingGroupName}", httpMethod: "GET", input: input)
    }

    ///  Gets the aggregated profile of a profiling group for the specified time range. If the requested time range does not align with the available aggregated profiles, it is expanded to attain alignment. If aggregated profiles are available only for part of the period requested, the profile is returned from the earliest available to the latest within the requested time range.  For example, if the requested time range is from 00:00 to 00:20 and the available profiles are from 00:15 to 00:25, the returned profile will be from 00:15 to 00:20.  You must specify exactly two of the following parameters: startTime, period, and endTime. 
    public func getProfile(_ input: GetProfileRequest) -> EventLoopFuture<GetProfileResponse> {
        return client.send(operation: "GetProfile", path: "/profilingGroups/{profilingGroupName}/profile", httpMethod: "GET", input: input)
    }

    ///  List the start times of the available aggregated profiles of a profiling group for an aggregation period within the specified time range.
    public func listProfileTimes(_ input: ListProfileTimesRequest) -> EventLoopFuture<ListProfileTimesResponse> {
        return client.send(operation: "ListProfileTimes", path: "/profilingGroups/{profilingGroupName}/profileTimes", httpMethod: "GET", input: input)
    }

    ///  Lists profiling groups.
    public func listProfilingGroups(_ input: ListProfilingGroupsRequest) -> EventLoopFuture<ListProfilingGroupsResponse> {
        return client.send(operation: "ListProfilingGroups", path: "/profilingGroups", httpMethod: "GET", input: input)
    }

    public func postAgentProfile(_ input: PostAgentProfileRequest) -> EventLoopFuture<PostAgentProfileResponse> {
        return client.send(operation: "PostAgentProfile", path: "/profilingGroups/{profilingGroupName}/agentProfile", httpMethod: "POST", input: input)
    }

    ///  Updates a profiling group.
    public func updateProfilingGroup(_ input: UpdateProfilingGroupRequest) -> EventLoopFuture<UpdateProfilingGroupResponse> {
        return client.send(operation: "UpdateProfilingGroup", path: "/profilingGroups/{profilingGroupName}", httpMethod: "PUT", input: input)
    }
}
