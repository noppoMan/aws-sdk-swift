// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension IoTDataPlane {

    public struct DeleteThingShadowRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "thingName", location: .uri(locationName: "thingName"), required: true, type: .string)
        ]

        /// The name of the thing.
        public let thingName: String

        public init(thingName: String) {
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try validate(thingName, name:"thingName", parent: name, max: 128)
            try validate(thingName, name:"thingName", parent: name, min: 1)
            try validate(thingName, name:"thingName", parent: name, pattern: "[a-zA-Z0-9_-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case thingName = "thingName"
        }
    }

    public struct DeleteThingShadowResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "payload"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "payload", required: true, type: .blob)
        ]

        /// The state information, in JSON format.
        public let payload: Data

        public init(payload: Data) {
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case payload = "payload"
        }
    }

    public struct GetThingShadowRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "thingName", location: .uri(locationName: "thingName"), required: true, type: .string)
        ]

        /// The name of the thing.
        public let thingName: String

        public init(thingName: String) {
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try validate(thingName, name:"thingName", parent: name, max: 128)
            try validate(thingName, name:"thingName", parent: name, min: 1)
            try validate(thingName, name:"thingName", parent: name, pattern: "[a-zA-Z0-9_-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case thingName = "thingName"
        }
    }

    public struct GetThingShadowResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "payload"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "payload", required: false, type: .blob)
        ]

        /// The state information, in JSON format.
        public let payload: Data?

        public init(payload: Data? = nil) {
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case payload = "payload"
        }
    }

    public struct PublishRequest: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "payload"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "payload", required: false, type: .blob), 
            AWSShapeMember(label: "qos", location: .querystring(locationName: "qos"), required: false, type: .integer), 
            AWSShapeMember(label: "topic", location: .uri(locationName: "topic"), required: true, type: .string)
        ]

        /// The state information, in JSON format.
        public let payload: Data?
        /// The Quality of Service (QoS) level.
        public let qos: Int?
        /// The name of the MQTT topic.
        public let topic: String

        public init(payload: Data? = nil, qos: Int? = nil, topic: String) {
            self.payload = payload
            self.qos = qos
            self.topic = topic
        }

        public func validate(name: String) throws {
            try validate(qos, name:"qos", parent: name, max: 1)
            try validate(qos, name:"qos", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case payload = "payload"
            case qos = "qos"
            case topic = "topic"
        }
    }

    public struct UpdateThingShadowRequest: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "payload"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "payload", required: true, type: .blob), 
            AWSShapeMember(label: "thingName", location: .uri(locationName: "thingName"), required: true, type: .string)
        ]

        /// The state information, in JSON format.
        public let payload: Data
        /// The name of the thing.
        public let thingName: String

        public init(payload: Data, thingName: String) {
            self.payload = payload
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try validate(thingName, name:"thingName", parent: name, max: 128)
            try validate(thingName, name:"thingName", parent: name, min: 1)
            try validate(thingName, name:"thingName", parent: name, pattern: "[a-zA-Z0-9_-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case payload = "payload"
            case thingName = "thingName"
        }
    }

    public struct UpdateThingShadowResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "payload"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "payload", required: false, type: .blob)
        ]

        /// The state information, in JSON format.
        public let payload: Data?

        public init(payload: Data? = nil) {
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case payload = "payload"
        }
    }
}
