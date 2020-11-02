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
 Client object for interacting with AWS ManagedBlockchain service.

  Amazon Managed Blockchain is a fully managed service for creating and managing blockchain networks using open source frameworks. Blockchain allows you to build applications where multiple parties can securely and transparently run transactions and share data without the need for a trusted, central authority. Currently, Managed Blockchain supports the Hyperledger Fabric open source framework.
 */
public struct ManagedBlockchain: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ManagedBlockchain client
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
            service: "managedblockchain",
            serviceProtocol: .restjson,
            apiVersion: "2018-09-24",
            endpoint: endpoint,
            errorType: ManagedBlockchainErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Creates a member within a Managed Blockchain network.
    public func createMember(_ input: CreateMemberInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMemberOutput> {
        return self.client.execute(operation: "CreateMember", path: "/networks/{networkId}/members", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new blockchain network using Amazon Managed Blockchain.
    public func createNetwork(_ input: CreateNetworkInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNetworkOutput> {
        return self.client.execute(operation: "CreateNetwork", path: "/networks", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a peer node in a member.
    public func createNode(_ input: CreateNodeInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNodeOutput> {
        return self.client.execute(operation: "CreateNode", path: "/networks/{networkId}/members/{memberId}/nodes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a proposal for a change to the network that other members of the network can vote on, for example, a proposal to add a new member to the network. Any member can create a proposal.
    public func createProposal(_ input: CreateProposalInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProposalOutput> {
        return self.client.execute(operation: "CreateProposal", path: "/networks/{networkId}/proposals", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a member. Deleting a member removes the member and all associated resources from the network. DeleteMember can only be called for a specified MemberId if the principal performing the action is associated with the AWS account that owns the member. In all other cases, the DeleteMember action is carried out as the result of an approved proposal to remove a member. If MemberId is the last member in a network specified by the last AWS account, the network is deleted also.
    public func deleteMember(_ input: DeleteMemberInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMemberOutput> {
        return self.client.execute(operation: "DeleteMember", path: "/networks/{networkId}/members/{memberId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a peer node from a member that your AWS account owns. All data on the node is lost and cannot be recovered.
    public func deleteNode(_ input: DeleteNodeInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNodeOutput> {
        return self.client.execute(operation: "DeleteNode", path: "/networks/{networkId}/members/{memberId}/nodes/{nodeId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns detailed information about a member.
    public func getMember(_ input: GetMemberInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMemberOutput> {
        return self.client.execute(operation: "GetMember", path: "/networks/{networkId}/members/{memberId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns detailed information about a network.
    public func getNetwork(_ input: GetNetworkInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetNetworkOutput> {
        return self.client.execute(operation: "GetNetwork", path: "/networks/{networkId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns detailed information about a peer node.
    public func getNode(_ input: GetNodeInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetNodeOutput> {
        return self.client.execute(operation: "GetNode", path: "/networks/{networkId}/members/{memberId}/nodes/{nodeId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns detailed information about a proposal.
    public func getProposal(_ input: GetProposalInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetProposalOutput> {
        return self.client.execute(operation: "GetProposal", path: "/networks/{networkId}/proposals/{proposalId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a listing of all invitations for the current AWS account.
    public func listInvitations(_ input: ListInvitationsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInvitationsOutput> {
        return self.client.execute(operation: "ListInvitations", path: "/invitations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a listing of the members in a network and properties of their configurations.
    public func listMembers(_ input: ListMembersInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMembersOutput> {
        return self.client.execute(operation: "ListMembers", path: "/networks/{networkId}/members", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns information about the networks in which the current AWS account has members.
    public func listNetworks(_ input: ListNetworksInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListNetworksOutput> {
        return self.client.execute(operation: "ListNetworks", path: "/networks", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns information about the nodes within a network.
    public func listNodes(_ input: ListNodesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListNodesOutput> {
        return self.client.execute(operation: "ListNodes", path: "/networks/{networkId}/members/{memberId}/nodes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the listing of votes for a specified proposal, including the value of each vote and the unique identifier of the member that cast the vote.
    public func listProposalVotes(_ input: ListProposalVotesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProposalVotesOutput> {
        return self.client.execute(operation: "ListProposalVotes", path: "/networks/{networkId}/proposals/{proposalId}/votes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a listing of proposals for the network.
    public func listProposals(_ input: ListProposalsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProposalsOutput> {
        return self.client.execute(operation: "ListProposals", path: "/networks/{networkId}/proposals", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Rejects an invitation to join a network. This action can be called by a principal in an AWS account that has received an invitation to create a member and join a network.
    public func rejectInvitation(_ input: RejectInvitationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RejectInvitationOutput> {
        return self.client.execute(operation: "RejectInvitation", path: "/invitations/{invitationId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a member configuration with new parameters.
    public func updateMember(_ input: UpdateMemberInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMemberOutput> {
        return self.client.execute(operation: "UpdateMember", path: "/networks/{networkId}/members/{memberId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a node configuration with new parameters.
    public func updateNode(_ input: UpdateNodeInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateNodeOutput> {
        return self.client.execute(operation: "UpdateNode", path: "/networks/{networkId}/members/{memberId}/nodes/{nodeId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Casts a vote for a specified ProposalId on behalf of a member. The member to vote as, specified by VoterMemberId, must be in the same AWS account as the principal that calls the action.
    public func voteOnProposal(_ input: VoteOnProposalInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VoteOnProposalOutput> {
        return self.client.execute(operation: "VoteOnProposal", path: "/networks/{networkId}/proposals/{proposalId}/votes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension ManagedBlockchain {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ManagedBlockchain, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
