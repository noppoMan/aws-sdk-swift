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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import SotoCore

extension Mobile {
    // MARK: Enums

    public enum Platform: String, CustomStringConvertible, Codable {
        case osx = "OSX"
        case windows = "WINDOWS"
        case linux = "LINUX"
        case objc = "OBJC"
        case swift = "SWIFT"
        case android = "ANDROID"
        case javascript = "JAVASCRIPT"
        public var description: String { return self.rawValue }
    }

    public enum ProjectState: String, CustomStringConvertible, Codable {
        case normal = "NORMAL"
        case syncing = "SYNCING"
        case importing = "IMPORTING"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct BundleDetails: AWSDecodableShape {

        public let availablePlatforms: [Platform]?
        public let bundleId: String?
        public let description: String?
        public let iconUrl: String?
        public let title: String?
        public let version: String?

        public init(availablePlatforms: [Platform]? = nil, bundleId: String? = nil, description: String? = nil, iconUrl: String? = nil, title: String? = nil, version: String? = nil) {
            self.availablePlatforms = availablePlatforms
            self.bundleId = bundleId
            self.description = description
            self.iconUrl = iconUrl
            self.title = title
            self.version = version
        }

        private enum CodingKeys: String, CodingKey {
            case availablePlatforms = "availablePlatforms"
            case bundleId = "bundleId"
            case description = "description"
            case iconUrl = "iconUrl"
            case title = "title"
            case version = "version"
        }
    }

    public struct CreateProjectRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "contents"
        public static let _payloadOptions: AWSShapePayloadOptions = [.raw]
        public static var _encoding = [
            AWSMemberEncoding(label: "name", location: .querystring(locationName: "name")), 
            AWSMemberEncoding(label: "region", location: .querystring(locationName: "region")), 
            AWSMemberEncoding(label: "snapshotId", location: .querystring(locationName: "snapshotId"))
        ]

        ///  ZIP or YAML file which contains configuration settings to be used when creating the project. This may be the contents of the file downloaded from the URL provided in an export project operation. 
        public let contents: AWSPayload?
        ///  Name of the project. 
        public let name: String?
        ///  Default region where project resources should be created. 
        public let region: String?
        ///  Unique identifier for an exported snapshot of project configuration. This snapshot identifier is included in the share URL when a project is exported. 
        public let snapshotId: String?

        public init(contents: AWSPayload? = nil, name: String? = nil, region: String? = nil, snapshotId: String? = nil) {
            self.contents = contents
            self.name = name
            self.region = region
            self.snapshotId = snapshotId
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct CreateProjectResult: AWSDecodableShape {

        ///  Detailed information about the created AWS Mobile Hub project. 
        public let details: ProjectDetails?

        public init(details: ProjectDetails? = nil) {
            self.details = details
        }

        private enum CodingKeys: String, CodingKey {
            case details = "details"
        }
    }

    public struct DeleteProjectRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "projectId", location: .uri(locationName: "projectId"))
        ]

        ///  Unique project identifier. 
        public let projectId: String

