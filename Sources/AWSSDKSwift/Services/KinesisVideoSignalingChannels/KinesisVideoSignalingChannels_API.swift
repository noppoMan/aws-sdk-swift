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
Client object for interacting with AWS KinesisVideoSignalingChannels service.

Kinesis Video Streams Signaling Service is a intermediate service that establishes a communication channel for discovering peers, transmitting offers and answers in order to establish peer-to-peer connection in webRTC technology.
*/
public struct KinesisVideoSignalingChannels {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the KinesisVideoSignalingChannels client
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
            service: "kinesisvideo",
            serviceProtocol: .restjson,
            apiVersion: "2019-12-04",
            endpoint: endpoint,
            possibleErrorTypes: [KinesisVideoSignalingChannelsErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Gets the Interactive Connectivity Establishment (ICE) server configuration information, including URIs, username, and password which can be used to configure the WebRTC connection. The ICE component uses this configuration information to setup the WebRTC connection, including authenticating with the Traversal Using Relays around NAT (TURN) relay server.  TURN is a protocol that is used to improve the connectivity of peer-to-peer applications. By providing a cloud-based relay service, TURN ensures that a connection can be established even when one or more peers are incapable of a direct peer-to-peer connection. For more information, see A REST API For Access To TURN Services.  You can invoke this API to establish a fallback mechanism in case either of the peers is unable to establish a direct peer-to-peer connection over a signaling channel. You must specify either a signaling channel ARN or the client ID in order to invoke this API.
    public func getIceServerConfig(_ input: GetIceServerConfigRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetIceServerConfigResponse> {
        return client.execute(operation: "GetIceServerConfig", path: "/v1/get-ice-server-config", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  This API allows you to connect WebRTC-enabled devices with Alexa display devices. When invoked, it sends the Alexa Session Description Protocol (SDP) offer to the master peer. The offer is delivered as soon as the master is connected to the specified signaling channel. This API returns the SDP answer from the connected master. If the master is not connected to the signaling channel, redelivery requests are made until the message expires.
    public func sendAlexaOfferToMaster(_ input: SendAlexaOfferToMasterRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<SendAlexaOfferToMasterResponse> {
        return client.execute(operation: "SendAlexaOfferToMaster", path: "/v1/send-alexa-offer-to-master", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
