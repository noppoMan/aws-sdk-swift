//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import Foundation
import SotoCore

extension IoTEventsData {
    // MARK: Enums

    public enum ErrorCode: String, CustomStringConvertible, Codable {
        case internalfailureexception = "InternalFailureException"
        case invalidrequestexception = "InvalidRequestException"
        case resourcenotfoundexception = "ResourceNotFoundException"
        case serviceunavailableexception = "ServiceUnavailableException"
        case throttlingexception = "ThrottlingException"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct BatchPutMessageErrorEntry: AWSDecodableShape {
        /// The code associated with the error.
        public let errorCode: ErrorCode?
        /// More information about the error.
        public let errorMessage: String?
        /// The ID of the message that caused the error. (See the value corresponding to the "messageId" key in the "message" object.)
        public let messageId: String?

        public init(errorCode: ErrorCode? = nil, errorMessage: String? = nil, messageId: String? = nil) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.messageId = messageId
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode
            case errorMessage
            case messageId
        }
    }

    public struct BatchPutMessageRequest: AWSEncodableShape {
        /// The list of messages to send. Each message has the following format: '{ "messageId": "string", "inputName": "string", "payload": "string"}'
        public let messages: [Message]

        public init(messages: [Message]) {
            self.messages = messages
        }

        public func validate(name: String) throws {
            try self.messages.forEach {
                try $0.validate(name: "\(name).messages[]")
            }
            try self.messages.forEach {}
            try self.validate(self.messages, name: "messages", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case messages
        }
    }

    public struct BatchPutMessageResponse: AWSDecodableShape {
        /// A list of any errors encountered when sending the messages.
        public let batchPutMessageErrorEntries: [BatchPutMessageErrorEntry]?

        public init(batchPutMessageErrorEntries: [BatchPutMessageErrorEntry]? = nil) {
            self.batchPutMessageErrorEntries = batchPutMessageErrorEntries
        }

        private enum CodingKeys: String, CodingKey {
            case batchPutMessageErrorEntries = "BatchPutMessageErrorEntries"
        }
    }

    public struct BatchUpdateDetectorErrorEntry: AWSDecodableShape {
        /// The code of the error.
        public let errorCode: ErrorCode?
        /// A message describing the error.
        public let errorMessage: String?
        /// The "messageId" of the update request that caused the error. (The value of the "messageId" in the update request "Detector" object.)
        public let messageId: String?

        public init(errorCode: ErrorCode? = nil, errorMessage: String? = nil, messageId: String? = nil) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.messageId = messageId
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode
            case errorMessage
            case messageId
        }
    }

    public struct BatchUpdateDetectorRequest: AWSEncodableShape {
        /// The list of detectors (instances) to update, along with the values to update.
        public let detectors: [UpdateDetectorRequest]

        public init(detectors: [UpdateDetectorRequest]) {
            self.detectors = detectors
        }

        public func validate(name: String) throws {
            try self.detectors.forEach {
                try $0.validate(name: "\(name).detectors[]")
            }
            try self.detectors.forEach {}
            try self.validate(self.detectors, name: "detectors", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case detectors
        }
    }

    public struct BatchUpdateDetectorResponse: AWSDecodableShape {
        /// A list of those detector updates that resulted in errors. (If an error is listed here, the specific update did not occur.)
        public let batchUpdateDetectorErrorEntries: [BatchUpdateDetectorErrorEntry]?

        public init(batchUpdateDetectorErrorEntries: [BatchUpdateDetectorErrorEntry]? = nil) {
            self.batchUpdateDetectorErrorEntries = batchUpdateDetectorErrorEntries
        }

        private enum CodingKeys: String, CodingKey {
            case batchUpdateDetectorErrorEntries
        }
    }

