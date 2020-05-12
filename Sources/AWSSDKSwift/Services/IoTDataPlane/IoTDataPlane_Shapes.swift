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

import AWSSDKSwiftCore
import Foundation

extension IoTDataPlane {
    //MARK: Enums

    //MARK: Shapes

    public struct DeleteThingShadowRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "thingName", location: .uri(locationName: "thingName"))
        ]

        /// The name of the thing.
        public let thingName: String

        public init(thingName: String) {
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try validate(self.thingName, name: "thingName", parent: name, max: 128)
            try validate(self.thingName, name: "thingName", parent: name, min: 1)
            try validate(self.thingName, name: "thingName", parent: name, pattern: "[a-zA-Z0-9_-]+")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteThingShadowResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let payloadPath: String = "payload"
        public static var _encoding = [
            AWSMemberEncoding(label: "payload", encoding: .blob)
        ]

        /// The state information, in JSON format.
        public let payload: AWSPayload

        public init(payload: AWSPayload) {
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case payload = "payload"
        }
    }

    public struct GetThingShadowRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "thingName", location: .uri(locationName: "thingName"))
        ]

        /// The name of the thing.
        public let thingName: String

        public init(thingName: String) {
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try validate(self.thingName, name: "thingName", parent: name, max: 128)
            try validate(self.thingName, name: "thingName", parent: name, min: 1)
            try validate(self.thingName, name: "thingName", parent: name, pattern: "[a-zA-Z0-9_-]+")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetThingShadowResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let payloadPath: String = "payload"
        public static var _encoding = [
            AWSMemberEncoding(label: "payload", encoding: .blob)
        ]

        /// The state information, in JSON format.
        public let payload: AWSPayload?

        public init(payload: AWSPayload? = nil) {
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case payload = "payload"
        }
    }

    public struct PublishRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let payloadPath: String = "payload"
        public static var _encoding = [
            AWSMemberEncoding(label: "payload", encoding: .blob), 
            AWSMemberEncoding(label: "qos", location: .querystring(locationName: "qos")), 
            AWSMemberEncoding(label: "topic", location: .uri(locationName: "topic"))
        ]

        /// The state information, in JSON format.
        public let payload: AWSPayload?
        /// The Quality of Service (QoS) level.
        public let qos: Int?
        /// The name of the MQTT topic.
        public let topic: String

        public init(payload: AWSPayload? = nil, qos: Int? = nil, topic: String) {
            self.payload = payload
            self.qos = qos
            self.topic = topic
        }

        public func validate(name: String) throws {
            try validate(self.qos, name: "qos", parent: name, max: 1)
            try validate(self.qos, name: "qos", parent: name, min: 0)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UpdateThingShadowRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let payloadPath: String = "payload"
        public static var _encoding = [
            AWSMemberEncoding(label: "payload", encoding: .blob), 
            AWSMemberEncoding(label: "thingName", location: .uri(locationName: "thingName"))
        ]

        /// The state information, in JSON format.
        public let payload: AWSPayload
        /// The name of the thing.
        public let thingName: String

        public init(payload: AWSPayload, thingName: String) {
            self.payload = payload
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try validate(self.thingName, name: "thingName", parent: name, max: 128)
            try validate(self.thingName, name: "thingName", parent: name, min: 1)
            try validate(self.thingName, name: "thingName", parent: name, pattern: "[a-zA-Z0-9_-]+")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UpdateThingShadowResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let payloadPath: String = "payload"
        public static var _encoding = [
            AWSMemberEncoding(label: "payload", encoding: .blob)
        ]

        /// The state information, in JSON format.
        public let payload: AWSPayload?

        public init(payload: AWSPayload? = nil) {
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case payload = "payload"
        }
    }
}
