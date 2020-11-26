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

/// Client object for interacting with AWS ConnectParticipant service.
///
/// Amazon Connect is a cloud-based contact center solution that makes it easy to set up and manage a customer contact center and provide reliable customer engagement at any scale. Amazon Connect enables customer contacts through voice or chat. The APIs described here are used by chat participants, such as agents and customers.
public struct ConnectParticipant: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ConnectParticipant client
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
            service: "participant.connect",
            signingName: "execute-api",
            serviceProtocol: .restjson,
            apiVersion: "2018-09-07",
            endpoint: endpoint,
            errorType: ConnectParticipantErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates the participant's connection. Note that ParticipantToken is used for invoking this API instead of ConnectionToken. The participant token is valid for the lifetime of the participant – until the they are part of a contact. The response URL for WEBSOCKET Type has a connect expiry timeout of 100s. Clients must manually connect to the returned websocket URL and subscribe to the desired topic.  For chat, you need to publish the following on the established websocket connection:  {"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}  Upon websocket URL expiry, as specified in the response ConnectionExpiry parameter, clients need to call this API again to obtain a new websocket URL and perform the same steps as before.
    public func createParticipantConnection(_ input: CreateParticipantConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateParticipantConnectionResponse> {
        return self.client.execute(operation: "CreateParticipantConnection", path: "/participant/connection", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disconnects a participant. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
    public func disconnectParticipant(_ input: DisconnectParticipantRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisconnectParticipantResponse> {
        return self.client.execute(operation: "DisconnectParticipant", path: "/participant/disconnect", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a transcript of the session. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
    public func getTranscript(_ input: GetTranscriptRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTranscriptResponse> {
        return self.client.execute(operation: "GetTranscript", path: "/participant/transcript", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends an event. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
    public func sendEvent(_ input: SendEventRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendEventResponse> {
        return self.client.execute(operation: "SendEvent", path: "/participant/event", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends a message. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
    public func sendMessage(_ input: SendMessageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendMessageResponse> {
        return self.client.execute(operation: "SendMessage", path: "/participant/message", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension ConnectParticipant {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ConnectParticipant, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
