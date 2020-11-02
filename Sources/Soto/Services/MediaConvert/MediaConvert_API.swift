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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

/*
 Client object for interacting with AWS MediaConvert service.

 AWS Elemental MediaConvert
 */
public struct MediaConvert: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MediaConvert client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "mediaconvert",
            serviceProtocol: .restjson,
            apiVersion: "2017-08-29",
            endpoint: endpoint,
            serviceEndpoints: ["cn-northwest-1": "subscribe.mediaconvert.cn-northwest-1.amazonaws.com.cn", "us-gov-west-1": "mediaconvert.us-gov-west-1.amazonaws.com"],
            errorType: MediaConvertErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Associates an AWS Certificate Manager (ACM) Amazon Resource Name (ARN) with AWS Elemental MediaConvert.
    public func associateCertificate(_ input: AssociateCertificateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateCertificateResponse> {
        return self.client.execute(operation: "AssociateCertificate", path: "/2017-08-29/certificates", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Permanently cancel a job. Once you have canceled a job, you can't start it again.
    public func cancelJob(_ input: CancelJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelJobResponse> {
        return self.client.execute(operation: "CancelJob", path: "/2017-08-29/jobs/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Create a new transcoding job. For information about jobs and job settings, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    public func createJob(_ input: CreateJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateJobResponse> {
        return self.client.execute(operation: "CreateJob", path: "/2017-08-29/jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Create a new job template. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    public func createJobTemplate(_ input: CreateJobTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateJobTemplateResponse> {
        return self.client.execute(operation: "CreateJobTemplate", path: "/2017-08-29/jobTemplates", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Create a new preset. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    public func createPreset(_ input: CreatePresetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePresetResponse> {
        return self.client.execute(operation: "CreatePreset", path: "/2017-08-29/presets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Create a new transcoding queue. For information about queues, see Working With Queues in the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html
    public func createQueue(_ input: CreateQueueRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateQueueResponse> {
        return self.client.execute(operation: "CreateQueue", path: "/2017-08-29/queues", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Permanently delete a job template you have created.
    public func deleteJobTemplate(_ input: DeleteJobTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteJobTemplateResponse> {
        return self.client.execute(operation: "DeleteJobTemplate", path: "/2017-08-29/jobTemplates/{name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Permanently delete a preset you have created.
    public func deletePreset(_ input: DeletePresetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePresetResponse> {
        return self.client.execute(operation: "DeletePreset", path: "/2017-08-29/presets/{name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Permanently delete a queue you have created.
    public func deleteQueue(_ input: DeleteQueueRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteQueueResponse> {
        return self.client.execute(operation: "DeleteQueue", path: "/2017-08-29/queues/{name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Send an request with an empty body to the regional API endpoint to get your account API endpoint.
    public func describeEndpoints(_ input: DescribeEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEndpointsResponse> {
        return self.client.execute(operation: "DescribeEndpoints", path: "/2017-08-29/endpoints", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes an association between the Amazon Resource Name (ARN) of an AWS Certificate Manager (ACM) certificate and an AWS Elemental MediaConvert resource.
    public func disassociateCertificate(_ input: DisassociateCertificateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateCertificateResponse> {
        return self.client.execute(operation: "DisassociateCertificate", path: "/2017-08-29/certificates/{arn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieve the JSON for a specific completed transcoding job.
    public func getJob(_ input: GetJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetJobResponse> {
        return self.client.execute(operation: "GetJob", path: "/2017-08-29/jobs/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieve the JSON for a specific job template.
    public func getJobTemplate(_ input: GetJobTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetJobTemplateResponse> {
        return self.client.execute(operation: "GetJobTemplate", path: "/2017-08-29/jobTemplates/{name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieve the JSON for a specific preset.
    public func getPreset(_ input: GetPresetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPresetResponse> {
        return self.client.execute(operation: "GetPreset", path: "/2017-08-29/presets/{name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieve the JSON for a specific queue.
    public func getQueue(_ input: GetQueueRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetQueueResponse> {
        return self.client.execute(operation: "GetQueue", path: "/2017-08-29/queues/{name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array
    public func listJobTemplates(_ input: ListJobTemplatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJobTemplatesResponse> {
        return self.client.execute(operation: "ListJobTemplates", path: "/2017-08-29/jobTemplates", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.
    public func listJobs(_ input: ListJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJobsResponse> {
        return self.client.execute(operation: "ListJobs", path: "/2017-08-29/jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.
    public func listPresets(_ input: ListPresetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPresetsResponse> {
        return self.client.execute(operation: "ListPresets", path: "/2017-08-29/presets", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.
    public func listQueues(_ input: ListQueuesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListQueuesResponse> {
        return self.client.execute(operation: "ListQueues", path: "/2017-08-29/queues", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieve the tags for a MediaConvert resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/2017-08-29/tags/{arn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Add tags to a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/2017-08-29/tags", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Remove tags from a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/2017-08-29/tags/{arn}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Modify one of your existing job templates.
    public func updateJobTemplate(_ input: UpdateJobTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateJobTemplateResponse> {
        return self.client.execute(operation: "UpdateJobTemplate", path: "/2017-08-29/jobTemplates/{name}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Modify one of your existing presets.
    public func updatePreset(_ input: UpdatePresetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePresetResponse> {
        return self.client.execute(operation: "UpdatePreset", path: "/2017-08-29/presets/{name}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Modify one of your existing queues.
    public func updateQueue(_ input: UpdateQueueRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateQueueResponse> {
        return self.client.execute(operation: "UpdateQueue", path: "/2017-08-29/queues/{name}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension MediaConvert {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: MediaConvert, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
