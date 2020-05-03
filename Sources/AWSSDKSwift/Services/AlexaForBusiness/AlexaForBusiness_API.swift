//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS AlexaForBusiness service.

Alexa for Business helps you use Alexa in your organization. Alexa for Business provides you with the tools to manage Alexa devices, enroll your users, and assign skills, at scale. You can build your own context-aware voice skills using the Alexa Skills Kit and the Alexa for Business API operations. You can also make these available as private skills for your organization. Alexa for Business makes it efficient to voice-enable your products and services, thus providing context-aware voice experiences for your customers. Device makers building with the Alexa Voice Service (AVS) can create fully integrated solutions, register their products with Alexa for Business, and manage them as shared devices in their organization. 
*/
public struct AlexaForBusiness {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the AlexaForBusiness client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? .aws,
            amzTarget: "AlexaForBusiness",
            service: "a4b",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-11-09",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [AlexaForBusinessErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Associates a skill with the organization under the customer's AWS account. If a skill is private, the user implicitly accepts access to this skill during enablement.
    public func approveSkill(_ input: ApproveSkillRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApproveSkillResponse> {
        return client.send(operation: "ApproveSkill", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates a contact with a given address book.
    public func associateContactWithAddressBook(_ input: AssociateContactWithAddressBookRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateContactWithAddressBookResponse> {
        return client.send(operation: "AssociateContactWithAddressBook", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates a device with the specified network profile.
    public func associateDeviceWithNetworkProfile(_ input: AssociateDeviceWithNetworkProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateDeviceWithNetworkProfileResponse> {
        return client.send(operation: "AssociateDeviceWithNetworkProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates a device with a given room. This applies all the settings from the room profile to the device, and all the skills in any skill groups added to that room. This operation requires the device to be online, or else a manual sync is required. 
    public func associateDeviceWithRoom(_ input: AssociateDeviceWithRoomRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateDeviceWithRoomResponse> {
        return client.send(operation: "AssociateDeviceWithRoom", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates a skill group with a given room. This enables all skills in the associated skill group on all devices in the room.
    public func associateSkillGroupWithRoom(_ input: AssociateSkillGroupWithRoomRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateSkillGroupWithRoomResponse> {
        return client.send(operation: "AssociateSkillGroupWithRoom", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates a skill with a skill group.
    public func associateSkillWithSkillGroup(_ input: AssociateSkillWithSkillGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateSkillWithSkillGroupResponse> {
        return client.send(operation: "AssociateSkillWithSkillGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Makes a private skill available for enrolled users to enable on their devices.
    public func associateSkillWithUsers(_ input: AssociateSkillWithUsersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateSkillWithUsersResponse> {
        return client.send(operation: "AssociateSkillWithUsers", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an address book with the specified details.
    public func createAddressBook(_ input: CreateAddressBookRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAddressBookResponse> {
        return client.send(operation: "CreateAddressBook", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a recurring schedule for usage reports to deliver to the specified S3 location with a specified daily or weekly interval.
    public func createBusinessReportSchedule(_ input: CreateBusinessReportScheduleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBusinessReportScheduleResponse> {
        return client.send(operation: "CreateBusinessReportSchedule", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds a new conference provider under the user's AWS account.
    public func createConferenceProvider(_ input: CreateConferenceProviderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConferenceProviderResponse> {
        return client.send(operation: "CreateConferenceProvider", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a contact with the specified details.
    public func createContact(_ input: CreateContactRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateContactResponse> {
        return client.send(operation: "CreateContact", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a gateway group with the specified details.
    public func createGatewayGroup(_ input: CreateGatewayGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGatewayGroupResponse> {
        return client.send(operation: "CreateGatewayGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a network profile with the specified details.
    public func createNetworkProfile(_ input: CreateNetworkProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNetworkProfileResponse> {
        return client.send(operation: "CreateNetworkProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new room profile with the specified details.
    public func createProfile(_ input: CreateProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProfileResponse> {
        return client.send(operation: "CreateProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a room with the specified details.
    public func createRoom(_ input: CreateRoomRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRoomResponse> {
        return client.send(operation: "CreateRoom", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a skill group with a specified name and description.
    public func createSkillGroup(_ input: CreateSkillGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSkillGroupResponse> {
        return client.send(operation: "CreateSkillGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a user.
    public func createUser(_ input: CreateUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        return client.send(operation: "CreateUser", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an address book by the address book ARN.
    public func deleteAddressBook(_ input: DeleteAddressBookRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAddressBookResponse> {
        return client.send(operation: "DeleteAddressBook", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the recurring report delivery schedule with the specified schedule ARN.
    public func deleteBusinessReportSchedule(_ input: DeleteBusinessReportScheduleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBusinessReportScheduleResponse> {
        return client.send(operation: "DeleteBusinessReportSchedule", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a conference provider.
    public func deleteConferenceProvider(_ input: DeleteConferenceProviderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConferenceProviderResponse> {
        return client.send(operation: "DeleteConferenceProvider", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a contact by the contact ARN.
    public func deleteContact(_ input: DeleteContactRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteContactResponse> {
        return client.send(operation: "DeleteContact", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes a device from Alexa For Business.
    public func deleteDevice(_ input: DeleteDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceResponse> {
        return client.send(operation: "DeleteDevice", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  When this action is called for a specified shared device, it allows authorized users to delete the device's entire previous history of voice input data and associated response data. This action can be called once every 24 hours for a specific shared device.
    public func deleteDeviceUsageData(_ input: DeleteDeviceUsageDataRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceUsageDataResponse> {
        return client.send(operation: "DeleteDeviceUsageData", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a gateway group.
    public func deleteGatewayGroup(_ input: DeleteGatewayGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGatewayGroupResponse> {
        return client.send(operation: "DeleteGatewayGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a network profile by the network profile ARN.
    public func deleteNetworkProfile(_ input: DeleteNetworkProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNetworkProfileResponse> {
        return client.send(operation: "DeleteNetworkProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a room profile by the profile ARN.
    public func deleteProfile(_ input: DeleteProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProfileResponse> {
        return client.send(operation: "DeleteProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a room by the room ARN.
    public func deleteRoom(_ input: DeleteRoomRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRoomResponse> {
        return client.send(operation: "DeleteRoom", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes room skill parameter details by room, skill, and parameter key ID.
    public func deleteRoomSkillParameter(_ input: DeleteRoomSkillParameterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRoomSkillParameterResponse> {
        return client.send(operation: "DeleteRoomSkillParameter", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Unlinks a third-party account from a skill.
    public func deleteSkillAuthorization(_ input: DeleteSkillAuthorizationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSkillAuthorizationResponse> {
        return client.send(operation: "DeleteSkillAuthorization", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a skill group by skill group ARN.
    public func deleteSkillGroup(_ input: DeleteSkillGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSkillGroupResponse> {
        return client.send(operation: "DeleteSkillGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a specified user by user ARN and enrollment ARN.
    public func deleteUser(_ input: DeleteUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserResponse> {
        return client.send(operation: "DeleteUser", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates a contact from a given address book.
    public func disassociateContactFromAddressBook(_ input: DisassociateContactFromAddressBookRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateContactFromAddressBookResponse> {
        return client.send(operation: "DisassociateContactFromAddressBook", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates a device from its current room. The device continues to be connected to the Wi-Fi network and is still registered to the account. The device settings and skills are removed from the room.
    public func disassociateDeviceFromRoom(_ input: DisassociateDeviceFromRoomRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateDeviceFromRoomResponse> {
        return client.send(operation: "DisassociateDeviceFromRoom", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates a skill from a skill group.
    public func disassociateSkillFromSkillGroup(_ input: DisassociateSkillFromSkillGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateSkillFromSkillGroupResponse> {
        return client.send(operation: "DisassociateSkillFromSkillGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Makes a private skill unavailable for enrolled users and prevents them from enabling it on their devices.
    public func disassociateSkillFromUsers(_ input: DisassociateSkillFromUsersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateSkillFromUsersResponse> {
        return client.send(operation: "DisassociateSkillFromUsers", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates a skill group from a specified room. This disables all skills in the skill group on all devices in the room.
    public func disassociateSkillGroupFromRoom(_ input: DisassociateSkillGroupFromRoomRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateSkillGroupFromRoomResponse> {
        return client.send(operation: "DisassociateSkillGroupFromRoom", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Forgets smart home appliances associated to a room.
    public func forgetSmartHomeAppliances(_ input: ForgetSmartHomeAppliancesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ForgetSmartHomeAppliancesResponse> {
        return client.send(operation: "ForgetSmartHomeAppliances", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets address the book details by the address book ARN.
    public func getAddressBook(_ input: GetAddressBookRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAddressBookResponse> {
        return client.send(operation: "GetAddressBook", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the existing conference preferences.
    public func getConferencePreference(_ input: GetConferencePreferenceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetConferencePreferenceResponse> {
        return client.send(operation: "GetConferencePreference", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets details about a specific conference provider.
    public func getConferenceProvider(_ input: GetConferenceProviderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetConferenceProviderResponse> {
        return client.send(operation: "GetConferenceProvider", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the contact details by the contact ARN.
    public func getContact(_ input: GetContactRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetContactResponse> {
        return client.send(operation: "GetContact", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the details of a device by device ARN.
    public func getDevice(_ input: GetDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceResponse> {
        return client.send(operation: "GetDevice", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the details of a gateway.
    public func getGateway(_ input: GetGatewayRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGatewayResponse> {
        return client.send(operation: "GetGateway", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the details of a gateway group.
    public func getGatewayGroup(_ input: GetGatewayGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGatewayGroupResponse> {
        return client.send(operation: "GetGatewayGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the configured values for the user enrollment invitation email template.
    public func getInvitationConfiguration(_ input: GetInvitationConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetInvitationConfigurationResponse> {
        return client.send(operation: "GetInvitationConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the network profile details by the network profile ARN.
    public func getNetworkProfile(_ input: GetNetworkProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetNetworkProfileResponse> {
        return client.send(operation: "GetNetworkProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the details of a room profile by profile ARN.
    public func getProfile(_ input: GetProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetProfileResponse> {
        return client.send(operation: "GetProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets room details by room ARN.
    public func getRoom(_ input: GetRoomRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRoomResponse> {
        return client.send(operation: "GetRoom", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets room skill parameter details by room, skill, and parameter key ARN.
    public func getRoomSkillParameter(_ input: GetRoomSkillParameterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRoomSkillParameterResponse> {
        return client.send(operation: "GetRoomSkillParameter", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets skill group details by skill group ARN.
    public func getSkillGroup(_ input: GetSkillGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSkillGroupResponse> {
        return client.send(operation: "GetSkillGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the details of the schedules that a user configured. A download URL of the report associated with each schedule is returned every time this action is called. A new download URL is returned each time, and is valid for 24 hours.
    public func listBusinessReportSchedules(_ input: ListBusinessReportSchedulesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBusinessReportSchedulesResponse> {
        return client.send(operation: "ListBusinessReportSchedules", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists conference providers under a specific AWS account.
    public func listConferenceProviders(_ input: ListConferenceProvidersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConferenceProvidersResponse> {
        return client.send(operation: "ListConferenceProviders", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the device event history, including device connection status, for up to 30 days.
    public func listDeviceEvents(_ input: ListDeviceEventsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDeviceEventsResponse> {
        return client.send(operation: "ListDeviceEvents", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list of gateway group summaries. Use GetGatewayGroup to retrieve details of a specific gateway group.
    public func listGatewayGroups(_ input: ListGatewayGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListGatewayGroupsResponse> {
        return client.send(operation: "ListGatewayGroups", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list of gateway summaries. Use GetGateway to retrieve details of a specific gateway. An optional gateway group ARN can be provided to only retrieve gateway summaries of gateways that are associated with that gateway group ARN.
    public func listGateways(_ input: ListGatewaysRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListGatewaysResponse> {
        return client.send(operation: "ListGateways", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all enabled skills in a specific skill group.
    public func listSkills(_ input: ListSkillsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSkillsResponse> {
        return client.send(operation: "ListSkills", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all categories in the Alexa skill store.
    public func listSkillsStoreCategories(_ input: ListSkillsStoreCategoriesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSkillsStoreCategoriesResponse> {
        return client.send(operation: "ListSkillsStoreCategories", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all skills in the Alexa skill store by category.
    public func listSkillsStoreSkillsByCategory(_ input: ListSkillsStoreSkillsByCategoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSkillsStoreSkillsByCategoryResponse> {
        return client.send(operation: "ListSkillsStoreSkillsByCategory", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all of the smart home appliances associated with a room.
    public func listSmartHomeAppliances(_ input: ListSmartHomeAppliancesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSmartHomeAppliancesResponse> {
        return client.send(operation: "ListSmartHomeAppliances", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all tags for the specified resource.
    public func listTags(_ input: ListTagsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsResponse> {
        return client.send(operation: "ListTags", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Sets the conference preferences on a specific conference provider at the account level.
    public func putConferencePreference(_ input: PutConferencePreferenceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutConferencePreferenceResponse> {
        return client.send(operation: "PutConferencePreference", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Configures the email template for the user enrollment invitation with the specified attributes.
    public func putInvitationConfiguration(_ input: PutInvitationConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutInvitationConfigurationResponse> {
        return client.send(operation: "PutInvitationConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates room skill parameter details by room, skill, and parameter key ID. Not all skills have a room skill parameter.
    public func putRoomSkillParameter(_ input: PutRoomSkillParameterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutRoomSkillParameterResponse> {
        return client.send(operation: "PutRoomSkillParameter", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Links a user's account to a third-party skill provider. If this API operation is called by an assumed IAM role, the skill being linked must be a private skill. Also, the skill must be owned by the AWS account that assumed the IAM role.
    public func putSkillAuthorization(_ input: PutSkillAuthorizationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutSkillAuthorizationResponse> {
        return client.send(operation: "PutSkillAuthorization", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Registers an Alexa-enabled device built by an Original Equipment Manufacturer (OEM) using Alexa Voice Service (AVS).
    public func registerAVSDevice(_ input: RegisterAVSDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterAVSDeviceResponse> {
        return client.send(operation: "RegisterAVSDevice", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates a skill from the organization under a user's AWS account. If the skill is a private skill, it moves to an AcceptStatus of PENDING. Any private or public skill that is rejected can be added later by calling the ApproveSkill API. 
    public func rejectSkill(_ input: RejectSkillRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RejectSkillResponse> {
        return client.send(operation: "RejectSkill", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Determines the details for the room from which a skill request was invoked. This operation is used by skill developers.
    public func resolveRoom(_ input: ResolveRoomRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResolveRoomResponse> {
        return client.send(operation: "ResolveRoom", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Revokes an invitation and invalidates the enrollment URL.
    public func revokeInvitation(_ input: RevokeInvitationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeInvitationResponse> {
        return client.send(operation: "RevokeInvitation", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Searches address books and lists the ones that meet a set of filter and sort criteria.
    public func searchAddressBooks(_ input: SearchAddressBooksRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchAddressBooksResponse> {
        return client.send(operation: "SearchAddressBooks", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Searches contacts and lists the ones that meet a set of filter and sort criteria.
    public func searchContacts(_ input: SearchContactsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchContactsResponse> {
        return client.send(operation: "SearchContacts", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Searches devices and lists the ones that meet a set of filter criteria.
    public func searchDevices(_ input: SearchDevicesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchDevicesResponse> {
        return client.send(operation: "SearchDevices", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Searches network profiles and lists the ones that meet a set of filter and sort criteria.
    public func searchNetworkProfiles(_ input: SearchNetworkProfilesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchNetworkProfilesResponse> {
        return client.send(operation: "SearchNetworkProfiles", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Searches room profiles and lists the ones that meet a set of filter criteria.
    public func searchProfiles(_ input: SearchProfilesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchProfilesResponse> {
        return client.send(operation: "SearchProfiles", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Searches rooms and lists the ones that meet a set of filter and sort criteria.
    public func searchRooms(_ input: SearchRoomsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchRoomsResponse> {
        return client.send(operation: "SearchRooms", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Searches skill groups and lists the ones that meet a set of filter and sort criteria.
    public func searchSkillGroups(_ input: SearchSkillGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchSkillGroupsResponse> {
        return client.send(operation: "SearchSkillGroups", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Searches users and lists the ones that meet a set of filter and sort criteria.
    public func searchUsers(_ input: SearchUsersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchUsersResponse> {
        return client.send(operation: "SearchUsers", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Triggers an asynchronous flow to send text, SSML, or audio announcements to rooms that are identified by a search or filter. 
    public func sendAnnouncement(_ input: SendAnnouncementRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendAnnouncementResponse> {
        return client.send(operation: "SendAnnouncement", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Sends an enrollment invitation email with a URL to a user. The URL is valid for 30 days or until you call this operation again, whichever comes first. 
    public func sendInvitation(_ input: SendInvitationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendInvitationResponse> {
        return client.send(operation: "SendInvitation", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Resets a device and its account to the known default settings. This clears all information and settings set by previous users in the following ways:   Bluetooth - This unpairs all bluetooth devices paired with your echo device.   Volume - This resets the echo device's volume to the default value.   Notifications - This clears all notifications from your echo device.   Lists - This clears all to-do items from your echo device.   Settings - This internally syncs the room's profile (if the device is assigned to a room), contacts, address books, delegation access for account linking, and communications (if enabled on the room profile).  
    public func startDeviceSync(_ input: StartDeviceSyncRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartDeviceSyncResponse> {
        return client.send(operation: "StartDeviceSync", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Initiates the discovery of any smart home appliances associated with the room.
    public func startSmartHomeApplianceDiscovery(_ input: StartSmartHomeApplianceDiscoveryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartSmartHomeApplianceDiscoveryResponse> {
        return client.send(operation: "StartSmartHomeApplianceDiscovery", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds metadata tags to a specified resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes metadata tags from a specified resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates address book details by the address book ARN.
    public func updateAddressBook(_ input: UpdateAddressBookRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAddressBookResponse> {
        return client.send(operation: "UpdateAddressBook", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the configuration of the report delivery schedule with the specified schedule ARN.
    public func updateBusinessReportSchedule(_ input: UpdateBusinessReportScheduleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBusinessReportScheduleResponse> {
        return client.send(operation: "UpdateBusinessReportSchedule", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates an existing conference provider's settings.
    public func updateConferenceProvider(_ input: UpdateConferenceProviderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateConferenceProviderResponse> {
        return client.send(operation: "UpdateConferenceProvider", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the contact details by the contact ARN.
    public func updateContact(_ input: UpdateContactRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateContactResponse> {
        return client.send(operation: "UpdateContact", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the device name by device ARN.
    public func updateDevice(_ input: UpdateDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceResponse> {
        return client.send(operation: "UpdateDevice", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the details of a gateway. If any optional field is not provided, the existing corresponding value is left unmodified.
    public func updateGateway(_ input: UpdateGatewayRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGatewayResponse> {
        return client.send(operation: "UpdateGateway", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the details of a gateway group. If any optional field is not provided, the existing corresponding value is left unmodified.
    public func updateGatewayGroup(_ input: UpdateGatewayGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGatewayGroupResponse> {
        return client.send(operation: "UpdateGatewayGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates a network profile by the network profile ARN.
    public func updateNetworkProfile(_ input: UpdateNetworkProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateNetworkProfileResponse> {
        return client.send(operation: "UpdateNetworkProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates an existing room profile by room profile ARN.
    public func updateProfile(_ input: UpdateProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProfileResponse> {
        return client.send(operation: "UpdateProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates room details by room ARN.
    public func updateRoom(_ input: UpdateRoomRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRoomResponse> {
        return client.send(operation: "UpdateRoom", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates skill group details by skill group ARN.
    public func updateSkillGroup(_ input: UpdateSkillGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSkillGroupResponse> {
        return client.send(operation: "UpdateSkillGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
