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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import Foundation
import SotoCore

extension Amp {
    // MARK: Enums

    public enum WorkspaceStatusCode: String, CustomStringConvertible, Codable {
        /// Workspace has been created and is usable.
        case active = "ACTIVE"
        /// Workspace is being created. Deletion is disallowed until status is ACTIVE.
        case creating = "CREATING"
        /// Workspace creation failed. Refer to WorkspaceStatus.failureReason for more details.
        case creationFailed = "CREATION_FAILED"
        /// Workspace is being deleted. Deletions are allowed only when status is ACTIVE.
        case deleting = "DELETING"
        /// Workspace is being updated. Updates are allowed only when status is ACTIVE.
        case updating = "UPDATING"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CreateWorkspaceRequest: AWSEncodableShape {

        /// An optional user-assigned alias for this workspace. This alias is for user reference and does not need to be unique.
        public let alias: String?
        /// Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
        public let clientToken: String?

        public init(alias: String? = nil, clientToken: String? = CreateWorkspaceRequest.idempotencyToken()) {
            self.alias = alias
            self.clientToken = clientToken
        }

        public func validate(name: String) throws {
            try self.validate(self.alias, name: "alias", parent: name, max: 100)
            try self.validate(self.alias, name: "alias", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 64)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "[!-~]+")
        }

        private enum CodingKeys: String, CodingKey {
            case alias = "alias"
            case clientToken = "clientToken"
        }
    }

    public struct CreateWorkspaceResponse: AWSDecodableShape {

        /// The ARN of the workspace that was just created.
        public let arn: String
        /// The status of the workspace that was just created (usually CREATING).
        public let status: WorkspaceStatus
        /// The generated ID of the workspace that was just created.
        public let workspaceId: String

        public init(arn: String, status: WorkspaceStatus, workspaceId: String) {
            self.arn = arn
            self.status = status
            self.workspaceId = workspaceId
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case status = "status"
            case workspaceId = "workspaceId"
        }
    }

