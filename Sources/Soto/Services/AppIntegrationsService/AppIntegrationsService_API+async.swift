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

#if compiler(>=5.5) && $AsyncAwait

import SotoCore

@available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
extension AppIntegrationsService {
    // MARK: Async API Calls

    /// The Amazon AppIntegrations APIs are in preview release and are subject to change. Creates an EventIntegration, given a specified name, description, and a reference to an Amazon Eventbridge bus in your account and a partner event source that will push events to that bus. No objects are created in the your account, only metadata that is persisted on the EventIntegration control plane.
    public func createEventIntegration(_ input: CreateEventIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEventIntegrationResponse {
        return try await self.client.execute(operation: "CreateEventIntegration", path: "/eventIntegrations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The Amazon AppIntegrations APIs are in preview release and are subject to change. Deletes the specified existing event integration. If the event integration is associated with clients, the request is rejected.
    public func deleteEventIntegration(_ input: DeleteEventIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEventIntegrationResponse {
        return try await self.client.execute(operation: "DeleteEventIntegration", path: "/eventIntegrations/{Name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The Amazon AppIntegrations APIs are in preview release and are subject to change. Return information about the event integration.
    public func getEventIntegration(_ input: GetEventIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEventIntegrationResponse {
        return try await self.client.execute(operation: "GetEventIntegration", path: "/eventIntegrations/{Name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The Amazon AppIntegrations APIs are in preview release and are subject to change. Returns a paginated list of event integration associations in the account.
    public func listEventIntegrationAssociations(_ input: ListEventIntegrationAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEventIntegrationAssociationsResponse {
        return try await self.client.execute(operation: "ListEventIntegrationAssociations", path: "/eventIntegrations/{Name}/associations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The Amazon AppIntegrations APIs are in preview release and are subject to change. Returns a paginated list of event integrations in the account.
    public func listEventIntegrations(_ input: ListEventIntegrationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEventIntegrationsResponse {
        return try await self.client.execute(operation: "ListEventIntegrations", path: "/eventIntegrations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The Amazon AppIntegrations APIs are in preview release and are subject to change. Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The Amazon AppIntegrations APIs are in preview release and are subject to change. Adds the specified tags to the specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The Amazon AppIntegrations APIs are in preview release and are subject to change. Removes the specified tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The Amazon AppIntegrations APIs are in preview release and are subject to change. Updates the description of an event integration.
    public func updateEventIntegration(_ input: UpdateEventIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEventIntegrationResponse {
        return try await self.client.execute(operation: "UpdateEventIntegration", path: "/eventIntegrations/{Name}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
