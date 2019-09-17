// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
The transactional data APIs for Amazon QLDB
*/
public struct QLDBSession {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "QLDBSession",
            service: "session.qldb",
            signingName: "qldb",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 0)),
            apiVersion: "2019-07-11",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [QLDBSessionErrorType.self]
        )
    }

    ///  Sends a command to an Amazon QLDB ledger.
    public func sendCommand(_ input: SendCommandRequest) -> Future<SendCommandResult> {
        return client.send(operation: "SendCommand", path: "/", httpMethod: "POST", input: input)
    }
}
