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

extension IoTDeviceAdvisor {
    // MARK: Enums

    public enum Status: String, CustomStringConvertible, Codable {
        case canceled = "CANCELED"
        case error = "ERROR"
        case fail = "FAIL"
        case pass = "PASS"
        case passWithWarnings = "PASS_WITH_WARNINGS"
        case pending = "PENDING"
        case running = "RUNNING"
        case stopped = "STOPPED"
        case stopping = "STOPPING"
        public var description: String { return self.rawValue }
    }

    public enum SuiteRunStatus: String, CustomStringConvertible, Codable {
        case canceled = "CANCELED"
        case error = "ERROR"
        case fail = "FAIL"
        case pass = "PASS"
        case passWithWarnings = "PASS_WITH_WARNINGS"
        case pending = "PENDING"
        case running = "RUNNING"
        case stopped = "STOPPED"
        case stopping = "STOPPING"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CreateSuiteDefinitionRequest: AWSEncodableShape {
        /// Creates a Device Advisor test suite with suite definition configuration.
        public let suiteDefinitionConfiguration: SuiteDefinitionConfiguration?
        /// The tags to be attached to the suite definition.
        public let tags: [String: String]?

        public init(suiteDefinitionConfiguration: SuiteDefinitionConfiguration? = nil, tags: [String: String]? = nil) {
            self.suiteDefinitionConfiguration = suiteDefinitionConfiguration
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.suiteDefinitionConfiguration?.validate(name: "\(name).suiteDefinitionConfiguration")
            try self.tags?.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, min: 1)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case suiteDefinitionConfiguration
            case tags
        }
    }

    public struct CreateSuiteDefinitionResponse: AWSDecodableShape {
        /// Creates a Device Advisor test suite with TimeStamp of when it was created.
        public let createdAt: Date?
        /// Creates a Device Advisor test suite with Amazon Resource name.
        public let suiteDefinitionArn: String?
        /// Creates a Device Advisor test suite with suite UUID.
        public let suiteDefinitionId: String?
        /// Creates a Device Advisor test suite with suite definition name.
        public let suiteDefinitionName: String?

        public init(createdAt: Date? = nil, suiteDefinitionArn: String? = nil, suiteDefinitionId: String? = nil, suiteDefinitionName: String? = nil) {
            self.createdAt = createdAt
            self.suiteDefinitionArn = suiteDefinitionArn
            self.suiteDefinitionId = suiteDefinitionId
            self.suiteDefinitionName = suiteDefinitionName
        }

        private enum CodingKeys: String, CodingKey {
            case createdAt
            case suiteDefinitionArn
            case suiteDefinitionId
            case suiteDefinitionName
        }
    }

    public struct DeleteSuiteDefinitionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "suiteDefinitionId", location: .uri(locationName: "suiteDefinitionId"))
        ]

        /// Suite definition Id of the test suite to be deleted.
        public let suiteDefinitionId: String

        public init(suiteDefinitionId: String) {
            self.suiteDefinitionId = suiteDefinitionId
        }

        public func validate(name: String) throws {
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, max: 36)
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, min: 12)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteSuiteDefinitionResponse: AWSDecodableShape {
        public init() {}
    }

    public struct DeviceUnderTest: AWSEncodableShape & AWSDecodableShape {
        /// Lists devices certificate arn
        public let certificateArn: String?
        /// Lists devices thing arn
        public let thingArn: String?

        public init(certificateArn: String? = nil, thingArn: String? = nil) {
            self.certificateArn = certificateArn
            self.thingArn = thingArn
        }

        public func validate(name: String) throws {
            try self.validate(self.certificateArn, name: "certificateArn", parent: name, max: 2048)
            try self.validate(self.certificateArn, name: "certificateArn", parent: name, min: 20)
            try self.validate(self.thingArn, name: "thingArn", parent: name, max: 2048)
            try self.validate(self.thingArn, name: "thingArn", parent: name, min: 20)
        }

        private enum CodingKeys: String, CodingKey {
            case certificateArn
            case thingArn
        }
    }

    public struct GetSuiteDefinitionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "suiteDefinitionId", location: .uri(locationName: "suiteDefinitionId")),
            AWSMemberEncoding(label: "suiteDefinitionVersion", location: .querystring(locationName: "suiteDefinitionVersion"))
        ]

        /// Suite definition Id of the test suite to get.
        public let suiteDefinitionId: String
        /// Suite definition version of the test suite to get.
        public let suiteDefinitionVersion: String?

        public init(suiteDefinitionId: String, suiteDefinitionVersion: String? = nil) {
            self.suiteDefinitionId = suiteDefinitionId
            self.suiteDefinitionVersion = suiteDefinitionVersion
        }

        public func validate(name: String) throws {
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, max: 36)
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, min: 12)
            try self.validate(self.suiteDefinitionVersion, name: "suiteDefinitionVersion", parent: name, max: 255)
            try self.validate(self.suiteDefinitionVersion, name: "suiteDefinitionVersion", parent: name, min: 2)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetSuiteDefinitionResponse: AWSDecodableShape {
        /// Date (in Unix epoch time) when the suite definition was created.
        public let createdAt: Date?
        /// Date (in Unix epoch time) when the suite definition was last modified.
        public let lastModifiedAt: Date?
        /// Latest suite definition version of the suite definition.
        public let latestVersion: String?
        /// The ARN of the suite definition.
        public let suiteDefinitionArn: String?
        /// Suite configuration of the suite definition.
        public let suiteDefinitionConfiguration: SuiteDefinitionConfiguration?
        /// Suite definition Id of the suite definition.
        public let suiteDefinitionId: String?
        /// Suite definition version of the suite definition.
        public let suiteDefinitionVersion: String?
        /// Tags attached to the suite definition.
        public let tags: [String: String]?

        public init(createdAt: Date? = nil, lastModifiedAt: Date? = nil, latestVersion: String? = nil, suiteDefinitionArn: String? = nil, suiteDefinitionConfiguration: SuiteDefinitionConfiguration? = nil, suiteDefinitionId: String? = nil, suiteDefinitionVersion: String? = nil, tags: [String: String]? = nil) {
            self.createdAt = createdAt
            self.lastModifiedAt = lastModifiedAt
            self.latestVersion = latestVersion
            self.suiteDefinitionArn = suiteDefinitionArn
            self.suiteDefinitionConfiguration = suiteDefinitionConfiguration
            self.suiteDefinitionId = suiteDefinitionId
            self.suiteDefinitionVersion = suiteDefinitionVersion
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case createdAt
            case lastModifiedAt
            case latestVersion
            case suiteDefinitionArn
            case suiteDefinitionConfiguration
            case suiteDefinitionId
            case suiteDefinitionVersion
            case tags
        }
    }

    public struct GetSuiteRunReportRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "suiteDefinitionId", location: .uri(locationName: "suiteDefinitionId")),
            AWSMemberEncoding(label: "suiteRunId", location: .uri(locationName: "suiteRunId"))
        ]

        /// Suite definition Id of the test suite.
        public let suiteDefinitionId: String
        /// Suite run Id of the test suite run.
        public let suiteRunId: String

        public init(suiteDefinitionId: String, suiteRunId: String) {
            self.suiteDefinitionId = suiteDefinitionId
            self.suiteRunId = suiteRunId
        }

        public func validate(name: String) throws {
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, max: 36)
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, min: 12)
            try self.validate(self.suiteRunId, name: "suiteRunId", parent: name, max: 36)
            try self.validate(self.suiteRunId, name: "suiteRunId", parent: name, min: 12)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetSuiteRunReportResponse: AWSDecodableShape {
        /// Download URL of the qualification report.
        public let qualificationReportDownloadUrl: String?

        public init(qualificationReportDownloadUrl: String? = nil) {
            self.qualificationReportDownloadUrl = qualificationReportDownloadUrl
        }

        private enum CodingKeys: String, CodingKey {
            case qualificationReportDownloadUrl
        }
    }

    public struct GetSuiteRunRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "suiteDefinitionId", location: .uri(locationName: "suiteDefinitionId")),
            AWSMemberEncoding(label: "suiteRunId", location: .uri(locationName: "suiteRunId"))
        ]

        /// Suite definition Id for the test suite run.
        public let suiteDefinitionId: String
        /// Suite run Id for the test suite run.
        public let suiteRunId: String

        public init(suiteDefinitionId: String, suiteRunId: String) {
            self.suiteDefinitionId = suiteDefinitionId
            self.suiteRunId = suiteRunId
        }

        public func validate(name: String) throws {
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, max: 36)
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, min: 12)
            try self.validate(self.suiteRunId, name: "suiteRunId", parent: name, max: 36)
            try self.validate(self.suiteRunId, name: "suiteRunId", parent: name, min: 12)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetSuiteRunResponse: AWSDecodableShape {
        /// Date (in Unix epoch time) when the test suite run ended.
        public let endTime: Date?
        /// Error reason for any test suite run failure.
        public let errorReason: String?
        /// Date (in Unix epoch time) when the test suite run was started.
        public let startTime: Date?
        /// Status for the test suite run.
        public let status: SuiteRunStatus?
        /// Suite definition Id for the test suite run.
        public let suiteDefinitionId: String?
        /// Suite definition version for the test suite run.
        public let suiteDefinitionVersion: String?
        /// The ARN of the suite run.
        public let suiteRunArn: String?
        /// Suite run configuration for the test suite run.
        public let suiteRunConfiguration: SuiteRunConfiguration?
        /// Suite run Id for the test suite run.
        public let suiteRunId: String?
        /// The tags attached to the suite run.
        public let tags: [String: String]?
        /// Test results for the test suite run.
        public let testResult: TestResult?

        public init(endTime: Date? = nil, errorReason: String? = nil, startTime: Date? = nil, status: SuiteRunStatus? = nil, suiteDefinitionId: String? = nil, suiteDefinitionVersion: String? = nil, suiteRunArn: String? = nil, suiteRunConfiguration: SuiteRunConfiguration? = nil, suiteRunId: String? = nil, tags: [String: String]? = nil, testResult: TestResult? = nil) {
            self.endTime = endTime
            self.errorReason = errorReason
            self.startTime = startTime
            self.status = status
            self.suiteDefinitionId = suiteDefinitionId
            self.suiteDefinitionVersion = suiteDefinitionVersion
            self.suiteRunArn = suiteRunArn
            self.suiteRunConfiguration = suiteRunConfiguration
            self.suiteRunId = suiteRunId
            self.tags = tags
            self.testResult = testResult
        }

        private enum CodingKeys: String, CodingKey {
            case endTime
            case errorReason
            case startTime
            case status
            case suiteDefinitionId
            case suiteDefinitionVersion
            case suiteRunArn
            case suiteRunConfiguration
            case suiteRunId
            case tags
            case testResult
        }
    }

    public struct GroupResult: AWSDecodableShape {
        /// Group result Id.
        public let groupId: String?
        /// Group Result Name.
        public let groupName: String?
        /// Tests under Group Result.
        public let tests: [TestCaseRun]?

        public init(groupId: String? = nil, groupName: String? = nil, tests: [TestCaseRun]? = nil) {
            self.groupId = groupId
            self.groupName = groupName
            self.tests = tests
        }

        private enum CodingKeys: String, CodingKey {
            case groupId
            case groupName
            case tests
        }
    }

    public struct ListSuiteDefinitionsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken"))
        ]

        /// The maximum number of results to return at once.
        public let maxResults: Int?
        /// A token used to get the next set of results.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 50)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 2000)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListSuiteDefinitionsResponse: AWSDecodableShape {
        /// A token used to get the next set of results.
        public let nextToken: String?
        /// An array of objects that provide summaries of information about the suite definitions in the list.
        public let suiteDefinitionInformationList: [SuiteDefinitionInformation]?

        public init(nextToken: String? = nil, suiteDefinitionInformationList: [SuiteDefinitionInformation]? = nil) {
            self.nextToken = nextToken
            self.suiteDefinitionInformationList = suiteDefinitionInformationList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken
            case suiteDefinitionInformationList
        }
    }

    public struct ListSuiteRunsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken")),
            AWSMemberEncoding(label: "suiteDefinitionId", location: .querystring(locationName: "suiteDefinitionId")),
            AWSMemberEncoding(label: "suiteDefinitionVersion", location: .querystring(locationName: "suiteDefinitionVersion"))
        ]

        /// The maximum number of results to return at once.
        public let maxResults: Int?
        /// A token to retrieve the next set of results.
        public let nextToken: String?
        /// Lists the test suite runs of the specified test suite based on suite definition Id.
        public let suiteDefinitionId: String?
        /// Must be passed along with suiteDefinitionId. Lists the test suite runs of the specified test suite based on suite definition version.
        public let suiteDefinitionVersion: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil, suiteDefinitionId: String? = nil, suiteDefinitionVersion: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.suiteDefinitionId = suiteDefinitionId
            self.suiteDefinitionVersion = suiteDefinitionVersion
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 50)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 2000)
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, max: 36)
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, min: 12)
            try self.validate(self.suiteDefinitionVersion, name: "suiteDefinitionVersion", parent: name, max: 255)
            try self.validate(self.suiteDefinitionVersion, name: "suiteDefinitionVersion", parent: name, min: 2)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListSuiteRunsResponse: AWSDecodableShape {
        /// A token to retrieve the next set of results.
        public let nextToken: String?
        /// An array of objects that provide summaries of information about the suite runs in the list.
        public let suiteRunsList: [SuiteRunInformation]?

        public init(nextToken: String? = nil, suiteRunsList: [SuiteRunInformation]? = nil) {
            self.nextToken = nextToken
            self.suiteRunsList = suiteRunsList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken
            case suiteRunsList
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "resourceArn"))
        ]

        /// The ARN of the IoT Device Advisor resource.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 2048)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 20)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {
        /// The tags attached to the IoT Device Advisor resource.
        public let tags: [String: String]?

        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags
        }
    }

    public struct StartSuiteRunRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "suiteDefinitionId", location: .uri(locationName: "suiteDefinitionId"))
        ]

        /// Suite definition Id of the test suite.
        public let suiteDefinitionId: String
        /// Suite definition version of the test suite.
        public let suiteDefinitionVersion: String?
        /// Suite run configuration.
        public let suiteRunConfiguration: SuiteRunConfiguration?
        /// The tags to be attached to the suite run.
        public let tags: [String: String]?

        public init(suiteDefinitionId: String, suiteDefinitionVersion: String? = nil, suiteRunConfiguration: SuiteRunConfiguration? = nil, tags: [String: String]? = nil) {
            self.suiteDefinitionId = suiteDefinitionId
            self.suiteDefinitionVersion = suiteDefinitionVersion
            self.suiteRunConfiguration = suiteRunConfiguration
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, max: 36)
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, min: 12)
            try self.validate(self.suiteDefinitionVersion, name: "suiteDefinitionVersion", parent: name, max: 255)
            try self.validate(self.suiteDefinitionVersion, name: "suiteDefinitionVersion", parent: name, min: 2)
            try self.suiteRunConfiguration?.validate(name: "\(name).suiteRunConfiguration")
            try self.tags?.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, min: 1)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case suiteDefinitionVersion
            case suiteRunConfiguration
            case tags
        }
    }

    public struct StartSuiteRunResponse: AWSDecodableShape {
        /// Date (in Unix epoch time) when the suite run was created.
        public let createdAt: Date?
        /// Amazon resource name of the started suite run.
        public let suiteRunArn: String?
        /// Suite Run Id of the started suite run.
        public let suiteRunId: String?

        public init(createdAt: Date? = nil, suiteRunArn: String? = nil, suiteRunId: String? = nil) {
            self.createdAt = createdAt
            self.suiteRunArn = suiteRunArn
            self.suiteRunId = suiteRunId
        }

        private enum CodingKeys: String, CodingKey {
            case createdAt
            case suiteRunArn
            case suiteRunId
        }
    }

    public struct StopSuiteRunRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "suiteDefinitionId", location: .uri(locationName: "suiteDefinitionId")),
            AWSMemberEncoding(label: "suiteRunId", location: .uri(locationName: "suiteRunId"))
        ]

        /// Suite definition Id of the test suite run to be stopped.
        public let suiteDefinitionId: String
        /// Suite run Id of the test suite run to be stopped.
        public let suiteRunId: String

        public init(suiteDefinitionId: String, suiteRunId: String) {
            self.suiteDefinitionId = suiteDefinitionId
            self.suiteRunId = suiteRunId
        }

        public func validate(name: String) throws {
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, max: 36)
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, min: 12)
            try self.validate(self.suiteRunId, name: "suiteRunId", parent: name, max: 36)
            try self.validate(self.suiteRunId, name: "suiteRunId", parent: name, min: 12)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct StopSuiteRunResponse: AWSDecodableShape {
        public init() {}
    }

    public struct SuiteDefinitionConfiguration: AWSEncodableShape & AWSDecodableShape {
        /// Gets device permission arn.
        public let devicePermissionRoleArn: String?
        /// Gets the devices configured.
        public let devices: [DeviceUnderTest]?
        /// Gets the tests intended for qualification in a suite.
        public let intendedForQualification: Bool?
        /// Gets test suite root group.
        public let rootGroup: String?
        /// Gets Suite Definition Configuration name.
        public let suiteDefinitionName: String?

        public init(devicePermissionRoleArn: String? = nil, devices: [DeviceUnderTest]? = nil, intendedForQualification: Bool? = nil, rootGroup: String? = nil, suiteDefinitionName: String? = nil) {
            self.devicePermissionRoleArn = devicePermissionRoleArn
            self.devices = devices
            self.intendedForQualification = intendedForQualification
            self.rootGroup = rootGroup
            self.suiteDefinitionName = suiteDefinitionName
        }

        public func validate(name: String) throws {
            try self.validate(self.devicePermissionRoleArn, name: "devicePermissionRoleArn", parent: name, max: 2048)
            try self.validate(self.devicePermissionRoleArn, name: "devicePermissionRoleArn", parent: name, min: 20)
            try self.devices?.forEach {
                try $0.validate(name: "\(name).devices[]")
            }
            try self.validate(self.devices, name: "devices", parent: name, max: 2)
            try self.validate(self.devices, name: "devices", parent: name, min: 0)
            try self.validate(self.rootGroup, name: "rootGroup", parent: name, max: 2048)
            try self.validate(self.rootGroup, name: "rootGroup", parent: name, min: 1)
            try self.validate(self.suiteDefinitionName, name: "suiteDefinitionName", parent: name, max: 256)
            try self.validate(self.suiteDefinitionName, name: "suiteDefinitionName", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case devicePermissionRoleArn
            case devices
            case intendedForQualification
            case rootGroup
            case suiteDefinitionName
        }
    }

    public struct SuiteDefinitionInformation: AWSDecodableShape {
        /// Date (in Unix epoch time) when the test suite was created.
        public let createdAt: Date?
        /// Specifies the devices under test for the test suite.
        public let defaultDevices: [DeviceUnderTest]?
        /// Specifies if the test suite is intended for qualification.
        public let intendedForQualification: Bool?
        /// Suite definition Id of the test suite.
        public let suiteDefinitionId: String?
        /// Suite name of the test suite.
        public let suiteDefinitionName: String?

        public init(createdAt: Date? = nil, defaultDevices: [DeviceUnderTest]? = nil, intendedForQualification: Bool? = nil, suiteDefinitionId: String? = nil, suiteDefinitionName: String? = nil) {
            self.createdAt = createdAt
            self.defaultDevices = defaultDevices
            self.intendedForQualification = intendedForQualification
            self.suiteDefinitionId = suiteDefinitionId
            self.suiteDefinitionName = suiteDefinitionName
        }

        private enum CodingKeys: String, CodingKey {
            case createdAt
            case defaultDevices
            case intendedForQualification
            case suiteDefinitionId
            case suiteDefinitionName
        }
    }

    public struct SuiteRunConfiguration: AWSEncodableShape & AWSDecodableShape {
        /// Gets the primary device for suite run.
        public let primaryDevice: DeviceUnderTest?
        /// Gets test case list.
        public let selectedTestList: [String]?

        public init(primaryDevice: DeviceUnderTest? = nil, selectedTestList: [String]? = nil) {
            self.primaryDevice = primaryDevice
            self.selectedTestList = selectedTestList
        }

        public func validate(name: String) throws {
            try self.primaryDevice?.validate(name: "\(name).primaryDevice")
            try self.selectedTestList?.forEach {
                try validate($0, name: "selectedTestList[]", parent: name, max: 36)
                try validate($0, name: "selectedTestList[]", parent: name, min: 12)
            }
            try self.validate(self.selectedTestList, name: "selectedTestList", parent: name, max: 100)
            try self.validate(self.selectedTestList, name: "selectedTestList", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case primaryDevice
            case selectedTestList
        }
    }

    public struct SuiteRunInformation: AWSDecodableShape {
        /// Date (in Unix epoch time) when the suite run was created.
        public let createdAt: Date?
        /// Date (in Unix epoch time) when the suite run ended.
        public let endAt: Date?
        /// Number of test cases that failed in the suite run.
        public let failed: Int?
        /// Number of test cases that passed in the suite run.
        public let passed: Int?
        /// Date (in Unix epoch time) when the suite run was started.
        public let startedAt: Date?
        /// Status of the suite run.
        public let status: SuiteRunStatus?
        /// Suite definition Id of the suite run.
        public let suiteDefinitionId: String?
        /// Suite definition name of the suite run.
        public let suiteDefinitionName: String?
        /// Suite definition version of the suite run.
        public let suiteDefinitionVersion: String?
        /// Suite run Id of the suite run.
        public let suiteRunId: String?

        public init(createdAt: Date? = nil, endAt: Date? = nil, failed: Int? = nil, passed: Int? = nil, startedAt: Date? = nil, status: SuiteRunStatus? = nil, suiteDefinitionId: String? = nil, suiteDefinitionName: String? = nil, suiteDefinitionVersion: String? = nil, suiteRunId: String? = nil) {
            self.createdAt = createdAt
            self.endAt = endAt
            self.failed = failed
            self.passed = passed
            self.startedAt = startedAt
            self.status = status
            self.suiteDefinitionId = suiteDefinitionId
            self.suiteDefinitionName = suiteDefinitionName
            self.suiteDefinitionVersion = suiteDefinitionVersion
            self.suiteRunId = suiteRunId
        }

        private enum CodingKeys: String, CodingKey {
            case createdAt
            case endAt
            case failed
            case passed
            case startedAt
            case status
            case suiteDefinitionId
            case suiteDefinitionName
            case suiteDefinitionVersion
            case suiteRunId
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "resourceArn"))
        ]

        /// The resource ARN of an IoT Device Advisor resource.
        public let resourceArn: String
        /// The tags to be attached to the IoT Device Advisor resource.
        public let tags: [String: String]

        public init(resourceArn: String, tags: [String: String]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 2048)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 20)
            try self.tags.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, min: 1)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case tags
        }
    }

    public struct TagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct TestCaseRun: AWSDecodableShape {
        /// Provides test case run end time.
        public let endTime: Date?
        /// Provides test case run failure result.
        public let failure: String?
        /// Provides test case run log Url.
        public let logUrl: String?
        /// Provides test case run start time.
        public let startTime: Date?
        /// Provides test case run status.
        public let status: Status?
        /// Provides test case run definition Id.
        public let testCaseDefinitionId: String?
        /// Provides test case run definition Name.
        public let testCaseDefinitionName: String?
        /// Provides test case run Id.
        public let testCaseRunId: String?
        /// Provides test case run warnings.
        public let warnings: String?

        public init(endTime: Date? = nil, failure: String? = nil, logUrl: String? = nil, startTime: Date? = nil, status: Status? = nil, testCaseDefinitionId: String? = nil, testCaseDefinitionName: String? = nil, testCaseRunId: String? = nil, warnings: String? = nil) {
            self.endTime = endTime
            self.failure = failure
            self.logUrl = logUrl
            self.startTime = startTime
            self.status = status
            self.testCaseDefinitionId = testCaseDefinitionId
            self.testCaseDefinitionName = testCaseDefinitionName
            self.testCaseRunId = testCaseRunId
            self.warnings = warnings
        }

        private enum CodingKeys: String, CodingKey {
            case endTime
            case failure
            case logUrl
            case startTime
            case status
            case testCaseDefinitionId
            case testCaseDefinitionName
            case testCaseRunId
            case warnings
        }
    }

    public struct TestResult: AWSDecodableShape {
        /// Show each group of test results.
        public let groups: [GroupResult]?

        public init(groups: [GroupResult]? = nil) {
            self.groups = groups
        }

        private enum CodingKeys: String, CodingKey {
            case groups
        }
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "resourceArn")),
            AWSMemberEncoding(label: "tagKeys", location: .querystring(locationName: "tagKeys"))
        ]

        /// The resource ARN of an IoT Device Advisor resource.
        public let resourceArn: String
        /// List of tag keys to remove from the IoT Device Advisor resource.
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 2048)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 20)
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
            }
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, max: 50)
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, min: 0)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UntagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UpdateSuiteDefinitionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "suiteDefinitionId", location: .uri(locationName: "suiteDefinitionId"))
        ]

        /// Updates a Device Advisor test suite with suite definition configuration.
        public let suiteDefinitionConfiguration: SuiteDefinitionConfiguration?
        /// Suite definition Id of the test suite to be updated.
        public let suiteDefinitionId: String

        public init(suiteDefinitionConfiguration: SuiteDefinitionConfiguration? = nil, suiteDefinitionId: String) {
            self.suiteDefinitionConfiguration = suiteDefinitionConfiguration
            self.suiteDefinitionId = suiteDefinitionId
        }

        public func validate(name: String) throws {
            try self.suiteDefinitionConfiguration?.validate(name: "\(name).suiteDefinitionConfiguration")
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, max: 36)
            try self.validate(self.suiteDefinitionId, name: "suiteDefinitionId", parent: name, min: 12)
        }

        private enum CodingKeys: String, CodingKey {
            case suiteDefinitionConfiguration
        }
    }

    public struct UpdateSuiteDefinitionResponse: AWSDecodableShape {
        /// Timestamp of when the test suite was created.
        public let createdAt: Date?
        /// Timestamp of when the test suite was updated.
        public let lastUpdatedAt: Date?
        /// Amazon Resource name of the updated test suite.
        public let suiteDefinitionArn: String?
        /// Suite definition Id of the updated test suite.
        public let suiteDefinitionId: String?
        /// Suite definition name of the updated test suite.
        public let suiteDefinitionName: String?
        /// Suite definition version of the updated test suite.
        public let suiteDefinitionVersion: String?

        public init(createdAt: Date? = nil, lastUpdatedAt: Date? = nil, suiteDefinitionArn: String? = nil, suiteDefinitionId: String? = nil, suiteDefinitionName: String? = nil, suiteDefinitionVersion: String? = nil) {
            self.createdAt = createdAt
            self.lastUpdatedAt = lastUpdatedAt
            self.suiteDefinitionArn = suiteDefinitionArn
            self.suiteDefinitionId = suiteDefinitionId
            self.suiteDefinitionName = suiteDefinitionName
            self.suiteDefinitionVersion = suiteDefinitionVersion
        }

        private enum CodingKeys: String, CodingKey {
            case createdAt
            case lastUpdatedAt
            case suiteDefinitionArn
            case suiteDefinitionId
            case suiteDefinitionName
            case suiteDefinitionVersion
        }
    }
}