        public init(projectId: String) {
            self.projectId = projectId
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteProjectResult: AWSDecodableShape {

        ///  Resources which were deleted. 
        public let deletedResources: [Resource]?
        ///  Resources which were not deleted, due to a risk of losing potentially important data or files. 
        public let orphanedResources: [Resource]?

        public init(deletedResources: [Resource]? = nil, orphanedResources: [Resource]? = nil) {
            self.deletedResources = deletedResources
            self.orphanedResources = orphanedResources
        }

        private enum CodingKeys: String, CodingKey {
            case deletedResources = "deletedResources"
            case orphanedResources = "orphanedResources"
        }
    }

    public struct DescribeBundleRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "bundleId", location: .uri(locationName: "bundleId"))
        ]

        ///  Unique bundle identifier. 
        public let bundleId: String

        public init(bundleId: String) {
            self.bundleId = bundleId
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeBundleResult: AWSDecodableShape {

        ///  The details of the bundle. 
        public let details: BundleDetails?

        public init(details: BundleDetails? = nil) {
            self.details = details
        }

        private enum CodingKeys: String, CodingKey {
            case details = "details"
        }
    }

    public struct DescribeProjectRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "projectId", location: .querystring(locationName: "projectId")), 
            AWSMemberEncoding(label: "syncFromResources", location: .querystring(locationName: "syncFromResources"))
        ]

        ///  Unique project identifier. 
        public let projectId: String
        ///  If set to true, causes AWS Mobile Hub to synchronize information from other services, e.g., update state of AWS CloudFormation stacks in the AWS Mobile Hub project. 
        public let syncFromResources: Bool?

        public init(projectId: String, syncFromResources: Bool? = nil) {
            self.projectId = projectId
            self.syncFromResources = syncFromResources
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeProjectResult: AWSDecodableShape {

        public let details: ProjectDetails?

        public init(details: ProjectDetails? = nil) {
            self.details = details
        }

        private enum CodingKeys: String, CodingKey {
            case details = "details"
        }
    }

    public struct ExportBundleRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "bundleId", location: .uri(locationName: "bundleId")), 
            AWSMemberEncoding(label: "platform", location: .querystring(locationName: "platform")), 
            AWSMemberEncoding(label: "projectId", location: .querystring(locationName: "projectId"))
        ]

        ///  Unique bundle identifier. 
        public let bundleId: String
        ///  Developer desktop or target application platform. 
        public let platform: Platform?
        ///  Unique project identifier. 
        public let projectId: String?

        public init(bundleId: String, platform: Platform? = nil, projectId: String? = nil) {
            self.bundleId = bundleId
            self.platform = platform
            self.projectId = projectId
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ExportBundleResult: AWSDecodableShape {

        ///  URL which contains the custom-generated SDK and tool packages used to integrate the client mobile app or web app with the AWS resources created by the AWS Mobile Hub project. 
        public let downloadUrl: String?

        public init(downloadUrl: String? = nil) {
            self.downloadUrl = downloadUrl
        }

        private enum CodingKeys: String, CodingKey {
            case downloadUrl = "downloadUrl"
        }
    }

    public struct ExportProjectRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "projectId", location: .uri(locationName: "projectId"))
        ]

        ///  Unique project identifier. 
        public let projectId: String

        public init(projectId: String) {
            self.projectId = projectId
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ExportProjectResult: AWSDecodableShape {

        ///  URL which can be used to download the exported project configuation file(s). 
        public let downloadUrl: String?
        ///  URL which can be shared to allow other AWS users to create their own project in AWS Mobile Hub with the same configuration as the specified project. This URL pertains to a snapshot in time of the project configuration that is created when this API is called. If you want to share additional changes to your project configuration, then you will need to create and share a new snapshot by calling this method again. 
        public let shareUrl: String?
        ///  Unique identifier for the exported snapshot of the project configuration. This snapshot identifier is included in the share URL. 
        public let snapshotId: String?

        public init(downloadUrl: String? = nil, shareUrl: String? = nil, snapshotId: String? = nil) {
            self.downloadUrl = downloadUrl
            self.shareUrl = shareUrl
            self.snapshotId = snapshotId
        }

        private enum CodingKeys: String, CodingKey {
            case downloadUrl = "downloadUrl"
            case shareUrl = "shareUrl"
            case snapshotId = "snapshotId"
        }
    }

    public struct ListBundlesRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken"))
        ]

        ///  Maximum number of records to list in a single response. 
        public let maxResults: Int?
        ///  Pagination token. Set to null to start listing bundles from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more bundles. 
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListBundlesResult: AWSDecodableShape {

        ///  A list of bundles. 
        public let bundleList: [BundleDetails]?
        ///  Pagination token. If non-null pagination token is returned in a result, then pass its value in another request to fetch more entries. 
        public let nextToken: String?

        public init(bundleList: [BundleDetails]? = nil, nextToken: String? = nil) {
            self.bundleList = bundleList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case bundleList = "bundleList"
            case nextToken = "nextToken"
        }
    }

    public struct ListProjectsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken"))
        ]

        ///  Maximum number of records to list in a single response. 
        public let maxResults: Int?
        ///  Pagination token. Set to null to start listing projects from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more projects. 
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListProjectsResult: AWSDecodableShape {

        public let nextToken: String?
        public let projects: [ProjectSummary]?

        public init(nextToken: String? = nil, projects: [ProjectSummary]? = nil) {
            self.nextToken = nextToken
            self.projects = projects
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case projects = "projects"
        }
    }

    public struct ProjectDetails: AWSDecodableShape {

        ///  Website URL for this project in the AWS Mobile Hub console. 
        public let consoleUrl: String?
        ///  Date the project was created. 
        public let createdDate: Date?
        ///  Date of the last modification of the project. 
        public let lastUpdatedDate: Date?
        public let name: String?
        public let projectId: String?
        public let region: String?
        public let resources: [Resource]?
        public let state: ProjectState?

        public init(consoleUrl: String? = nil, createdDate: Date? = nil, lastUpdatedDate: Date? = nil, name: String? = nil, projectId: String? = nil, region: String? = nil, resources: [Resource]? = nil, state: ProjectState? = nil) {
            self.consoleUrl = consoleUrl
            self.createdDate = createdDate
            self.lastUpdatedDate = lastUpdatedDate
            self.name = name
            self.projectId = projectId
            self.region = region
            self.resources = resources
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case consoleUrl = "consoleUrl"
            case createdDate = "createdDate"
            case lastUpdatedDate = "lastUpdatedDate"
            case name = "name"
            case projectId = "projectId"
            case region = "region"
            case resources = "resources"
            case state = "state"
        }
    }

    public struct ProjectSummary: AWSDecodableShape {

        ///  Name of the project. 
        public let name: String?
        ///  Unique project identifier. 
        public let projectId: String?

        public init(name: String? = nil, projectId: String? = nil) {
            self.name = name
            self.projectId = projectId
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
            case projectId = "projectId"
        }
    }

    public struct Resource: AWSDecodableShape {

        public let arn: String?
        public let attributes: [String: String]?
        public let feature: String?
        public let name: String?
        public let `type`: String?

        public init(arn: String? = nil, attributes: [String: String]? = nil, feature: String? = nil, name: String? = nil, type: String? = nil) {
            self.arn = arn
            self.attributes = attributes
            self.feature = feature
            self.name = name
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case attributes = "attributes"
            case feature = "feature"
            case name = "name"
            case `type` = "type"
        }
    }

    public struct UpdateProjectRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "contents"
        public static let _payloadOptions: AWSShapePayloadOptions = [.raw]
        public static var _encoding = [
            AWSMemberEncoding(label: "projectId", location: .querystring(locationName: "projectId"))
        ]

        ///  ZIP or YAML file which contains project configuration to be updated. This should be the contents of the file downloaded from the URL provided in an export project operation. 
        public let contents: AWSPayload?
        ///  Unique project identifier. 
        public let projectId: String

        public init(contents: AWSPayload? = nil, projectId: String) {
            self.contents = contents
            self.projectId = projectId
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UpdateProjectResult: AWSDecodableShape {

        ///  Detailed information about the updated AWS Mobile Hub project. 
        public let details: ProjectDetails?

        public init(details: ProjectDetails? = nil) {
            self.details = details
        }

        private enum CodingKeys: String, CodingKey {
            case details = "details"
        }
    }
}
