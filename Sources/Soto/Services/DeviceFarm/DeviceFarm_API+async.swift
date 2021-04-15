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
extension DeviceFarm {
    // MARK: Async API Calls

    /// Creates a device pool.
    public func createDevicePool(_ input: CreateDevicePoolRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDevicePoolResult {
        return try await self.client.execute(operation: "CreateDevicePool", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a profile that can be applied to one or more private fleet device instances.
    public func createInstanceProfile(_ input: CreateInstanceProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceProfileResult {
        return try await self.client.execute(operation: "CreateInstanceProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a network profile.
    public func createNetworkProfile(_ input: CreateNetworkProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNetworkProfileResult {
        return try await self.client.execute(operation: "CreateNetworkProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a project.
    public func createProject(_ input: CreateProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectResult {
        return try await self.client.execute(operation: "CreateProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Specifies and starts a remote access session.
    public func createRemoteAccessSession(_ input: CreateRemoteAccessSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRemoteAccessSessionResult {
        return try await self.client.execute(operation: "CreateRemoteAccessSession", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Selenium testing project. Projects are used to track TestGridSession instances.
    public func createTestGridProject(_ input: CreateTestGridProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTestGridProjectResult {
        return try await self.client.execute(operation: "CreateTestGridProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a signed, short-term URL that can be passed to a Selenium RemoteWebDriver constructor.
    public func createTestGridUrl(_ input: CreateTestGridUrlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTestGridUrlResult {
        return try await self.client.execute(operation: "CreateTestGridUrl", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Uploads an app or test scripts.
    public func createUpload(_ input: CreateUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUploadResult {
        return try await self.client.execute(operation: "CreateUpload", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a configuration record in Device Farm for your Amazon Virtual Private Cloud (VPC) endpoint.
    public func createVPCEConfiguration(_ input: CreateVPCEConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVPCEConfigurationResult {
        return try await self.client.execute(operation: "CreateVPCEConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a device pool given the pool ARN. Does not allow deletion of curated pools owned by the system.
    public func deleteDevicePool(_ input: DeleteDevicePoolRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDevicePoolResult {
        return try await self.client.execute(operation: "DeleteDevicePool", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a profile that can be applied to one or more private device instances.
    public func deleteInstanceProfile(_ input: DeleteInstanceProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInstanceProfileResult {
        return try await self.client.execute(operation: "DeleteInstanceProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a network profile.
    public func deleteNetworkProfile(_ input: DeleteNetworkProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNetworkProfileResult {
        return try await self.client.execute(operation: "DeleteNetworkProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an AWS Device Farm project, given the project ARN.  Deleting this resource does not stop an in-progress run.
    public func deleteProject(_ input: DeleteProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProjectResult {
        return try await self.client.execute(operation: "DeleteProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a completed remote access session and its results.
    public func deleteRemoteAccessSession(_ input: DeleteRemoteAccessSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRemoteAccessSessionResult {
        return try await self.client.execute(operation: "DeleteRemoteAccessSession", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the run, given the run ARN.  Deleting this resource does not stop an in-progress run.
    public func deleteRun(_ input: DeleteRunRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRunResult {
        return try await self.client.execute(operation: "DeleteRun", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a Selenium testing project and all content generated under it.   You cannot undo this operation.   You cannot delete a project if it has active sessions.
    public func deleteTestGridProject(_ input: DeleteTestGridProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTestGridProjectResult {
        return try await self.client.execute(operation: "DeleteTestGridProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an upload given the upload ARN.
    public func deleteUpload(_ input: DeleteUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUploadResult {
        return try await self.client.execute(operation: "DeleteUpload", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a configuration for your Amazon Virtual Private Cloud (VPC) endpoint.
    public func deleteVPCEConfiguration(_ input: DeleteVPCEConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVPCEConfigurationResult {
        return try await self.client.execute(operation: "DeleteVPCEConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the number of unmetered iOS or unmetered Android devices that have been purchased by the account.
    public func getAccountSettings(_ input: GetAccountSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAccountSettingsResult {
        return try await self.client.execute(operation: "GetAccountSettings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a unique device type.
    public func getDevice(_ input: GetDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceResult {
        return try await self.client.execute(operation: "GetDevice", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a device instance that belongs to a private device fleet.
    public func getDeviceInstance(_ input: GetDeviceInstanceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceInstanceResult {
        return try await self.client.execute(operation: "GetDeviceInstance", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a device pool.
    public func getDevicePool(_ input: GetDevicePoolRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDevicePoolResult {
        return try await self.client.execute(operation: "GetDevicePool", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about compatibility with a device pool.
    public func getDevicePoolCompatibility(_ input: GetDevicePoolCompatibilityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDevicePoolCompatibilityResult {
        return try await self.client.execute(operation: "GetDevicePoolCompatibility", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the specified instance profile.
    public func getInstanceProfile(_ input: GetInstanceProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInstanceProfileResult {
        return try await self.client.execute(operation: "GetInstanceProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a job.
    public func getJob(_ input: GetJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetJobResult {
        return try await self.client.execute(operation: "GetJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a network profile.
    public func getNetworkProfile(_ input: GetNetworkProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetNetworkProfileResult {
        return try await self.client.execute(operation: "GetNetworkProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the current status and future status of all offerings purchased by an AWS account. The response indicates how many offerings are currently available and the offerings that will be available in the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func getOfferingStatus(_ input: GetOfferingStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetOfferingStatusResult {
        return try await self.client.execute(operation: "GetOfferingStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a project.
    public func getProject(_ input: GetProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProjectResult {
        return try await self.client.execute(operation: "GetProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a link to a currently running remote access session.
    public func getRemoteAccessSession(_ input: GetRemoteAccessSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRemoteAccessSessionResult {
        return try await self.client.execute(operation: "GetRemoteAccessSession", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a run.
    public func getRun(_ input: GetRunRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRunResult {
        return try await self.client.execute(operation: "GetRun", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a suite.
    public func getSuite(_ input: GetSuiteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSuiteResult {
        return try await self.client.execute(operation: "GetSuite", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a test.
    public func getTest(_ input: GetTestRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTestResult {
        return try await self.client.execute(operation: "GetTest", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about a Selenium testing project.
    public func getTestGridProject(_ input: GetTestGridProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTestGridProjectResult {
        return try await self.client.execute(operation: "GetTestGridProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A session is an instance of a browser created through a RemoteWebDriver with the URL from CreateTestGridUrlResult$url. You can use the following to look up sessions:   The session ARN (GetTestGridSessionRequest$sessionArn).   The project ARN and a session ID (GetTestGridSessionRequest$projectArn and GetTestGridSessionRequest$sessionId).
    public func getTestGridSession(_ input: GetTestGridSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTestGridSessionResult {
        return try await self.client.execute(operation: "GetTestGridSession", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about an upload.
    public func getUpload(_ input: GetUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUploadResult {
        return try await self.client.execute(operation: "GetUpload", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the configuration settings for your Amazon Virtual Private Cloud (VPC) endpoint.
    public func getVPCEConfiguration(_ input: GetVPCEConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetVPCEConfigurationResult {
        return try await self.client.execute(operation: "GetVPCEConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Installs an application to the device in a remote access session. For Android applications, the file must be in .apk format. For iOS applications, the file must be in .ipa format.
    public func installToRemoteAccessSession(_ input: InstallToRemoteAccessSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InstallToRemoteAccessSessionResult {
        return try await self.client.execute(operation: "InstallToRemoteAccessSession", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about artifacts.
    public func listArtifacts(_ input: ListArtifactsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListArtifactsResult {
        return try await self.client.execute(operation: "ListArtifacts", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the private device instances associated with one or more AWS accounts.
    public func listDeviceInstances(_ input: ListDeviceInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDeviceInstancesResult {
        return try await self.client.execute(operation: "ListDeviceInstances", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about device pools.
    public func listDevicePools(_ input: ListDevicePoolsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDevicePoolsResult {
        return try await self.client.execute(operation: "ListDevicePools", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about unique device types.
    public func listDevices(_ input: ListDevicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDevicesResult {
        return try await self.client.execute(operation: "ListDevices", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about all the instance profiles in an AWS account.
    public func listInstanceProfiles(_ input: ListInstanceProfilesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInstanceProfilesResult {
        return try await self.client.execute(operation: "ListInstanceProfiles", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about jobs for a given test run.
    public func listJobs(_ input: ListJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListJobsResult {
        return try await self.client.execute(operation: "ListJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the list of available network profiles.
    public func listNetworkProfiles(_ input: ListNetworkProfilesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNetworkProfilesResult {
        return try await self.client.execute(operation: "ListNetworkProfiles", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of offering promotions. Each offering promotion record contains the ID and description of the promotion. The API returns a NotEligible error if the caller is not permitted to invoke the operation. Contact aws-devicefarm-support@amazon.com if you must be able to invoke this operation.
    public func listOfferingPromotions(_ input: ListOfferingPromotionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOfferingPromotionsResult {
        return try await self.client.execute(operation: "ListOfferingPromotions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS account. The list is paginated and ordered by a descending timestamp (most recent transactions are first). The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func listOfferingTransactions(_ input: ListOfferingTransactionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOfferingTransactionsResult {
        return try await self.client.execute(operation: "ListOfferingTransactions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of products or offerings that the user can manage through the API. Each offering record indicates the recurring price per unit and the frequency for that offering. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func listOfferings(_ input: ListOfferingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOfferingsResult {
        return try await self.client.execute(operation: "ListOfferings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about projects.
    public func listProjects(_ input: ListProjectsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListProjectsResult {
        return try await self.client.execute(operation: "ListProjects", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all currently running remote access sessions.
    public func listRemoteAccessSessions(_ input: ListRemoteAccessSessionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRemoteAccessSessionsResult {
        return try await self.client.execute(operation: "ListRemoteAccessSessions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about runs, given an AWS Device Farm project ARN.
    public func listRuns(_ input: ListRunsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRunsResult {
        return try await self.client.execute(operation: "ListRuns", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about samples, given an AWS Device Farm job ARN.
    public func listSamples(_ input: ListSamplesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSamplesResult {
        return try await self.client.execute(operation: "ListSamples", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about test suites for a given job.
    public func listSuites(_ input: ListSuitesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSuitesResult {
        return try await self.client.execute(operation: "ListSuites", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the tags for an AWS Device Farm resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of all Selenium testing projects in your account.
    public func listTestGridProjects(_ input: ListTestGridProjectsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTestGridProjectsResult {
        return try await self.client.execute(operation: "ListTestGridProjects", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the actions taken in a TestGridSession.
    public func listTestGridSessionActions(_ input: ListTestGridSessionActionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTestGridSessionActionsResult {
        return try await self.client.execute(operation: "ListTestGridSessionActions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of artifacts created during the session.
    public func listTestGridSessionArtifacts(_ input: ListTestGridSessionArtifactsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTestGridSessionArtifactsResult {
        return try await self.client.execute(operation: "ListTestGridSessionArtifacts", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of sessions for a TestGridProject.
    public func listTestGridSessions(_ input: ListTestGridSessionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTestGridSessionsResult {
        return try await self.client.execute(operation: "ListTestGridSessions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about tests in a given test suite.
    public func listTests(_ input: ListTestsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTestsResult {
        return try await self.client.execute(operation: "ListTests", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about unique problems, such as exceptions or crashes. Unique problems are defined as a single instance of an error across a run, job, or suite. For example, if a call in your application consistently raises an exception (OutOfBoundsException in MyActivity.java:386), ListUniqueProblems returns a single entry instead of many individual entries for that exception.
    public func listUniqueProblems(_ input: ListUniqueProblemsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUniqueProblemsResult {
        return try await self.client.execute(operation: "ListUniqueProblems", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about uploads, given an AWS Device Farm project ARN.
    public func listUploads(_ input: ListUploadsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUploadsResult {
        return try await self.client.execute(operation: "ListUploads", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about all Amazon Virtual Private Cloud (VPC) endpoint configurations in the AWS account.
    public func listVPCEConfigurations(_ input: ListVPCEConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVPCEConfigurationsResult {
        return try await self.client.execute(operation: "ListVPCEConfigurations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Immediately purchases offerings for an AWS account. Offerings renew with the latest total purchased quantity for an offering, unless the renewal was overridden. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func purchaseOffering(_ input: PurchaseOfferingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PurchaseOfferingResult {
        return try await self.client.execute(operation: "PurchaseOffering", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Explicitly sets the quantity of devices to renew for an offering, starting from the effectiveDate of the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func renewOffering(_ input: RenewOfferingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewOfferingResult {
        return try await self.client.execute(operation: "RenewOffering", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Schedules a run.
    public func scheduleRun(_ input: ScheduleRunRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScheduleRunResult {
        return try await self.client.execute(operation: "ScheduleRun", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Initiates a stop request for the current job. AWS Device Farm immediately stops the job on the device where tests have not started. You are not billed for this device. On the device where tests have started, setup suite and teardown suite tests run to completion on the device. You are billed for setup, teardown, and any tests that were in progress or already completed.
    public func stopJob(_ input: StopJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopJobResult {
        return try await self.client.execute(operation: "StopJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Ends a specified remote access session.
    public func stopRemoteAccessSession(_ input: StopRemoteAccessSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopRemoteAccessSessionResult {
        return try await self.client.execute(operation: "StopRemoteAccessSession", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Initiates a stop request for the current test run. AWS Device Farm immediately stops the run on devices where tests have not started. You are not billed for these devices. On devices where tests have started executing, setup suite and teardown suite tests run to completion on those devices. You are billed for setup, teardown, and any tests that were in progress or already completed.
    public func stopRun(_ input: StopRunRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopRunResult {
        return try await self.client.execute(operation: "StopRun", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are also deleted.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates information about a private device instance.
    public func updateDeviceInstance(_ input: UpdateDeviceInstanceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDeviceInstanceResult {
        return try await self.client.execute(operation: "UpdateDeviceInstance", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the name, description, and rules in a device pool given the attributes and the pool ARN. Rule updates are all-or-nothing, meaning they can only be updated as a whole (or not at all).
    public func updateDevicePool(_ input: UpdateDevicePoolRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDevicePoolResult {
        return try await self.client.execute(operation: "UpdateDevicePool", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates information about an existing private device instance profile.
    public func updateInstanceProfile(_ input: UpdateInstanceProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateInstanceProfileResult {
        return try await self.client.execute(operation: "UpdateInstanceProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the network profile.
    public func updateNetworkProfile(_ input: UpdateNetworkProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateNetworkProfileResult {
        return try await self.client.execute(operation: "UpdateNetworkProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the specified project name, given the project ARN and a new name.
    public func updateProject(_ input: UpdateProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProjectResult {
        return try await self.client.execute(operation: "UpdateProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Change details of a project.
    public func updateTestGridProject(_ input: UpdateTestGridProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTestGridProjectResult {
        return try await self.client.execute(operation: "UpdateTestGridProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an uploaded test spec.
    public func updateUpload(_ input: UpdateUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateUploadResult {
        return try await self.client.execute(operation: "UpdateUpload", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates information about an Amazon Virtual Private Cloud (VPC) endpoint configuration.
    public func updateVPCEConfiguration(_ input: UpdateVPCEConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateVPCEConfigurationResult {
        return try await self.client.execute(operation: "UpdateVPCEConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
