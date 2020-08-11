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
Client object for interacting with AWS IoTEventsData service.

AWS IoT Events monitors your equipment or device fleets for failures or changes in operation, and triggers actions when such events occur. AWS IoT Events Data API commands enable you to send inputs to detectors, list detectors, and view or update a detector's status.
*/
public struct IoTEventsData: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the IoTEventsData client
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
        self.context = AWSServiceContext(
            region: region,
            partition: region?.partition ?? partition,
            service: "data.iotevents",
            signingName: "ioteventsdata",
            serviceProtocol: .restjson,
            apiVersion: "2018-10-23",
            endpoint: endpoint,
            errorType: IoTEventsDataErrorType.self,
            timeout: timeout
        )
    }
    
    public func transform(_ transform:(AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, context: transform(self.context))
    }
    
    //MARK: API Calls

    ///  Sends a set of messages to the AWS IoT Events system. Each message payload is transformed into the input you specify ("inputName") and ingested into any detectors that monitor that input. If multiple messages are sent, the order in which the messages are processed isn't guaranteed. To guarantee ordering, you must send messages one at a time and wait for a successful response.
    public func batchPutMessage(_ input: BatchPutMessageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchPutMessageResponse> {
        return client.execute(operation: "BatchPutMessage", path: "/inputs/messages", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Updates the state, variable values, and timer settings of one or more detectors (instances) of a specified detector model.
    public func batchUpdateDetector(_ input: BatchUpdateDetectorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchUpdateDetectorResponse> {
        return client.execute(operation: "BatchUpdateDetector", path: "/detectors", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns information about the specified detector (instance).
    public func describeDetector(_ input: DescribeDetectorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDetectorResponse> {
        return client.execute(operation: "DescribeDetector", path: "/detectors/{detectorModelName}/keyValues/", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Lists detectors (the instances of a detector model).
    public func listDetectors(_ input: ListDetectorsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDetectorsResponse> {
        return client.execute(operation: "ListDetectors", path: "/detectors/{detectorModelName}", httpMethod: .GET, serviceContext: context, input: input, on: eventLoop)
    }
}

extension IoTEventsData {
    init(client: AWSClient, context: AWSServiceContext) {
        self.client = client
        self.context = context
    }
}
