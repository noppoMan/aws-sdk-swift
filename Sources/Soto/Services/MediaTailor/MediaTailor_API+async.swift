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
extension MediaTailor {
    // MARK: Async API Calls

    /// Creates a channel.
    public func createChannel(_ input: CreateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateChannelResponse {
        return try await self.client.execute(operation: "CreateChannel", path: "/channel/{channelName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a program.
    public func createProgram(_ input: CreateProgramRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProgramResponse {
        return try await self.client.execute(operation: "CreateProgram", path: "/channel/{channelName}/program/{programName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a source location on a specific channel.
    public func createSourceLocation(_ input: CreateSourceLocationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSourceLocationResponse {
        return try await self.client.execute(operation: "CreateSourceLocation", path: "/sourceLocation/{sourceLocationName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates name for a specific VOD source in a source location.
    public func createVodSource(_ input: CreateVodSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVodSourceResponse {
        return try await self.client.execute(operation: "CreateVodSource", path: "/sourceLocation/{sourceLocationName}/vodSource/{vodSourceName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a channel. You must stop the channel before it can be deleted.
    public func deleteChannel(_ input: DeleteChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteChannelResponse {
        return try await self.client.execute(operation: "DeleteChannel", path: "/channel/{channelName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a channel's IAM policy.
    public func deleteChannelPolicy(_ input: DeleteChannelPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteChannelPolicyResponse {
        return try await self.client.execute(operation: "DeleteChannelPolicy", path: "/channel/{channelName}/policy", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the playback configuration for the specified name.
    public func deletePlaybackConfiguration(_ input: DeletePlaybackConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePlaybackConfigurationResponse {
        return try await self.client.execute(operation: "DeletePlaybackConfiguration", path: "/playbackConfiguration/{Name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a specific program on a specific channel.
    public func deleteProgram(_ input: DeleteProgramRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProgramResponse {
        return try await self.client.execute(operation: "DeleteProgram", path: "/channel/{channelName}/program/{programName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a source location on a specific channel.
    public func deleteSourceLocation(_ input: DeleteSourceLocationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSourceLocationResponse {
        return try await self.client.execute(operation: "DeleteSourceLocation", path: "/sourceLocation/{sourceLocationName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a specific VOD source in a specific source location.
    public func deleteVodSource(_ input: DeleteVodSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVodSourceResponse {
        return try await self.client.execute(operation: "DeleteVodSource", path: "/sourceLocation/{sourceLocationName}/vodSource/{vodSourceName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the properties of a specific channel.
    public func describeChannel(_ input: DescribeChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChannelResponse {
        return try await self.client.execute(operation: "DescribeChannel", path: "/channel/{channelName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the properties of the requested program.
    public func describeProgram(_ input: DescribeProgramRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProgramResponse {
        return try await self.client.execute(operation: "DescribeProgram", path: "/channel/{channelName}/program/{programName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the properties of the requested source location.
    public func describeSourceLocation(_ input: DescribeSourceLocationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSourceLocationResponse {
        return try await self.client.execute(operation: "DescribeSourceLocation", path: "/sourceLocation/{sourceLocationName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides details about a specific VOD source in a specific source location.
    public func describeVodSource(_ input: DescribeVodSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVodSourceResponse {
        return try await self.client.execute(operation: "DescribeVodSource", path: "/sourceLocation/{sourceLocationName}/vodSource/{vodSourceName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about a channel's IAM policy.
    public func getChannelPolicy(_ input: GetChannelPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetChannelPolicyResponse {
        return try await self.client.execute(operation: "GetChannelPolicy", path: "/channel/{channelName}/policy", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about your channel's schedule.
    public func getChannelSchedule(_ input: GetChannelScheduleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetChannelScheduleResponse {
        return try await self.client.execute(operation: "GetChannelSchedule", path: "/channel/{channelName}/schedule", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the playback configuration for the specified name.
    public func getPlaybackConfiguration(_ input: GetPlaybackConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPlaybackConfigurationResponse {
        return try await self.client.execute(operation: "GetPlaybackConfiguration", path: "/playbackConfiguration/{Name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of channels that are associated with this account.
    public func listChannels(_ input: ListChannelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListChannelsResponse {
        return try await self.client.execute(operation: "ListChannels", path: "/channels", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the playback configurations defined in AWS Elemental MediaTailor. You can specify a maximum number of configurations to return at a time. The default maximum is 50. Results are returned in pagefuls. If MediaTailor has more configurations than the specified maximum, it provides parameters in the response that you can use to retrieve the next pageful.
    public func listPlaybackConfigurations(_ input: ListPlaybackConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPlaybackConfigurationsResponse {
        return try await self.client.execute(operation: "ListPlaybackConfigurations", path: "/playbackConfigurations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of source locations.
    public func listSourceLocations(_ input: ListSourceLocationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSourceLocationsResponse {
        return try await self.client.execute(operation: "ListSourceLocations", path: "/sourceLocations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the tags assigned to the specified playback configuration resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the VOD sources in a source location.
    public func listVodSources(_ input: ListVodSourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVodSourcesResponse {
        return try await self.client.execute(operation: "ListVodSources", path: "/sourceLocation/{sourceLocationName}/vodSources", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an IAM policy for the channel.
    public func putChannelPolicy(_ input: PutChannelPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutChannelPolicyResponse {
        return try await self.client.execute(operation: "PutChannelPolicy", path: "/channel/{channelName}/policy", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a new playback configuration to AWS Elemental MediaTailor.
    public func putPlaybackConfiguration(_ input: PutPlaybackConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutPlaybackConfigurationResponse {
        return try await self.client.execute(operation: "PutPlaybackConfiguration", path: "/playbackConfiguration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a specific channel.
    public func startChannel(_ input: StartChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartChannelResponse {
        return try await self.client.execute(operation: "StartChannel", path: "/channel/{channelName}/start", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a specific channel.
    public func stopChannel(_ input: StopChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopChannelResponse {
        return try await self.client.execute(operation: "StopChannel", path: "/channel/{channelName}/stop", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to the specified playback configuration resource. You can specify one or more tags to add.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from the specified playback configuration resource. You can specify one or more tags to remove.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing channel.
    public func updateChannel(_ input: UpdateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateChannelResponse {
        return try await self.client.execute(operation: "UpdateChannel", path: "/channel/{channelName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a source location on a specific channel.
    public func updateSourceLocation(_ input: UpdateSourceLocationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSourceLocationResponse {
        return try await self.client.execute(operation: "UpdateSourceLocation", path: "/sourceLocation/{sourceLocationName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a specific VOD source in a specific source location.
    public func updateVodSource(_ input: UpdateVodSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateVodSourceResponse {
        return try await self.client.execute(operation: "UpdateVodSource", path: "/sourceLocation/{sourceLocationName}/vodSource/{vodSourceName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
