//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

/// Client object for interacting with AWS PinpointSMSVoice service.
///
/// Pinpoint SMS and Voice Messaging public facing APIs
public struct PinpointSMSVoice: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the PinpointSMSVoice client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "sms-voice.pinpoint",
            signingName: "sms-voice",
            serviceProtocol: .restjson,
            apiVersion: "2018-09-05",
            endpoint: endpoint,
            errorType: PinpointSMSVoiceErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Create a new configuration set. After you create the configuration set, you can add one or more event destinations to it.
    public func createConfigurationSet(_ input: CreateConfigurationSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConfigurationSetResponse> {
        return self.client.execute(operation: "CreateConfigurationSet", path: "/v1/sms-voice/configuration-sets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a new event destination in a configuration set.
    public func createConfigurationSetEventDestination(_ input: CreateConfigurationSetEventDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConfigurationSetEventDestinationResponse> {
        return self.client.execute(operation: "CreateConfigurationSetEventDestination", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing configuration set.
    public func deleteConfigurationSet(_ input: DeleteConfigurationSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConfigurationSetResponse> {
        return self.client.execute(operation: "DeleteConfigurationSet", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an event destination in a configuration set.
    public func deleteConfigurationSetEventDestination(_ input: DeleteConfigurationSetEventDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConfigurationSetEventDestinationResponse> {
        return self.client.execute(operation: "DeleteConfigurationSetEventDestination", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Obtain information about an event destination, including the types of events it reports, the Amazon Resource Name (ARN) of the destination, and the name of the event destination.
    public func getConfigurationSetEventDestinations(_ input: GetConfigurationSetEventDestinationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetConfigurationSetEventDestinationsResponse> {
        return self.client.execute(operation: "GetConfigurationSetEventDestinations", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all of the configuration sets associated with your Amazon Pinpoint account in the current region.
    public func listConfigurationSets(_ input: ListConfigurationSetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConfigurationSetsResponse> {
        return self.client.execute(operation: "ListConfigurationSets", path: "/v1/sms-voice/configuration-sets", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a new voice message and send it to a recipient's phone number.
    public func sendVoiceMessage(_ input: SendVoiceMessageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendVoiceMessageResponse> {
        return self.client.execute(operation: "SendVoiceMessage", path: "/v1/sms-voice/voice/message", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update an event destination in a configuration set. An event destination is a location that you publish information about your voice calls to. For example, you can log an event to an Amazon CloudWatch destination when a call fails.
    public func updateConfigurationSetEventDestination(_ input: UpdateConfigurationSetEventDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateConfigurationSetEventDestinationResponse> {
        return self.client.execute(operation: "UpdateConfigurationSetEventDestination", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension PinpointSMSVoice {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: PinpointSMSVoice, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
