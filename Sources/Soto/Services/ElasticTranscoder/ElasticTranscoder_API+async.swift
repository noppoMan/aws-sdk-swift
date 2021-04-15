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
extension ElasticTranscoder {
    // MARK: Async API Calls

    /// The CancelJob operation cancels an unfinished job.  You can only cancel a job that has a status of Submitted. To prevent a pipeline from starting to process a job while you're getting the job identifier, use UpdatePipelineStatus to temporarily pause the pipeline.
    public func cancelJob(_ input: CancelJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelJobResponse {
        return try await self.client.execute(operation: "CancelJob", path: "/2012-09-25/jobs/{Id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// When you create a job, Elastic Transcoder returns JSON data that includes the values that you specified plus information about the job that is created. If you have specified more than one output for your jobs (for example, one output for the Kindle Fire and another output for the Apple iPhone 4s), you currently must use the Elastic Transcoder API to list the jobs (as opposed to the AWS Console).
    public func createJob(_ input: CreateJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateJobResponse {
        return try await self.client.execute(operation: "CreateJob", path: "/2012-09-25/jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The CreatePipeline operation creates a pipeline with settings that you specify.
    public func createPipeline(_ input: CreatePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePipelineResponse {
        return try await self.client.execute(operation: "CreatePipeline", path: "/2012-09-25/pipelines", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The CreatePreset operation creates a preset with settings that you specify.  Elastic Transcoder checks the CreatePreset settings to ensure that they meet Elastic Transcoder requirements and to determine whether they comply with H.264 standards. If your settings are not valid for Elastic Transcoder, Elastic Transcoder returns an HTTP 400 response (ValidationException) and does not create the preset. If the settings are valid for Elastic Transcoder but aren't strictly compliant with the H.264 standard, Elastic Transcoder creates the preset and returns a warning message in the response. This helps you determine whether your settings comply with the H.264 standard while giving you greater flexibility with respect to the video that Elastic Transcoder produces.  Elastic Transcoder uses the H.264 video-compression format. For more information, see the International Telecommunication Union publication Recommendation ITU-T H.264: Advanced video coding for generic audiovisual services.
    public func createPreset(_ input: CreatePresetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePresetResponse {
        return try await self.client.execute(operation: "CreatePreset", path: "/2012-09-25/presets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The DeletePipeline operation removes a pipeline.  You can only delete a pipeline that has never been used or that is not currently in use (doesn't contain any active jobs). If the pipeline is currently in use, DeletePipeline returns an error.
    public func deletePipeline(_ input: DeletePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePipelineResponse {
        return try await self.client.execute(operation: "DeletePipeline", path: "/2012-09-25/pipelines/{Id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The DeletePreset operation removes a preset that you've added in an AWS region.  You can't delete the default presets that are included with Elastic Transcoder.
    public func deletePreset(_ input: DeletePresetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePresetResponse {
        return try await self.client.execute(operation: "DeletePreset", path: "/2012-09-25/presets/{Id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The ListJobsByPipeline operation gets a list of the jobs currently in a pipeline. Elastic Transcoder returns all of the jobs currently in the specified pipeline. The response body contains one element for each job that satisfies the search criteria.
    public func listJobsByPipeline(_ input: ListJobsByPipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListJobsByPipelineResponse {
        return try await self.client.execute(operation: "ListJobsByPipeline", path: "/2012-09-25/jobsByPipeline/{PipelineId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The ListJobsByStatus operation gets a list of jobs that have a specified status. The response body contains one element for each job that satisfies the search criteria.
    public func listJobsByStatus(_ input: ListJobsByStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListJobsByStatusResponse {
        return try await self.client.execute(operation: "ListJobsByStatus", path: "/2012-09-25/jobsByStatus/{Status}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The ListPipelines operation gets a list of the pipelines associated with the current AWS account.
    public func listPipelines(_ input: ListPipelinesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPipelinesResponse {
        return try await self.client.execute(operation: "ListPipelines", path: "/2012-09-25/pipelines", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that you've added in an AWS region.
    public func listPresets(_ input: ListPresetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPresetsResponse {
        return try await self.client.execute(operation: "ListPresets", path: "/2012-09-25/presets", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The ReadJob operation returns detailed information about a job.
    public func readJob(_ input: ReadJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReadJobResponse {
        return try await self.client.execute(operation: "ReadJob", path: "/2012-09-25/jobs/{Id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The ReadPipeline operation gets detailed information about a pipeline.
    public func readPipeline(_ input: ReadPipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReadPipelineResponse {
        return try await self.client.execute(operation: "ReadPipeline", path: "/2012-09-25/pipelines/{Id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The ReadPreset operation gets detailed information about a preset.
    public func readPreset(_ input: ReadPresetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReadPresetResponse {
        return try await self.client.execute(operation: "ReadPreset", path: "/2012-09-25/presets/{Id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The TestRole operation tests the IAM role used to create the pipeline. The TestRole action lets you determine whether the IAM role you are using has sufficient permissions to let Elastic Transcoder perform tasks associated with the transcoding process. The action attempts to assume the specified IAM role, checks read access to the input and output buckets, and tries to send a test notification to Amazon SNS topics that you specify.
    @available(*, deprecated, message: "TestRole is deprecated.")
    public func testRole(_ input: TestRoleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TestRoleResponse {
        return try await self.client.execute(operation: "TestRole", path: "/2012-09-25/roleTests", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Use the UpdatePipeline operation to update settings for a pipeline.  When you change pipeline settings, your changes take effect immediately. Jobs that you have already submitted and that Elastic Transcoder has not started to process are affected in addition to jobs that you submit after you change settings.
    public func updatePipeline(_ input: UpdatePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePipelineResponse {
        return try await self.client.execute(operation: "UpdatePipeline", path: "/2012-09-25/pipelines/{Id}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// With the UpdatePipelineNotifications operation, you can update Amazon Simple Notification Service (Amazon SNS) notifications for a pipeline. When you update notifications for a pipeline, Elastic Transcoder returns the values that you specified in the request.
    public func updatePipelineNotifications(_ input: UpdatePipelineNotificationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePipelineNotificationsResponse {
        return try await self.client.execute(operation: "UpdatePipelineNotifications", path: "/2012-09-25/pipelines/{Id}/notifications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The UpdatePipelineStatus operation pauses or reactivates a pipeline, so that the pipeline stops or restarts the processing of jobs. Changing the pipeline status is useful if you want to cancel one or more jobs. You can't cancel jobs after Elastic Transcoder has started processing them; if you pause the pipeline to which you submitted the jobs, you have more time to get the job IDs for the jobs that you want to cancel, and to send a CancelJob request.
    public func updatePipelineStatus(_ input: UpdatePipelineStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePipelineStatusResponse {
        return try await self.client.execute(operation: "UpdatePipelineStatus", path: "/2012-09-25/pipelines/{Id}/status", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
