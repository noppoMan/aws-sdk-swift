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
Client object for interacting with AWS PinpointSMSVoice service.

Pinpoint SMS and Voice Messaging public facing APIs
*/
public struct PinpointSMSVoice {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the PinpointSMSVoice client
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
            service: "sms-voice.pinpoint",
            signingName: "sms-voice",
            serviceProtocol: .restjson,
            apiVersion: "2018-09-05",
            endpoint: endpoint,
            possibleErrorTypes: [PinpointSMSVoiceErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Create a new configuration set. After you create the configuration set, you can add one or more event destinations to it.
    public func createConfigurationSet(_ input: CreateConfigurationSetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateConfigurationSetResponse> {
        return client.execute(operation: "CreateConfigurationSet", path: "/v1/sms-voice/configuration-sets", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Create a new event destination in a configuration set.
    public func createConfigurationSetEventDestination(_ input: CreateConfigurationSetEventDestinationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateConfigurationSetEventDestinationResponse> {
        return client.execute(operation: "CreateConfigurationSetEventDestination", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an existing configuration set.
    public func deleteConfigurationSet(_ input: DeleteConfigurationSetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteConfigurationSetResponse> {
        return client.execute(operation: "DeleteConfigurationSet", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an event destination in a configuration set.
    public func deleteConfigurationSetEventDestination(_ input: DeleteConfigurationSetEventDestinationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteConfigurationSetEventDestinationResponse> {
        return client.execute(operation: "DeleteConfigurationSetEventDestination", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Obtain information about an event destination, including the types of events it reports, the Amazon Resource Name (ARN) of the destination, and the name of the event destination.
    public func getConfigurationSetEventDestinations(_ input: GetConfigurationSetEventDestinationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetConfigurationSetEventDestinationsResponse> {
        return client.execute(operation: "GetConfigurationSetEventDestinations", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  List all of the configuration sets associated with your Amazon Pinpoint account in the current region.
    public func listConfigurationSets(_ input: ListConfigurationSetsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListConfigurationSetsResponse> {
        return client.execute(operation: "ListConfigurationSets", path: "/v1/sms-voice/configuration-sets", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Create a new voice message and send it to a recipient's phone number.
    public func sendVoiceMessage(_ input: SendVoiceMessageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<SendVoiceMessageResponse> {
        return client.execute(operation: "SendVoiceMessage", path: "/v1/sms-voice/voice/message", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Update an event destination in a configuration set. An event destination is a location that you publish information about your voice calls to. For example, you can log an event to an Amazon CloudWatch destination when a call fails.
    public func updateConfigurationSetEventDestination(_ input: UpdateConfigurationSetEventDestinationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateConfigurationSetEventDestinationResponse> {
        return client.execute(operation: "UpdateConfigurationSetEventDestination", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
