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
extension RoboMaker {
    // MARK: Async API Calls

    /// Deletes one or more worlds in a batch operation.
    public func batchDeleteWorlds(_ input: BatchDeleteWorldsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteWorldsResponse {
        return try await self.client.execute(operation: "BatchDeleteWorlds", path: "/batchDeleteWorlds", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes one or more simulation jobs.
    public func batchDescribeSimulationJob(_ input: BatchDescribeSimulationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDescribeSimulationJobResponse {
        return try await self.client.execute(operation: "BatchDescribeSimulationJob", path: "/batchDescribeSimulationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels the specified deployment job.
    public func cancelDeploymentJob(_ input: CancelDeploymentJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelDeploymentJobResponse {
        return try await self.client.execute(operation: "CancelDeploymentJob", path: "/cancelDeploymentJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels the specified simulation job.
    public func cancelSimulationJob(_ input: CancelSimulationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelSimulationJobResponse {
        return try await self.client.execute(operation: "CancelSimulationJob", path: "/cancelSimulationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels a simulation job batch. When you cancel a simulation job batch, you are also cancelling all of the active simulation jobs created as part of the batch.
    public func cancelSimulationJobBatch(_ input: CancelSimulationJobBatchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelSimulationJobBatchResponse {
        return try await self.client.execute(operation: "CancelSimulationJobBatch", path: "/cancelSimulationJobBatch", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels the specified export job.
    public func cancelWorldExportJob(_ input: CancelWorldExportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelWorldExportJobResponse {
        return try await self.client.execute(operation: "CancelWorldExportJob", path: "/cancelWorldExportJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels the specified world generator job.
    public func cancelWorldGenerationJob(_ input: CancelWorldGenerationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelWorldGenerationJobResponse {
        return try await self.client.execute(operation: "CancelWorldGenerationJob", path: "/cancelWorldGenerationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deploys a specific version of a robot application to robots in a fleet. The robot application must have a numbered applicationVersion for consistency reasons. To create a new version, use CreateRobotApplicationVersion or see Creating a Robot Application Version.   After 90 days, deployment jobs expire and will be deleted. They will no longer be accessible.
    public func createDeploymentJob(_ input: CreateDeploymentJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDeploymentJobResponse {
        return try await self.client.execute(operation: "CreateDeploymentJob", path: "/createDeploymentJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a fleet, a logical group of robots running the same robot application.
    public func createFleet(_ input: CreateFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFleetResponse {
        return try await self.client.execute(operation: "CreateFleet", path: "/createFleet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a robot.
    public func createRobot(_ input: CreateRobotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRobotResponse {
        return try await self.client.execute(operation: "CreateRobot", path: "/createRobot", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a robot application.
    public func createRobotApplication(_ input: CreateRobotApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRobotApplicationResponse {
        return try await self.client.execute(operation: "CreateRobotApplication", path: "/createRobotApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a version of a robot application.
    public func createRobotApplicationVersion(_ input: CreateRobotApplicationVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRobotApplicationVersionResponse {
        return try await self.client.execute(operation: "CreateRobotApplicationVersion", path: "/createRobotApplicationVersion", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a simulation application.
    public func createSimulationApplication(_ input: CreateSimulationApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSimulationApplicationResponse {
        return try await self.client.execute(operation: "CreateSimulationApplication", path: "/createSimulationApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a simulation application with a specific revision id.
    public func createSimulationApplicationVersion(_ input: CreateSimulationApplicationVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSimulationApplicationVersionResponse {
        return try await self.client.execute(operation: "CreateSimulationApplicationVersion", path: "/createSimulationApplicationVersion", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a simulation job.  After 90 days, simulation jobs expire and will be deleted. They will no longer be accessible.
    public func createSimulationJob(_ input: CreateSimulationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSimulationJobResponse {
        return try await self.client.execute(operation: "CreateSimulationJob", path: "/createSimulationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a world export job.
    public func createWorldExportJob(_ input: CreateWorldExportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorldExportJobResponse {
        return try await self.client.execute(operation: "CreateWorldExportJob", path: "/createWorldExportJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates worlds using the specified template.
    public func createWorldGenerationJob(_ input: CreateWorldGenerationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorldGenerationJobResponse {
        return try await self.client.execute(operation: "CreateWorldGenerationJob", path: "/createWorldGenerationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a world template.
    public func createWorldTemplate(_ input: CreateWorldTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorldTemplateResponse {
        return try await self.client.execute(operation: "CreateWorldTemplate", path: "/createWorldTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a fleet.
    public func deleteFleet(_ input: DeleteFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFleetResponse {
        return try await self.client.execute(operation: "DeleteFleet", path: "/deleteFleet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a robot.
    public func deleteRobot(_ input: DeleteRobotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRobotResponse {
        return try await self.client.execute(operation: "DeleteRobot", path: "/deleteRobot", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a robot application.
    public func deleteRobotApplication(_ input: DeleteRobotApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRobotApplicationResponse {
        return try await self.client.execute(operation: "DeleteRobotApplication", path: "/deleteRobotApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a simulation application.
    public func deleteSimulationApplication(_ input: DeleteSimulationApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSimulationApplicationResponse {
        return try await self.client.execute(operation: "DeleteSimulationApplication", path: "/deleteSimulationApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a world template.
    public func deleteWorldTemplate(_ input: DeleteWorldTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWorldTemplateResponse {
        return try await self.client.execute(operation: "DeleteWorldTemplate", path: "/deleteWorldTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deregisters a robot.
    public func deregisterRobot(_ input: DeregisterRobotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeregisterRobotResponse {
        return try await self.client.execute(operation: "DeregisterRobot", path: "/deregisterRobot", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a deployment job.
    public func describeDeploymentJob(_ input: DescribeDeploymentJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeploymentJobResponse {
        return try await self.client.execute(operation: "DescribeDeploymentJob", path: "/describeDeploymentJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a fleet.
    public func describeFleet(_ input: DescribeFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetResponse {
        return try await self.client.execute(operation: "DescribeFleet", path: "/describeFleet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a robot.
    public func describeRobot(_ input: DescribeRobotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRobotResponse {
        return try await self.client.execute(operation: "DescribeRobot", path: "/describeRobot", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a robot application.
    public func describeRobotApplication(_ input: DescribeRobotApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRobotApplicationResponse {
        return try await self.client.execute(operation: "DescribeRobotApplication", path: "/describeRobotApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a simulation application.
    public func describeSimulationApplication(_ input: DescribeSimulationApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSimulationApplicationResponse {
        return try await self.client.execute(operation: "DescribeSimulationApplication", path: "/describeSimulationApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a simulation job.
    public func describeSimulationJob(_ input: DescribeSimulationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSimulationJobResponse {
        return try await self.client.execute(operation: "DescribeSimulationJob", path: "/describeSimulationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a simulation job batch.
    public func describeSimulationJobBatch(_ input: DescribeSimulationJobBatchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSimulationJobBatchResponse {
        return try await self.client.execute(operation: "DescribeSimulationJobBatch", path: "/describeSimulationJobBatch", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a world.
    public func describeWorld(_ input: DescribeWorldRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorldResponse {
        return try await self.client.execute(operation: "DescribeWorld", path: "/describeWorld", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a world export job.
    public func describeWorldExportJob(_ input: DescribeWorldExportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorldExportJobResponse {
        return try await self.client.execute(operation: "DescribeWorldExportJob", path: "/describeWorldExportJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a world generation job.
    public func describeWorldGenerationJob(_ input: DescribeWorldGenerationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorldGenerationJobResponse {
        return try await self.client.execute(operation: "DescribeWorldGenerationJob", path: "/describeWorldGenerationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a world template.
    public func describeWorldTemplate(_ input: DescribeWorldTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorldTemplateResponse {
        return try await self.client.execute(operation: "DescribeWorldTemplate", path: "/describeWorldTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the world template body.
    public func getWorldTemplateBody(_ input: GetWorldTemplateBodyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWorldTemplateBodyResponse {
        return try await self.client.execute(operation: "GetWorldTemplateBody", path: "/getWorldTemplateBody", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs.
    public func listDeploymentJobs(_ input: ListDeploymentJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDeploymentJobsResponse {
        return try await self.client.execute(operation: "ListDeploymentJobs", path: "/listDeploymentJobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of fleets. You can optionally provide filters to retrieve specific fleets.
    public func listFleets(_ input: ListFleetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFleetsResponse {
        return try await self.client.execute(operation: "ListFleets", path: "/listFleets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of robot application. You can optionally provide filters to retrieve specific robot applications.
    public func listRobotApplications(_ input: ListRobotApplicationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRobotApplicationsResponse {
        return try await self.client.execute(operation: "ListRobotApplications", path: "/listRobotApplications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of robots. You can optionally provide filters to retrieve specific robots.
    public func listRobots(_ input: ListRobotsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRobotsResponse {
        return try await self.client.execute(operation: "ListRobots", path: "/listRobots", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of simulation applications. You can optionally provide filters to retrieve specific simulation applications.
    public func listSimulationApplications(_ input: ListSimulationApplicationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSimulationApplicationsResponse {
        return try await self.client.execute(operation: "ListSimulationApplications", path: "/listSimulationApplications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list simulation job batches. You can optionally provide filters to retrieve specific simulation batch jobs.
    public func listSimulationJobBatches(_ input: ListSimulationJobBatchesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSimulationJobBatchesResponse {
        return try await self.client.execute(operation: "ListSimulationJobBatches", path: "/listSimulationJobBatches", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of simulation jobs. You can optionally provide filters to retrieve specific simulation jobs.
    public func listSimulationJobs(_ input: ListSimulationJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSimulationJobsResponse {
        return try await self.client.execute(operation: "ListSimulationJobs", path: "/listSimulationJobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all tags on a AWS RoboMaker resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists world export jobs.
    public func listWorldExportJobs(_ input: ListWorldExportJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWorldExportJobsResponse {
        return try await self.client.execute(operation: "ListWorldExportJobs", path: "/listWorldExportJobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists world generator jobs.
    public func listWorldGenerationJobs(_ input: ListWorldGenerationJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWorldGenerationJobsResponse {
        return try await self.client.execute(operation: "ListWorldGenerationJobs", path: "/listWorldGenerationJobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists world templates.
    public func listWorldTemplates(_ input: ListWorldTemplatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWorldTemplatesResponse {
        return try await self.client.execute(operation: "ListWorldTemplates", path: "/listWorldTemplates", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists worlds.
    public func listWorlds(_ input: ListWorldsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWorldsResponse {
        return try await self.client.execute(operation: "ListWorlds", path: "/listWorlds", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers a robot with a fleet.
    public func registerRobot(_ input: RegisterRobotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterRobotResponse {
        return try await self.client.execute(operation: "RegisterRobot", path: "/registerRobot", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Restarts a running simulation job.
    public func restartSimulationJob(_ input: RestartSimulationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartSimulationJobResponse {
        return try await self.client.execute(operation: "RestartSimulationJob", path: "/restartSimulationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a new simulation job batch. The batch is defined using one or more SimulationJobRequest objects.
    public func startSimulationJobBatch(_ input: StartSimulationJobBatchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartSimulationJobBatchResponse {
        return try await self.client.execute(operation: "StartSimulationJobBatch", path: "/startSimulationJobBatch", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Syncrhonizes robots in a fleet to the latest deployment. This is helpful if robots were added after a deployment.
    public func syncDeploymentJob(_ input: SyncDeploymentJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SyncDeploymentJobResponse {
        return try await self.client.execute(operation: "SyncDeploymentJob", path: "/syncDeploymentJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or edits tags for a AWS RoboMaker resource. Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty strings.  For information about the rules that apply to tag keys and tag values, see User-Defined Tag Restrictions in the AWS Billing and Cost Management User Guide.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from the specified AWS RoboMaker resource. To remove a tag, specify the tag key. To change the tag value of an existing tag key, use  TagResource .
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a robot application.
    public func updateRobotApplication(_ input: UpdateRobotApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRobotApplicationResponse {
        return try await self.client.execute(operation: "UpdateRobotApplication", path: "/updateRobotApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a simulation application.
    public func updateSimulationApplication(_ input: UpdateSimulationApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSimulationApplicationResponse {
        return try await self.client.execute(operation: "UpdateSimulationApplication", path: "/updateSimulationApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a world template.
    public func updateWorldTemplate(_ input: UpdateWorldTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateWorldTemplateResponse {
        return try await self.client.execute(operation: "UpdateWorldTemplate", path: "/updateWorldTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
