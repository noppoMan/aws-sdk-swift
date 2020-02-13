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
Client object for interacting with AWS IoTDataPlane service.

AWS IoT AWS IoT-Data enables secure, bi-directional communication between Internet-connected things (such as sensors, actuators, embedded devices, or smart appliances) and the AWS cloud. It implements a broker for applications and things to publish messages over HTTP (Publish) and retrieve, update, and delete thing shadows. A thing shadow is a persistent representation of your things and their state in the AWS cloud.
*/
public struct IoTDataPlane {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the IoTDataPlane client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `useAWSClientShared` if the client shall manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "data.iot",
            signingName: "iotdata",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2015-05-28",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [IoTDataPlaneErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Deletes the thing shadow for the specified thing. For more information, see DeleteThingShadow in the AWS IoT Developer Guide.
    public func deleteThingShadow(_ input: DeleteThingShadowRequest) -> EventLoopFuture<DeleteThingShadowResponse> {
        return client.send(operation: "DeleteThingShadow", path: "/things/{thingName}/shadow", httpMethod: "DELETE", input: input)
    }

    ///  Gets the thing shadow for the specified thing. For more information, see GetThingShadow in the AWS IoT Developer Guide.
    public func getThingShadow(_ input: GetThingShadowRequest) -> EventLoopFuture<GetThingShadowResponse> {
        return client.send(operation: "GetThingShadow", path: "/things/{thingName}/shadow", httpMethod: "GET", input: input)
    }

    ///  Publishes state information. For more information, see HTTP Protocol in the AWS IoT Developer Guide.
    @discardableResult public func publish(_ input: PublishRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "Publish", path: "/topics/{topic}", httpMethod: "POST", input: input)
    }

    ///  Updates the thing shadow for the specified thing. For more information, see UpdateThingShadow in the AWS IoT Developer Guide.
    public func updateThingShadow(_ input: UpdateThingShadowRequest) -> EventLoopFuture<UpdateThingShadowResponse> {
        return client.send(operation: "UpdateThingShadow", path: "/things/{thingName}/shadow", httpMethod: "POST", input: input)
    }
}
