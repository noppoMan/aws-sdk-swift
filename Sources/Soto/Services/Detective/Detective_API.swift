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

@_exported import SotoCore

/*
 Client object for interacting with AWS Detective service.

 Detective uses machine learning and purpose-built visualizations to help you analyze and investigate security issues across your Amazon Web Services (AWS) workloads. Detective automatically extracts time-based events such as login attempts, API calls, and network traffic from AWS CloudTrail and Amazon Virtual Private Cloud (Amazon VPC) flow logs. It also extracts findings detected by Amazon GuardDuty. The Detective API primarily supports the creation and management of behavior graphs. A behavior graph contains the extracted data from a set of member accounts, and is created and managed by a master account. Every behavior graph is specific to a Region. You can only use the API to manage graphs that belong to the Region that is associated with the currently selected endpoint. A Detective master account can use the Detective API to do the following:   Enable and disable Detective. Enabling Detective creates a new behavior graph.   View the list of member accounts in a behavior graph.   Add member accounts to a behavior graph.   Remove member accounts from a behavior graph.   A member account can use the Detective API to do the following:   View the list of behavior graphs that they are invited to.   Accept an invitation to contribute to a behavior graph.   Decline an invitation to contribute to a behavior graph.   Remove their account from a behavior graph.   All API actions are logged as CloudTrail events. See Logging Detective API Calls with CloudTrail.
 */
public struct Detective: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Detective client
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
            service: "api.detective",
            signingName: "detective",
            serviceProtocol: .restjson,
            apiVersion: "2018-10-26",
            endpoint: endpoint,
            possibleErrorTypes: [DetectiveErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Accepts an invitation for the member account to contribute data to a behavior graph. This operation can only be called by an invited member account.  The request provides the ARN of behavior graph. The member account status in the graph must be INVITED.
    @discardableResult public func acceptInvitation(_ input: AcceptInvitationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "AcceptInvitation", path: "/invitation", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new behavior graph for the calling account, and sets that account as the master account. This operation is called by the account that is enabling Detective. Before you try to enable Detective, make sure that your account has been enrolled in Amazon GuardDuty for at least 48 hours. If you do not meet this requirement, you cannot enable Detective. If you do meet the GuardDuty prerequisite, then when you make the request to enable Detective, it checks whether your data volume is within the Detective quota. If it exceeds the quota, then you cannot enable Detective.  The operation also enables Detective for the calling account in the currently selected Region. It returns the ARN of the new behavior graph.  CreateGraph triggers a process to create the corresponding data tables for the new behavior graph. An account can only be the master account for one behavior graph within a Region. If the same account calls CreateGraph with the same master account, it always returns the same behavior graph ARN. It does not create a new behavior graph.
    public func createGraph(on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateGraphResponse> {
        return self.client.execute(operation: "CreateGraph", path: "/graph", httpMethod: .POST, serviceConfig: self.config, on: eventLoop, logger: logger)
    }

    ///  Sends a request to invite the specified AWS accounts to be member accounts in the behavior graph. This operation can only be called by the master account for a behavior graph.   CreateMembers verifies the accounts and then sends invitations to the verified accounts. The request provides the behavior graph ARN and the list of accounts to invite. The response separates the requested accounts into two lists:   The accounts that CreateMembers was able to start the verification for. This list includes member accounts that are being verified, that have passed verification and are being sent an invitation, and that have failed verification.   The accounts that CreateMembers was unable to process. This list includes accounts that were already invited to be member accounts in the behavior graph.
    public func createMembers(_ input: CreateMembersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateMembersResponse> {
        return self.client.execute(operation: "CreateMembers", path: "/graph/members", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Disables the specified behavior graph and queues it to be deleted. This operation removes the graph from each member account's list of behavior graphs.  DeleteGraph can only be called by the master account for a behavior graph.
    @discardableResult public func deleteGraph(_ input: DeleteGraphRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteGraph", path: "/graph/removal", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes one or more member accounts from the master account behavior graph. This operation can only be called by a Detective master account. That account cannot use DeleteMembers to delete their own account from the behavior graph. To disable a behavior graph, the master account uses the DeleteGraph API method.
    public func deleteMembers(_ input: DeleteMembersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteMembersResponse> {
        return self.client.execute(operation: "DeleteMembers", path: "/graph/members/removal", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes the member account from the specified behavior graph. This operation can only be called by a member account that has the ENABLED status.
    @discardableResult public func disassociateMembership(_ input: DisassociateMembershipRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DisassociateMembership", path: "/membership/removal", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the membership details for specified member accounts for a behavior graph.
    public func getMembers(_ input: GetMembersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetMembersResponse> {
        return self.client.execute(operation: "GetMembers", path: "/graph/members/get", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the list of behavior graphs that the calling account is a master of. This operation can only be called by a master account. Because an account can currently only be the master of one behavior graph within a Region, the results always contain a single graph.
    public func listGraphs(_ input: ListGraphsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListGraphsResponse> {
        return self.client.execute(operation: "ListGraphs", path: "/graphs/list", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the list of open and accepted behavior graph invitations for the member account. This operation can only be called by a member account. Open invitations are invitations that the member account has not responded to. The results do not include behavior graphs for which the member account declined the invitation. The results also do not include behavior graphs that the member account resigned from or was removed from.
    public func listInvitations(_ input: ListInvitationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListInvitationsResponse> {
        return self.client.execute(operation: "ListInvitations", path: "/invitations/list", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the list of member accounts for a behavior graph. Does not return member accounts that were removed from the behavior graph.
    public func listMembers(_ input: ListMembersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListMembersResponse> {
        return self.client.execute(operation: "ListMembers", path: "/graph/members/list", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Rejects an invitation to contribute the account data to a behavior graph. This operation must be called by a member account that has the INVITED status.
    @discardableResult public func rejectInvitation(_ input: RejectInvitationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "RejectInvitation", path: "/invitation/removal", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Sends a request to enable data ingest for a member account that has a status of ACCEPTED_BUT_DISABLED. For valid member accounts, the status is updated as follows.   If Detective enabled the member account, then the new status is ENABLED.   If Detective cannot enable the member account, the status remains ACCEPTED_BUT_DISABLED.
    @discardableResult public func startMonitoringMember(_ input: StartMonitoringMemberRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "StartMonitoringMember", path: "/graph/member/monitoringstate", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }
}

extension Detective {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Detective, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