    public struct DeleteWorkspaceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "clientToken", location: .querystring(locationName: "clientToken")), 
            AWSMemberEncoding(label: "workspaceId", location: .uri(locationName: "workspaceId"))
        ]

        /// Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
        public let clientToken: String?
        /// The ID of the workspace to delete.
        public let workspaceId: String

        public init(clientToken: String? = DeleteWorkspaceRequest.idempotencyToken(), workspaceId: String) {
            self.clientToken = clientToken
            self.workspaceId = workspaceId
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 64)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "[!-~]+")
            try self.validate(self.workspaceId, name: "workspaceId", parent: name, max: 64)
            try self.validate(self.workspaceId, name: "workspaceId", parent: name, min: 1)
            try self.validate(self.workspaceId, name: "workspaceId", parent: name, pattern: "[0-9A-Za-z][-.0-9A-Z_a-z]*")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeWorkspaceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "workspaceId", location: .uri(locationName: "workspaceId"))
        ]

        /// The ID of the workspace to describe.
        public let workspaceId: String

        public init(workspaceId: String) {
            self.workspaceId = workspaceId
        }

        public func validate(name: String) throws {
            try self.validate(self.workspaceId, name: "workspaceId", parent: name, max: 64)
            try self.validate(self.workspaceId, name: "workspaceId", parent: name, min: 1)
            try self.validate(self.workspaceId, name: "workspaceId", parent: name, pattern: "[0-9A-Za-z][-.0-9A-Z_a-z]*")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeWorkspaceResponse: AWSDecodableShape {

        /// The properties of the selected workspace.
        public let workspace: WorkspaceDescription

        public init(workspace: WorkspaceDescription) {
            self.workspace = workspace
        }

        private enum CodingKeys: String, CodingKey {
            case workspace = "workspace"
        }
    }

    public struct ListWorkspacesRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "alias", location: .querystring(locationName: "alias")), 
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken"))
        ]

        /// Optional filter for workspace alias. Only the workspaces with aliases that begin with this value will be returned.
        public let alias: String?
        /// Maximum results to return in response (default=100, maximum=1000).
        public let maxResults: Int?
        /// Pagination token to request the next page in a paginated list. This token is obtained from the output of the previous ListWorkspaces request.
        public let nextToken: String?

        public init(alias: String? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.alias = alias
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.alias, name: "alias", parent: name, max: 100)
            try self.validate(self.alias, name: "alias", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListWorkspacesResponse: AWSDecodableShape {

        /// Pagination token to use when requesting the next page in this list.
        public let nextToken: String?
        /// The list of existing workspaces, including those undergoing creation or deletion.
        public let workspaces: [WorkspaceSummary]

        public init(nextToken: String? = nil, workspaces: [WorkspaceSummary]) {
            self.nextToken = nextToken
            self.workspaces = workspaces
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case workspaces = "workspaces"
        }
    }

    public struct UpdateWorkspaceAliasRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "workspaceId", location: .uri(locationName: "workspaceId"))
        ]

        /// The new alias of the workspace.
        public let alias: String?
        /// Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
        public let clientToken: String?
        /// The ID of the workspace being updated.
        public let workspaceId: String

        public init(alias: String? = nil, clientToken: String? = UpdateWorkspaceAliasRequest.idempotencyToken(), workspaceId: String) {
            self.alias = alias
            self.clientToken = clientToken
            self.workspaceId = workspaceId
        }

        public func validate(name: String) throws {
            try self.validate(self.alias, name: "alias", parent: name, max: 100)
            try self.validate(self.alias, name: "alias", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 64)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "[!-~]+")
            try self.validate(self.workspaceId, name: "workspaceId", parent: name, max: 64)
            try self.validate(self.workspaceId, name: "workspaceId", parent: name, min: 1)
            try self.validate(self.workspaceId, name: "workspaceId", parent: name, pattern: "[0-9A-Za-z][-.0-9A-Z_a-z]*")
        }

        private enum CodingKeys: String, CodingKey {
            case alias = "alias"
            case clientToken = "clientToken"
        }
    }

    public struct WorkspaceDescription: AWSDecodableShape {

        /// Alias of this workspace.
        public let alias: String?
        /// The Amazon Resource Name (ARN) of this workspace.
        public let arn: String
        /// The time when the workspace was created.
        public let createdAt: Date
        /// Prometheus endpoint URI.
        public let prometheusEndpoint: String?
        /// The status of this workspace.
        public let status: WorkspaceStatus
        /// Unique string identifying this workspace.
        public let workspaceId: String

        public init(alias: String? = nil, arn: String, createdAt: Date, prometheusEndpoint: String? = nil, status: WorkspaceStatus, workspaceId: String) {
            self.alias = alias
            self.arn = arn
            self.createdAt = createdAt
            self.prometheusEndpoint = prometheusEndpoint
            self.status = status
            self.workspaceId = workspaceId
        }

        private enum CodingKeys: String, CodingKey {
            case alias = "alias"
            case arn = "arn"
            case createdAt = "createdAt"
            case prometheusEndpoint = "prometheusEndpoint"
            case status = "status"
            case workspaceId = "workspaceId"
        }
    }

    public struct WorkspaceStatus: AWSDecodableShape {

        /// Status code of this workspace.
        public let statusCode: WorkspaceStatusCode

        public init(statusCode: WorkspaceStatusCode) {
            self.statusCode = statusCode
        }

        private enum CodingKeys: String, CodingKey {
            case statusCode = "statusCode"
        }
    }

    public struct WorkspaceSummary: AWSDecodableShape {

        /// Alias of this workspace.
        public let alias: String?
        /// The AmazonResourceName of this workspace.
        public let arn: String
        /// The time when the workspace was created.
        public let createdAt: Date
        /// The status of this workspace.
        public let status: WorkspaceStatus
        /// Unique string identifying this workspace.
        public let workspaceId: String

        public init(alias: String? = nil, arn: String, createdAt: Date, status: WorkspaceStatus, workspaceId: String) {
            self.alias = alias
            self.arn = arn
            self.createdAt = createdAt
            self.status = status
            self.workspaceId = workspaceId
        }

        private enum CodingKeys: String, CodingKey {
            case alias = "alias"
            case arn = "arn"
            case createdAt = "createdAt"
            case status = "status"
            case workspaceId = "workspaceId"
        }
    }
}
