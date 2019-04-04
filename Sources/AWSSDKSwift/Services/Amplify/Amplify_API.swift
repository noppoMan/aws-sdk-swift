// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
 Amplify is a fully managed continuous deployment and hosting service for modern web apps. 
*/
public struct Amplify {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "amplify",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [AmplifyErrorType.self]
        )
    }

    ///   Creates a new Branch for an Amplify App. 
    public func createBranch(_ input: CreateBranchRequest) throws -> EventLoopFuture<CreateBranchResult> {
        return try client.send(operation: "CreateBranch", path: "/apps/{appId}/branches", httpMethod: "POST", input: input)
    }

    ///   Updates an existing Amplify App. 
    public func updateApp(_ input: UpdateAppRequest) throws -> EventLoopFuture<UpdateAppResult> {
        return try client.send(operation: "UpdateApp", path: "/apps/{appId}", httpMethod: "POST", input: input)
    }

    ///   Retrieves domain info that corresponds to an appId and domainName. 
    public func getDomainAssociation(_ input: GetDomainAssociationRequest) throws -> EventLoopFuture<GetDomainAssociationResult> {
        return try client.send(operation: "GetDomainAssociation", path: "/apps/{appId}/domains/{domainName}", httpMethod: "GET", input: input)
    }

    ///   Delete an existing Amplify App by appId. 
    public func deleteApp(_ input: DeleteAppRequest) throws -> EventLoopFuture<DeleteAppResult> {
        return try client.send(operation: "DeleteApp", path: "/apps/{appId}", httpMethod: "DELETE", input: input)
    }

    ///   Stop a job that is in progress, for an Amplify branch, part of Amplify App. 
    public func stopJob(_ input: StopJobRequest) throws -> EventLoopFuture<StopJobResult> {
        return try client.send(operation: "StopJob", path: "/apps/{appId}/branches/{branchName}/jobs/{jobId}/stop", httpMethod: "DELETE", input: input)
    }

    ///   Lists existing Amplify Apps. 
    public func listApps(_ input: ListAppsRequest) throws -> EventLoopFuture<ListAppsResult> {
        return try client.send(operation: "ListApps", path: "/apps", httpMethod: "GET", input: input)
    }

    ///   Updates a branch for an Amplify App. 
    public func updateBranch(_ input: UpdateBranchRequest) throws -> EventLoopFuture<UpdateBranchResult> {
        return try client.send(operation: "UpdateBranch", path: "/apps/{appId}/branches/{branchName}", httpMethod: "POST", input: input)
    }

    ///   Get a job for a branch, part of an Amplify App. 
    public func getJob(_ input: GetJobRequest) throws -> EventLoopFuture<GetJobResult> {
        return try client.send(operation: "GetJob", path: "/apps/{appId}/branches/{branchName}/jobs/{jobId}", httpMethod: "GET", input: input)
    }

    ///   List domains with an app 
    public func listDomainAssociations(_ input: ListDomainAssociationsRequest) throws -> EventLoopFuture<ListDomainAssociationsResult> {
        return try client.send(operation: "ListDomainAssociations", path: "/apps/{appId}/domains", httpMethod: "GET", input: input)
    }

    ///   Delete a job, for an Amplify branch, part of Amplify App. 
    public func deleteJob(_ input: DeleteJobRequest) throws -> EventLoopFuture<DeleteJobResult> {
        return try client.send(operation: "DeleteJob", path: "/apps/{appId}/branches/{branchName}/jobs/{jobId}", httpMethod: "DELETE", input: input)
    }

    ///   List Jobs for a branch, part of an Amplify App. 
    public func listJobs(_ input: ListJobsRequest) throws -> EventLoopFuture<ListJobsResult> {
        return try client.send(operation: "ListJobs", path: "/apps/{appId}/branches/{branchName}/jobs", httpMethod: "GET", input: input)
    }

    ///   Deletes a branch for an Amplify App. 
    public func deleteBranch(_ input: DeleteBranchRequest) throws -> EventLoopFuture<DeleteBranchResult> {
        return try client.send(operation: "DeleteBranch", path: "/apps/{appId}/branches/{branchName}", httpMethod: "DELETE", input: input)
    }

    ///   Create a new DomainAssociation on an App 
    public func updateDomainAssociation(_ input: UpdateDomainAssociationRequest) throws -> EventLoopFuture<UpdateDomainAssociationResult> {
        return try client.send(operation: "UpdateDomainAssociation", path: "/apps/{appId}/domains/{domainName}", httpMethod: "POST", input: input)
    }

    ///   Lists branches for an Amplify App. 
    public func listBranches(_ input: ListBranchesRequest) throws -> EventLoopFuture<ListBranchesResult> {
        return try client.send(operation: "ListBranches", path: "/apps/{appId}/branches", httpMethod: "GET", input: input)
    }

    ///   Deletes a DomainAssociation. 
    public func deleteDomainAssociation(_ input: DeleteDomainAssociationRequest) throws -> EventLoopFuture<DeleteDomainAssociationResult> {
        return try client.send(operation: "DeleteDomainAssociation", path: "/apps/{appId}/domains/{domainName}", httpMethod: "DELETE", input: input)
    }

    ///   Creates a new Amplify App. 
    public func createApp(_ input: CreateAppRequest) throws -> EventLoopFuture<CreateAppResult> {
        return try client.send(operation: "CreateApp", path: "/apps", httpMethod: "POST", input: input)
    }

    ///   Starts a new job for a branch, part of an Amplify App. 
    public func startJob(_ input: StartJobRequest) throws -> EventLoopFuture<StartJobResult> {
        return try client.send(operation: "StartJob", path: "/apps/{appId}/branches/{branchName}/jobs", httpMethod: "POST", input: input)
    }

    ///   Retrieves a branch for an Amplify App. 
    public func getBranch(_ input: GetBranchRequest) throws -> EventLoopFuture<GetBranchResult> {
        return try client.send(operation: "GetBranch", path: "/apps/{appId}/branches/{branchName}", httpMethod: "GET", input: input)
    }

    ///   Retrieves an existing Amplify App by appId. 
    public func getApp(_ input: GetAppRequest) throws -> EventLoopFuture<GetAppResult> {
        return try client.send(operation: "GetApp", path: "/apps/{appId}", httpMethod: "GET", input: input)
    }

    ///   Create a new DomainAssociation on an App 
    public func createDomainAssociation(_ input: CreateDomainAssociationRequest) throws -> EventLoopFuture<CreateDomainAssociationResult> {
        return try client.send(operation: "CreateDomainAssociation", path: "/apps/{appId}/domains", httpMethod: "POST", input: input)
    }


}