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
extension IoTDataPlane {
    // MARK: Async API Calls

    /// Deletes the shadow for the specified thing. For more information, see DeleteThingShadow in the AWS IoT Developer Guide.
    public func deleteThingShadow(_ input: DeleteThingShadowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteThingShadowResponse {
        return try await self.client.execute(operation: "DeleteThingShadow", path: "/things/{thingName}/shadow", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the shadow for the specified thing. For more information, see GetThingShadow in the AWS IoT Developer Guide.
    public func getThingShadow(_ input: GetThingShadowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetThingShadowResponse {
        return try await self.client.execute(operation: "GetThingShadow", path: "/things/{thingName}/shadow", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the shadows for the specified thing.
    public func listNamedShadowsForThing(_ input: ListNamedShadowsForThingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNamedShadowsForThingResponse {
        return try await self.client.execute(operation: "ListNamedShadowsForThing", path: "/api/things/shadow/ListNamedShadowsForThing/{thingName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Publishes state information. For more information, see HTTP Protocol in the AWS IoT Developer Guide.
    public func publish(_ input: PublishRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "Publish", path: "/topics/{topic}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the shadow for the specified thing. For more information, see UpdateThingShadow in the AWS IoT Developer Guide.
    public func updateThingShadow(_ input: UpdateThingShadowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateThingShadowResponse {
        return try await self.client.execute(operation: "UpdateThingShadow", path: "/things/{thingName}/shadow", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