    public struct DescribeDetectorRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "detectorModelName", location: .uri(locationName: "detectorModelName")),
            AWSMemberEncoding(label: "keyValue", location: .querystring(locationName: "keyValue"))
        ]

        /// The name of the detector model whose detectors (instances) you want information about.
        public let detectorModelName: String
        /// A filter used to limit results to detectors (instances) created because of the given key ID.
        public let keyValue: String?

        public init(detectorModelName: String, keyValue: String? = nil) {
            self.detectorModelName = detectorModelName
            self.keyValue = keyValue
        }

        public func validate(name: String) throws {
            try self.detectorModelName.forEach {}
            try self.validate(self.detectorModelName, name: "detectorModelName", parent: name, max: 128)
            try self.validate(self.detectorModelName, name: "detectorModelName", parent: name, min: 1)
            try self.validate(self.detectorModelName, name: "detectorModelName", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try self.keyValue?.forEach {}
            try self.validate(self.keyValue, name: "keyValue", parent: name, max: 128)
            try self.validate(self.keyValue, name: "keyValue", parent: name, min: 1)
            try self.validate(self.keyValue, name: "keyValue", parent: name, pattern: "^[a-zA-Z0-9\\-_:]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeDetectorResponse: AWSDecodableShape {
        /// Information about the detector (instance).
        public let detector: Detector?

        public init(detector: Detector? = nil) {
            self.detector = detector
        }

        private enum CodingKeys: String, CodingKey {
            case detector
        }
    }

    public struct Detector: AWSDecodableShape {
        /// The time the detector (instance) was created.
        public let creationTime: Date?
        /// The name of the detector model that created this detector (instance).
        public let detectorModelName: String?
        /// The version of the detector model that created this detector (instance).
        public let detectorModelVersion: String?
        /// The value of the key (identifying the device or system) that caused the creation of this detector (instance).
        public let keyValue: String?
        /// The time the detector (instance) was last updated.
        public let lastUpdateTime: Date?
        /// The current state of the detector (instance).
        public let state: DetectorState?

        public init(creationTime: Date? = nil, detectorModelName: String? = nil, detectorModelVersion: String? = nil, keyValue: String? = nil, lastUpdateTime: Date? = nil, state: DetectorState? = nil) {
            self.creationTime = creationTime
            self.detectorModelName = detectorModelName
            self.detectorModelVersion = detectorModelVersion
            self.keyValue = keyValue
            self.lastUpdateTime = lastUpdateTime
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case creationTime
            case detectorModelName
            case detectorModelVersion
            case keyValue
            case lastUpdateTime
            case state
        }
    }

    public struct DetectorState: AWSDecodableShape {
        /// The name of the state.
        public let stateName: String
        /// The current state of the detector's timers.
        public let timers: [Timer]
        /// The current values of the detector's variables.
        public let variables: [Variable]

        public init(stateName: String, timers: [Timer], variables: [Variable]) {
            self.stateName = stateName
            self.timers = timers
            self.variables = variables
        }

        private enum CodingKeys: String, CodingKey {
            case stateName
            case timers
            case variables
        }
    }

    public struct DetectorStateDefinition: AWSEncodableShape {
        /// The name of the new state of the detector (instance).
        public let stateName: String
        /// The new values of the detector's timers. Any timer whose value isn't specified is cleared, and its timeout event won't occur.
        public let timers: [TimerDefinition]
        /// The new values of the detector's variables. Any variable whose value isn't specified is cleared.
        public let variables: [VariableDefinition]

        public init(stateName: String, timers: [TimerDefinition], variables: [VariableDefinition]) {
            self.stateName = stateName
            self.timers = timers
            self.variables = variables
        }

        public func validate(name: String) throws {
            try self.stateName.forEach {}
            try self.validate(self.stateName, name: "stateName", parent: name, max: 128)
            try self.validate(self.stateName, name: "stateName", parent: name, min: 1)
            try self.timers.forEach {
                try $0.validate(name: "\(name).timers[]")
            }
            try self.timers.forEach {}
            try self.variables.forEach {
                try $0.validate(name: "\(name).variables[]")
            }
            try self.variables.forEach {}
        }

        private enum CodingKeys: String, CodingKey {
            case stateName
            case timers
            case variables
        }
    }

    public struct DetectorStateSummary: AWSDecodableShape {
        /// The name of the state.
        public let stateName: String?

        public init(stateName: String? = nil) {
            self.stateName = stateName
        }

        private enum CodingKeys: String, CodingKey {
            case stateName
        }
    }

    public struct DetectorSummary: AWSDecodableShape {
        /// The time the detector (instance) was created.
        public let creationTime: Date?
        /// The name of the detector model that created this detector (instance).
        public let detectorModelName: String?
        /// The version of the detector model that created this detector (instance).
        public let detectorModelVersion: String?
        /// The value of the key (identifying the device or system) that caused the creation of this detector (instance).
        public let keyValue: String?
        /// The time the detector (instance) was last updated.
        public let lastUpdateTime: Date?
        /// The current state of the detector (instance).
        public let state: DetectorStateSummary?

        public init(creationTime: Date? = nil, detectorModelName: String? = nil, detectorModelVersion: String? = nil, keyValue: String? = nil, lastUpdateTime: Date? = nil, state: DetectorStateSummary? = nil) {
            self.creationTime = creationTime
            self.detectorModelName = detectorModelName
            self.detectorModelVersion = detectorModelVersion
            self.keyValue = keyValue
            self.lastUpdateTime = lastUpdateTime
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case creationTime
            case detectorModelName
            case detectorModelVersion
            case keyValue
            case lastUpdateTime
            case state
        }
    }

    public struct ListDetectorsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "detectorModelName", location: .uri(locationName: "detectorModelName")),
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken")),
            AWSMemberEncoding(label: "stateName", location: .querystring(locationName: "stateName"))
        ]

        /// The name of the detector model whose detectors (instances) are listed.
        public let detectorModelName: String
        /// The maximum number of results to return at one time.
        public let maxResults: Int?
        /// The token for the next set of results.
        public let nextToken: String?
        /// A filter that limits results to those detectors (instances) in the given state.
        public let stateName: String?

        public init(detectorModelName: String, maxResults: Int? = nil, nextToken: String? = nil, stateName: String? = nil) {
            self.detectorModelName = detectorModelName
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.stateName = stateName
        }

        public func validate(name: String) throws {
            try self.detectorModelName.forEach {}
            try self.validate(self.detectorModelName, name: "detectorModelName", parent: name, max: 128)
            try self.validate(self.detectorModelName, name: "detectorModelName", parent: name, min: 1)
            try self.validate(self.detectorModelName, name: "detectorModelName", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try self.maxResults?.forEach {}
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 250)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.stateName?.forEach {}
            try self.validate(self.stateName, name: "stateName", parent: name, max: 128)
            try self.validate(self.stateName, name: "stateName", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListDetectorsResponse: AWSDecodableShape {
        /// A list of summary information about the detectors (instances).
        public let detectorSummaries: [DetectorSummary]?
        /// A token to retrieve the next set of results, or null if there are no additional results.
        public let nextToken: String?

        public init(detectorSummaries: [DetectorSummary]? = nil, nextToken: String? = nil) {
            self.detectorSummaries = detectorSummaries
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case detectorSummaries
            case nextToken
        }
    }

    public struct Message: AWSEncodableShape {
        /// The name of the input into which the message payload is transformed.
        public let inputName: String
        /// The ID to assign to the message. Within each batch sent, each "messageId" must be unique.
        public let messageId: String
        /// The payload of the message. This can be a JSON string or a Base-64-encoded string representing binary data (in which case you must decode it).
        public let payload: Data

        public init(inputName: String, messageId: String, payload: Data) {
            self.inputName = inputName
            self.messageId = messageId
            self.payload = payload
        }

        public func validate(name: String) throws {
            try self.inputName.forEach {}
            try self.validate(self.inputName, name: "inputName", parent: name, max: 128)
            try self.validate(self.inputName, name: "inputName", parent: name, min: 1)
            try self.validate(self.inputName, name: "inputName", parent: name, pattern: "^[a-zA-Z][a-zA-Z0-9_]*$")
            try self.messageId.forEach {}
            try self.validate(self.messageId, name: "messageId", parent: name, max: 64)
            try self.validate(self.messageId, name: "messageId", parent: name, min: 1)
            try self.validate(self.messageId, name: "messageId", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case inputName
            case messageId
            case payload
        }
    }

    public struct Timer: AWSDecodableShape {
        /// The name of the timer.
        public let name: String
        /// The number of seconds which have elapsed on the timer.
        public let timestamp: Date

        public init(name: String, timestamp: Date) {
            self.name = name
            self.timestamp = timestamp
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case timestamp
        }
    }

    public struct TimerDefinition: AWSEncodableShape {
        /// The name of the timer.
        public let name: String
        /// The new setting of the timer (the number of seconds before the timer elapses).
        public let seconds: Int

        public init(name: String, seconds: Int) {
            self.name = name
            self.seconds = seconds
        }

        public func validate(name: String) throws {
            try self.name.forEach {}
            try self.validate(self.name, name: "name", parent: name, max: 128)
            try self.validate(self.name, name: "name", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case seconds
        }
    }

    public struct UpdateDetectorRequest: AWSEncodableShape {
        /// The name of the detector model that created the detectors (instances).
        public let detectorModelName: String
        /// The value of the input key attribute (identifying the device or system) that caused the creation of this detector (instance).
        public let keyValue: String?
        /// The ID to assign to the detector update "message". Each "messageId" must be unique within each batch sent.
        public let messageId: String
        /// The new state, variable values, and timer settings of the detector (instance).
        public let state: DetectorStateDefinition

        public init(detectorModelName: String, keyValue: String? = nil, messageId: String, state: DetectorStateDefinition) {
            self.detectorModelName = detectorModelName
            self.keyValue = keyValue
            self.messageId = messageId
            self.state = state
        }

        public func validate(name: String) throws {
            try self.detectorModelName.forEach {}
            try self.validate(self.detectorModelName, name: "detectorModelName", parent: name, max: 128)
            try self.validate(self.detectorModelName, name: "detectorModelName", parent: name, min: 1)
            try self.validate(self.detectorModelName, name: "detectorModelName", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try self.keyValue?.forEach {}
            try self.validate(self.keyValue, name: "keyValue", parent: name, max: 128)
            try self.validate(self.keyValue, name: "keyValue", parent: name, min: 1)
            try self.validate(self.keyValue, name: "keyValue", parent: name, pattern: "^[a-zA-Z0-9\\-_:]+$")
            try self.messageId.forEach {}
            try self.validate(self.messageId, name: "messageId", parent: name, max: 64)
            try self.validate(self.messageId, name: "messageId", parent: name, min: 1)
            try self.validate(self.messageId, name: "messageId", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try self.state.validate(name: "\(name).state")
            try self.state.forEach {}
        }

        private enum CodingKeys: String, CodingKey {
            case detectorModelName
            case keyValue
            case messageId
            case state
        }
    }

    public struct Variable: AWSDecodableShape {
        /// The name of the variable.
        public let name: String
        /// The current value of the variable.
        public let value: String

        public init(name: String, value: String) {
            self.name = name
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case value
        }
    }

    public struct VariableDefinition: AWSEncodableShape {
        /// The name of the variable.
        public let name: String
        /// The new value of the variable.
        public let value: String

        public init(name: String, value: String) {
            self.name = name
            self.value = value
        }

        public func validate(name: String) throws {
            try self.name.forEach {}
            try self.validate(self.name, name: "name", parent: name, max: 128)
            try self.validate(self.name, name: "name", parent: name, min: 1)
            try self.validate(self.name, name: "name", parent: name, pattern: "^[a-zA-Z][a-zA-Z0-9_]*$")
            try self.value.forEach {}
            try self.validate(self.value, name: "value", parent: name, max: 1024)
            try self.validate(self.value, name: "value", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case value
        }
    }
}
