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
 Client object for interacting with AWS Connect service.

 Amazon Connect is a cloud-based contact center solution that makes it easy to set up and manage a customer contact center and provide reliable customer engagement at any scale. Amazon Connect provides rich metrics and real-time reporting that allow you to optimize contact routing. You can also resolve customer issues more efficiently by putting customers in touch with the right agents. There are limits to the number of Amazon Connect resources that you can create and limits to the number of requests that you can make per second. For more information, see Amazon Connect Service Limits in the Amazon Connect Administrator Guide.
 */
public struct Connect: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Connect client
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
            service: "connect",
            serviceProtocol: .restjson,
            apiVersion: "2017-08-08",
            endpoint: endpoint,
            possibleErrorTypes: [ConnectErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Creates a user account for the specified Amazon Connect instance.
    public func createUser(_ input: CreateUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateUserResponse> {
        return self.client.execute(operation: "CreateUser", path: "/users/{InstanceId}", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a user account from the specified Amazon Connect instance.
    @discardableResult public func deleteUser(_ input: DeleteUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteUser", path: "/users/{InstanceId}/{UserId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the specified user account. You can find the instance ID in the console (it’s the final part of the ARN). The console does not display the user IDs. Instead, list the users and note the IDs provided in the output.
    public func describeUser(_ input: DescribeUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeUserResponse> {
        return self.client.execute(operation: "DescribeUser", path: "/users/{InstanceId}/{UserId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the specified hierarchy group.
    public func describeUserHierarchyGroup(_ input: DescribeUserHierarchyGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeUserHierarchyGroupResponse> {
        return self.client.execute(operation: "DescribeUserHierarchyGroup", path: "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes the hierarchy structure of the specified Amazon Connect instance.
    public func describeUserHierarchyStructure(_ input: DescribeUserHierarchyStructureRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeUserHierarchyStructureResponse> {
        return self.client.execute(operation: "DescribeUserHierarchyStructure", path: "/user-hierarchy-structure/{InstanceId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the contact attributes for the specified contact.
    public func getContactAttributes(_ input: GetContactAttributesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetContactAttributesResponse> {
        return self.client.execute(operation: "GetContactAttributes", path: "/contact/attributes/{InstanceId}/{InitialContactId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the real-time metric data from the specified Amazon Connect instance. For more information, see Real-time Metrics Reports in the Amazon Connect Administrator Guide.
    public func getCurrentMetricData(_ input: GetCurrentMetricDataRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetCurrentMetricDataResponse> {
        return self.client.execute(operation: "GetCurrentMetricData", path: "/metrics/current/{InstanceId}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a token for federation.
    public func getFederationToken(_ input: GetFederationTokenRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetFederationTokenResponse> {
        return self.client.execute(operation: "GetFederationToken", path: "/user/federate/{InstanceId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets historical metric data from the specified Amazon Connect instance. For more information, see Historical Metrics Reports in the Amazon Connect Administrator Guide.
    public func getMetricData(_ input: GetMetricDataRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetMetricDataResponse> {
        return self.client.execute(operation: "GetMetricData", path: "/metrics/historical/{InstanceId}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides information about the contact flows for the specified Amazon Connect instance.
    public func listContactFlows(_ input: ListContactFlowsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListContactFlowsResponse> {
        return self.client.execute(operation: "ListContactFlows", path: "/contact-flows-summary/{InstanceId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides information about the hours of operation for the specified Amazon Connect instance.
    public func listHoursOfOperations(_ input: ListHoursOfOperationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListHoursOfOperationsResponse> {
        return self.client.execute(operation: "ListHoursOfOperations", path: "/hours-of-operations-summary/{InstanceId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides information about the phone numbers for the specified Amazon Connect instance.
    public func listPhoneNumbers(_ input: ListPhoneNumbersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListPhoneNumbersResponse> {
        return self.client.execute(operation: "ListPhoneNumbers", path: "/phone-numbers-summary/{InstanceId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides information about the queues for the specified Amazon Connect instance.
    public func listQueues(_ input: ListQueuesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListQueuesResponse> {
        return self.client.execute(operation: "ListQueues", path: "/queues-summary/{InstanceId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides summary information about the routing profiles for the specified Amazon Connect instance.
    public func listRoutingProfiles(_ input: ListRoutingProfilesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListRoutingProfilesResponse> {
        return self.client.execute(operation: "ListRoutingProfiles", path: "/routing-profiles-summary/{InstanceId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides summary information about the security profiles for the specified Amazon Connect instance.
    public func listSecurityProfiles(_ input: ListSecurityProfilesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListSecurityProfilesResponse> {
        return self.client.execute(operation: "ListSecurityProfiles", path: "/security-profiles-summary/{InstanceId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides summary information about the hierarchy groups for the specified Amazon Connect instance.
    public func listUserHierarchyGroups(_ input: ListUserHierarchyGroupsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListUserHierarchyGroupsResponse> {
        return self.client.execute(operation: "ListUserHierarchyGroups", path: "/user-hierarchy-groups-summary/{InstanceId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides summary information about the users for the specified Amazon Connect instance.
    public func listUsers(_ input: ListUsersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListUsersResponse> {
        return self.client.execute(operation: "ListUsers", path: "/users-summary/{InstanceId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  When a contact is being recorded, and the recording has been suspended using SuspendContactRecording, this API resumes recording the call. Only voice recordings are supported at this time.
    public func resumeContactRecording(_ input: ResumeContactRecordingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ResumeContactRecordingResponse> {
        return self.client.execute(operation: "ResumeContactRecording", path: "/contact/resume-recording", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Initiates a contact flow to start a new chat for the customer. Response of this API provides a token required to obtain credentials from the CreateParticipantConnection API in the Amazon Connect Participant Service. When a new chat contact is successfully created, clients need to subscribe to the participant’s connection for the created chat within 5 minutes. This is achieved by invoking CreateParticipantConnection with WEBSOCKET and CONNECTION_CREDENTIALS.
    public func startChatContact(_ input: StartChatContactRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartChatContactResponse> {
        return self.client.execute(operation: "StartChatContact", path: "/contact/chat", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  This API starts recording the contact when the agent joins the call. StartContactRecording is a one-time action. For example, if you use StopContactRecording to stop recording an ongoing call, you can't use StartContactRecording to restart it. For scenarios where the recording has started and you want to suspend and resume it, such as when collecting sensitive information (for example, a credit card number), use SuspendContactRecording and ResumeContactRecording. You can use this API to override the recording behavior configured in the Set recording behavior block. Only voice recordings are supported at this time.
    public func startContactRecording(_ input: StartContactRecordingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartContactRecordingResponse> {
        return self.client.execute(operation: "StartContactRecording", path: "/contact/start-recording", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  This API places an outbound call to a contact, and then initiates the contact flow. It performs the actions in the contact flow that's specified (in ContactFlowId). Agents are not involved in initiating the outbound API (that is, dialing the contact). If the contact flow places an outbound call to a contact, and then puts the contact in queue, that's when the call is routed to the agent, like any other inbound case. There is a 60 second dialing timeout for this operation. If the call is not connected after 60 seconds, it fails.
    public func startOutboundVoiceContact(_ input: StartOutboundVoiceContactRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartOutboundVoiceContactResponse> {
        return self.client.execute(operation: "StartOutboundVoiceContact", path: "/contact/outbound-voice", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Ends the specified contact.
    public func stopContact(_ input: StopContactRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopContactResponse> {
        return self.client.execute(operation: "StopContact", path: "/contact/stop", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  When a contact is being recorded, this API stops recording the call. StopContactRecording is a one-time action. If you use StopContactRecording to stop recording an ongoing call, you can't use StartContactRecording to restart it. For scenarios where the recording has started and you want to suspend it for sensitive information (for example, to collect a credit card number), and then restart it, use SuspendContactRecording and ResumeContactRecording. Only voice recordings are supported at this time.
    public func stopContactRecording(_ input: StopContactRecordingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopContactRecordingResponse> {
        return self.client.execute(operation: "StopContactRecording", path: "/contact/stop-recording", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  When a contact is being recorded, this API suspends recording the call. For example, you might suspend the call recording while collecting sensitive information, such as a credit card number. Then use ResumeContactRecording to restart recording.  The period of time that the recording is suspended is filled with silence in the final recording.  Only voice recordings are supported at this time.
    public func suspendContactRecording(_ input: SuspendContactRecordingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<SuspendContactRecordingResponse> {
        return self.client.execute(operation: "SuspendContactRecording", path: "/contact/suspend-recording", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds the specified tags to the specified resource. The supported resource type is users.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes the specified tags from the specified resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates or updates the contact attributes associated with the specified contact. You can add or update attributes for both ongoing and completed contacts. For example, you can update the customer's name or the reason the customer called while the call is active, or add notes about steps that the agent took during the call that are displayed to the next agent that takes the call. You can also update attributes for a contact using data from your CRM application and save the data with the contact in Amazon Connect. You could also flag calls for additional analysis, such as legal review or identifying abusive callers. Contact attributes are available in Amazon Connect for 24 months, and are then deleted.  Important: You cannot use the operation to update attributes for contacts that occurred prior to the release of the API, September 12, 2018. You can update attributes only for contacts that started after the release of the API. If you attempt to update attributes for a contact that occurred prior to the release of the API, a 400 error is returned. This applies also to queued callbacks that were initiated prior to the release of the API but are still active in your instance.
    public func updateContactAttributes(_ input: UpdateContactAttributesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateContactAttributesResponse> {
        return self.client.execute(operation: "UpdateContactAttributes", path: "/contact/attributes", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Assigns the specified hierarchy group to the specified user.
    @discardableResult public func updateUserHierarchy(_ input: UpdateUserHierarchyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateUserHierarchy", path: "/users/{InstanceId}/{UserId}/hierarchy", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the identity information for the specified user.
    @discardableResult public func updateUserIdentityInfo(_ input: UpdateUserIdentityInfoRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateUserIdentityInfo", path: "/users/{InstanceId}/{UserId}/identity-info", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the phone configuration settings for the specified user.
    @discardableResult public func updateUserPhoneConfig(_ input: UpdateUserPhoneConfigRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateUserPhoneConfig", path: "/users/{InstanceId}/{UserId}/phone-config", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Assigns the specified routing profile to the specified user.
    @discardableResult public func updateUserRoutingProfile(_ input: UpdateUserRoutingProfileRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateUserRoutingProfile", path: "/users/{InstanceId}/{UserId}/routing-profile", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Assigns the specified security profiles to the specified user.
    @discardableResult public func updateUserSecurityProfiles(_ input: UpdateUserSecurityProfilesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateUserSecurityProfiles", path: "/users/{InstanceId}/{UserId}/security-profiles", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }
}
