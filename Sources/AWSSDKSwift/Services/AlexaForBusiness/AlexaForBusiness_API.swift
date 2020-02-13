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
import Foundation
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
    ///     - httpClientProvider: HTTPClient to use. Use `useAWSClientShared` if the client shall manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AlexaForBusiness",
            service: "a4b",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-11-09",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [AlexaForBusinessErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Associates a skill with the organization under the customer's AWS account. If a skill is private, the user implicitly accepts access to this skill during enablement.
    public func approveSkill(_ input: ApproveSkillRequest) -> EventLoopFuture<ApproveSkillResponse> {
        return client.send(operation: "ApproveSkill", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a contact with a given address book.
    public func associateContactWithAddressBook(_ input: AssociateContactWithAddressBookRequest) -> EventLoopFuture<AssociateContactWithAddressBookResponse> {
        return client.send(operation: "AssociateContactWithAddressBook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a device with the specified network profile.
    public func associateDeviceWithNetworkProfile(_ input: AssociateDeviceWithNetworkProfileRequest) -> EventLoopFuture<AssociateDeviceWithNetworkProfileResponse> {
        return client.send(operation: "AssociateDeviceWithNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a device with a given room. This applies all the settings from the room profile to the device, and all the skills in any skill groups added to that room. This operation requires the device to be online, or else a manual sync is required. 
    public func associateDeviceWithRoom(_ input: AssociateDeviceWithRoomRequest) -> EventLoopFuture<AssociateDeviceWithRoomResponse> {
        return client.send(operation: "AssociateDeviceWithRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a skill group with a given room. This enables all skills in the associated skill group on all devices in the room.
    public func associateSkillGroupWithRoom(_ input: AssociateSkillGroupWithRoomRequest) -> EventLoopFuture<AssociateSkillGroupWithRoomResponse> {
        return client.send(operation: "AssociateSkillGroupWithRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a skill with a skill group.
    public func associateSkillWithSkillGroup(_ input: AssociateSkillWithSkillGroupRequest) -> EventLoopFuture<AssociateSkillWithSkillGroupResponse> {
        return client.send(operation: "AssociateSkillWithSkillGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Makes a private skill available for enrolled users to enable on their devices.
    public func associateSkillWithUsers(_ input: AssociateSkillWithUsersRequest) -> EventLoopFuture<AssociateSkillWithUsersResponse> {
        return client.send(operation: "AssociateSkillWithUsers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an address book with the specified details.
    public func createAddressBook(_ input: CreateAddressBookRequest) -> EventLoopFuture<CreateAddressBookResponse> {
        return client.send(operation: "CreateAddressBook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a recurring schedule for usage reports to deliver to the specified S3 location with a specified daily or weekly interval.
    public func createBusinessReportSchedule(_ input: CreateBusinessReportScheduleRequest) -> EventLoopFuture<CreateBusinessReportScheduleResponse> {
        return client.send(operation: "CreateBusinessReportSchedule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds a new conference provider under the user's AWS account.
    public func createConferenceProvider(_ input: CreateConferenceProviderRequest) -> EventLoopFuture<CreateConferenceProviderResponse> {
        return client.send(operation: "CreateConferenceProvider", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a contact with the specified details.
    public func createContact(_ input: CreateContactRequest) -> EventLoopFuture<CreateContactResponse> {
        return client.send(operation: "CreateContact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a gateway group with the specified details.
    public func createGatewayGroup(_ input: CreateGatewayGroupRequest) -> EventLoopFuture<CreateGatewayGroupResponse> {
        return client.send(operation: "CreateGatewayGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a network profile with the specified details.
    public func createNetworkProfile(_ input: CreateNetworkProfileRequest) -> EventLoopFuture<CreateNetworkProfileResponse> {
        return client.send(operation: "CreateNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new room profile with the specified details.
    public func createProfile(_ input: CreateProfileRequest) -> EventLoopFuture<CreateProfileResponse> {
        return client.send(operation: "CreateProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a room with the specified details.
    public func createRoom(_ input: CreateRoomRequest) -> EventLoopFuture<CreateRoomResponse> {
        return client.send(operation: "CreateRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a skill group with a specified name and description.
    public func createSkillGroup(_ input: CreateSkillGroupRequest) -> EventLoopFuture<CreateSkillGroupResponse> {
        return client.send(operation: "CreateSkillGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a user.
    public func createUser(_ input: CreateUserRequest) -> EventLoopFuture<CreateUserResponse> {
        return client.send(operation: "CreateUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an address book by the address book ARN.
    public func deleteAddressBook(_ input: DeleteAddressBookRequest) -> EventLoopFuture<DeleteAddressBookResponse> {
        return client.send(operation: "DeleteAddressBook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the recurring report delivery schedule with the specified schedule ARN.
    public func deleteBusinessReportSchedule(_ input: DeleteBusinessReportScheduleRequest) -> EventLoopFuture<DeleteBusinessReportScheduleResponse> {
        return client.send(operation: "DeleteBusinessReportSchedule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a conference provider.
    public func deleteConferenceProvider(_ input: DeleteConferenceProviderRequest) -> EventLoopFuture<DeleteConferenceProviderResponse> {
        return client.send(operation: "DeleteConferenceProvider", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a contact by the contact ARN.
    public func deleteContact(_ input: DeleteContactRequest) -> EventLoopFuture<DeleteContactResponse> {
        return client.send(operation: "DeleteContact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a device from Alexa For Business.
    public func deleteDevice(_ input: DeleteDeviceRequest) -> EventLoopFuture<DeleteDeviceResponse> {
        return client.send(operation: "DeleteDevice", path: "/", httpMethod: "POST", input: input)
    }

    ///  When this action is called for a specified shared device, it allows authorized users to delete the device's entire previous history of voice input data and associated response data. This action can be called once every 24 hours for a specific shared device.
    public func deleteDeviceUsageData(_ input: DeleteDeviceUsageDataRequest) -> EventLoopFuture<DeleteDeviceUsageDataResponse> {
        return client.send(operation: "DeleteDeviceUsageData", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a gateway group.
    public func deleteGatewayGroup(_ input: DeleteGatewayGroupRequest) -> EventLoopFuture<DeleteGatewayGroupResponse> {
        return client.send(operation: "DeleteGatewayGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a network profile by the network profile ARN.
    public func deleteNetworkProfile(_ input: DeleteNetworkProfileRequest) -> EventLoopFuture<DeleteNetworkProfileResponse> {
        return client.send(operation: "DeleteNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a room profile by the profile ARN.
    public func deleteProfile(_ input: DeleteProfileRequest) -> EventLoopFuture<DeleteProfileResponse> {
        return client.send(operation: "DeleteProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a room by the room ARN.
    public func deleteRoom(_ input: DeleteRoomRequest) -> EventLoopFuture<DeleteRoomResponse> {
        return client.send(operation: "DeleteRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes room skill parameter details by room, skill, and parameter key ID.
    public func deleteRoomSkillParameter(_ input: DeleteRoomSkillParameterRequest) -> EventLoopFuture<DeleteRoomSkillParameterResponse> {
        return client.send(operation: "DeleteRoomSkillParameter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Unlinks a third-party account from a skill.
    public func deleteSkillAuthorization(_ input: DeleteSkillAuthorizationRequest) -> EventLoopFuture<DeleteSkillAuthorizationResponse> {
        return client.send(operation: "DeleteSkillAuthorization", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a skill group by skill group ARN.
    public func deleteSkillGroup(_ input: DeleteSkillGroupRequest) -> EventLoopFuture<DeleteSkillGroupResponse> {
        return client.send(operation: "DeleteSkillGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified user by user ARN and enrollment ARN.
    public func deleteUser(_ input: DeleteUserRequest) -> EventLoopFuture<DeleteUserResponse> {
        return client.send(operation: "DeleteUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a contact from a given address book.
    public func disassociateContactFromAddressBook(_ input: DisassociateContactFromAddressBookRequest) -> EventLoopFuture<DisassociateContactFromAddressBookResponse> {
        return client.send(operation: "DisassociateContactFromAddressBook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a device from its current room. The device continues to be connected to the Wi-Fi network and is still registered to the account. The device settings and skills are removed from the room.
    public func disassociateDeviceFromRoom(_ input: DisassociateDeviceFromRoomRequest) -> EventLoopFuture<DisassociateDeviceFromRoomResponse> {
        return client.send(operation: "DisassociateDeviceFromRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a skill from a skill group.
    public func disassociateSkillFromSkillGroup(_ input: DisassociateSkillFromSkillGroupRequest) -> EventLoopFuture<DisassociateSkillFromSkillGroupResponse> {
        return client.send(operation: "DisassociateSkillFromSkillGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Makes a private skill unavailable for enrolled users and prevents them from enabling it on their devices.
    public func disassociateSkillFromUsers(_ input: DisassociateSkillFromUsersRequest) -> EventLoopFuture<DisassociateSkillFromUsersResponse> {
        return client.send(operation: "DisassociateSkillFromUsers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a skill group from a specified room. This disables all skills in the skill group on all devices in the room.
    public func disassociateSkillGroupFromRoom(_ input: DisassociateSkillGroupFromRoomRequest) -> EventLoopFuture<DisassociateSkillGroupFromRoomResponse> {
        return client.send(operation: "DisassociateSkillGroupFromRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Forgets smart home appliances associated to a room.
    public func forgetSmartHomeAppliances(_ input: ForgetSmartHomeAppliancesRequest) -> EventLoopFuture<ForgetSmartHomeAppliancesResponse> {
        return client.send(operation: "ForgetSmartHomeAppliances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets address the book details by the address book ARN.
    public func getAddressBook(_ input: GetAddressBookRequest) -> EventLoopFuture<GetAddressBookResponse> {
        return client.send(operation: "GetAddressBook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the existing conference preferences.
    public func getConferencePreference(_ input: GetConferencePreferenceRequest) -> EventLoopFuture<GetConferencePreferenceResponse> {
        return client.send(operation: "GetConferencePreference", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets details about a specific conference provider.
    public func getConferenceProvider(_ input: GetConferenceProviderRequest) -> EventLoopFuture<GetConferenceProviderResponse> {
        return client.send(operation: "GetConferenceProvider", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the contact details by the contact ARN.
    public func getContact(_ input: GetContactRequest) -> EventLoopFuture<GetContactResponse> {
        return client.send(operation: "GetContact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the details of a device by device ARN.
    public func getDevice(_ input: GetDeviceRequest) -> EventLoopFuture<GetDeviceResponse> {
        return client.send(operation: "GetDevice", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the details of a gateway.
    public func getGateway(_ input: GetGatewayRequest) -> EventLoopFuture<GetGatewayResponse> {
        return client.send(operation: "GetGateway", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the details of a gateway group.
    public func getGatewayGroup(_ input: GetGatewayGroupRequest) -> EventLoopFuture<GetGatewayGroupResponse> {
        return client.send(operation: "GetGatewayGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the configured values for the user enrollment invitation email template.
    public func getInvitationConfiguration(_ input: GetInvitationConfigurationRequest) -> EventLoopFuture<GetInvitationConfigurationResponse> {
        return client.send(operation: "GetInvitationConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the network profile details by the network profile ARN.
    public func getNetworkProfile(_ input: GetNetworkProfileRequest) -> EventLoopFuture<GetNetworkProfileResponse> {
        return client.send(operation: "GetNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the details of a room profile by profile ARN.
    public func getProfile(_ input: GetProfileRequest) -> EventLoopFuture<GetProfileResponse> {
        return client.send(operation: "GetProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets room details by room ARN.
    public func getRoom(_ input: GetRoomRequest) -> EventLoopFuture<GetRoomResponse> {
        return client.send(operation: "GetRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets room skill parameter details by room, skill, and parameter key ARN.
    public func getRoomSkillParameter(_ input: GetRoomSkillParameterRequest) -> EventLoopFuture<GetRoomSkillParameterResponse> {
        return client.send(operation: "GetRoomSkillParameter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets skill group details by skill group ARN.
    public func getSkillGroup(_ input: GetSkillGroupRequest) -> EventLoopFuture<GetSkillGroupResponse> {
        return client.send(operation: "GetSkillGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the details of the schedules that a user configured. A download URL of the report associated with each schedule is returned every time this action is called. A new download URL is returned each time, and is valid for 24 hours.
    public func listBusinessReportSchedules(_ input: ListBusinessReportSchedulesRequest) -> EventLoopFuture<ListBusinessReportSchedulesResponse> {
        return client.send(operation: "ListBusinessReportSchedules", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists conference providers under a specific AWS account.
    public func listConferenceProviders(_ input: ListConferenceProvidersRequest) -> EventLoopFuture<ListConferenceProvidersResponse> {
        return client.send(operation: "ListConferenceProviders", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the device event history, including device connection status, for up to 30 days.
    public func listDeviceEvents(_ input: ListDeviceEventsRequest) -> EventLoopFuture<ListDeviceEventsResponse> {
        return client.send(operation: "ListDeviceEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of gateway group summaries. Use GetGatewayGroup to retrieve details of a specific gateway group.
    public func listGatewayGroups(_ input: ListGatewayGroupsRequest) -> EventLoopFuture<ListGatewayGroupsResponse> {
        return client.send(operation: "ListGatewayGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of gateway summaries. Use GetGateway to retrieve details of a specific gateway. An optional gateway group ARN can be provided to only retrieve gateway summaries of gateways that are associated with that gateway group ARN.
    public func listGateways(_ input: ListGatewaysRequest) -> EventLoopFuture<ListGatewaysResponse> {
        return client.send(operation: "ListGateways", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all enabled skills in a specific skill group.
    public func listSkills(_ input: ListSkillsRequest) -> EventLoopFuture<ListSkillsResponse> {
        return client.send(operation: "ListSkills", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all categories in the Alexa skill store.
    public func listSkillsStoreCategories(_ input: ListSkillsStoreCategoriesRequest) -> EventLoopFuture<ListSkillsStoreCategoriesResponse> {
        return client.send(operation: "ListSkillsStoreCategories", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all skills in the Alexa skill store by category.
    public func listSkillsStoreSkillsByCategory(_ input: ListSkillsStoreSkillsByCategoryRequest) -> EventLoopFuture<ListSkillsStoreSkillsByCategoryResponse> {
        return client.send(operation: "ListSkillsStoreSkillsByCategory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all of the smart home appliances associated with a room.
    public func listSmartHomeAppliances(_ input: ListSmartHomeAppliancesRequest) -> EventLoopFuture<ListSmartHomeAppliancesResponse> {
        return client.send(operation: "ListSmartHomeAppliances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all tags for the specified resource.
    public func listTags(_ input: ListTagsRequest) -> EventLoopFuture<ListTagsResponse> {
        return client.send(operation: "ListTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the conference preferences on a specific conference provider at the account level.
    public func putConferencePreference(_ input: PutConferencePreferenceRequest) -> EventLoopFuture<PutConferencePreferenceResponse> {
        return client.send(operation: "PutConferencePreference", path: "/", httpMethod: "POST", input: input)
    }

    ///  Configures the email template for the user enrollment invitation with the specified attributes.
    public func putInvitationConfiguration(_ input: PutInvitationConfigurationRequest) -> EventLoopFuture<PutInvitationConfigurationResponse> {
        return client.send(operation: "PutInvitationConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates room skill parameter details by room, skill, and parameter key ID. Not all skills have a room skill parameter.
    public func putRoomSkillParameter(_ input: PutRoomSkillParameterRequest) -> EventLoopFuture<PutRoomSkillParameterResponse> {
        return client.send(operation: "PutRoomSkillParameter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Links a user's account to a third-party skill provider. If this API operation is called by an assumed IAM role, the skill being linked must be a private skill. Also, the skill must be owned by the AWS account that assumed the IAM role.
    public func putSkillAuthorization(_ input: PutSkillAuthorizationRequest) -> EventLoopFuture<PutSkillAuthorizationResponse> {
        return client.send(operation: "PutSkillAuthorization", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers an Alexa-enabled device built by an Original Equipment Manufacturer (OEM) using Alexa Voice Service (AVS).
    public func registerAVSDevice(_ input: RegisterAVSDeviceRequest) -> EventLoopFuture<RegisterAVSDeviceResponse> {
        return client.send(operation: "RegisterAVSDevice", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a skill from the organization under a user's AWS account. If the skill is a private skill, it moves to an AcceptStatus of PENDING. Any private or public skill that is rejected can be added later by calling the ApproveSkill API. 
    public func rejectSkill(_ input: RejectSkillRequest) -> EventLoopFuture<RejectSkillResponse> {
        return client.send(operation: "RejectSkill", path: "/", httpMethod: "POST", input: input)
    }

    ///  Determines the details for the room from which a skill request was invoked. This operation is used by skill developers.
    public func resolveRoom(_ input: ResolveRoomRequest) -> EventLoopFuture<ResolveRoomResponse> {
        return client.send(operation: "ResolveRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Revokes an invitation and invalidates the enrollment URL.
    public func revokeInvitation(_ input: RevokeInvitationRequest) -> EventLoopFuture<RevokeInvitationResponse> {
        return client.send(operation: "RevokeInvitation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches address books and lists the ones that meet a set of filter and sort criteria.
    public func searchAddressBooks(_ input: SearchAddressBooksRequest) -> EventLoopFuture<SearchAddressBooksResponse> {
        return client.send(operation: "SearchAddressBooks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches contacts and lists the ones that meet a set of filter and sort criteria.
    public func searchContacts(_ input: SearchContactsRequest) -> EventLoopFuture<SearchContactsResponse> {
        return client.send(operation: "SearchContacts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches devices and lists the ones that meet a set of filter criteria.
    public func searchDevices(_ input: SearchDevicesRequest) -> EventLoopFuture<SearchDevicesResponse> {
        return client.send(operation: "SearchDevices", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches network profiles and lists the ones that meet a set of filter and sort criteria.
    public func searchNetworkProfiles(_ input: SearchNetworkProfilesRequest) -> EventLoopFuture<SearchNetworkProfilesResponse> {
        return client.send(operation: "SearchNetworkProfiles", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches room profiles and lists the ones that meet a set of filter criteria.
    public func searchProfiles(_ input: SearchProfilesRequest) -> EventLoopFuture<SearchProfilesResponse> {
        return client.send(operation: "SearchProfiles", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches rooms and lists the ones that meet a set of filter and sort criteria.
    public func searchRooms(_ input: SearchRoomsRequest) -> EventLoopFuture<SearchRoomsResponse> {
        return client.send(operation: "SearchRooms", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches skill groups and lists the ones that meet a set of filter and sort criteria.
    public func searchSkillGroups(_ input: SearchSkillGroupsRequest) -> EventLoopFuture<SearchSkillGroupsResponse> {
        return client.send(operation: "SearchSkillGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches users and lists the ones that meet a set of filter and sort criteria.
    public func searchUsers(_ input: SearchUsersRequest) -> EventLoopFuture<SearchUsersResponse> {
        return client.send(operation: "SearchUsers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Triggers an asynchronous flow to send text, SSML, or audio announcements to rooms that are identified by a search or filter. 
    public func sendAnnouncement(_ input: SendAnnouncementRequest) -> EventLoopFuture<SendAnnouncementResponse> {
        return client.send(operation: "SendAnnouncement", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sends an enrollment invitation email with a URL to a user. The URL is valid for 30 days or until you call this operation again, whichever comes first. 
    public func sendInvitation(_ input: SendInvitationRequest) -> EventLoopFuture<SendInvitationResponse> {
        return client.send(operation: "SendInvitation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Resets a device and its account to the known default settings. This clears all information and settings set by previous users in the following ways:   Bluetooth - This unpairs all bluetooth devices paired with your echo device.   Volume - This resets the echo device's volume to the default value.   Notifications - This clears all notifications from your echo device.   Lists - This clears all to-do items from your echo device.   Settings - This internally syncs the room's profile (if the device is assigned to a room), contacts, address books, delegation access for account linking, and communications (if enabled on the room profile).  
    public func startDeviceSync(_ input: StartDeviceSyncRequest) -> EventLoopFuture<StartDeviceSyncResponse> {
        return client.send(operation: "StartDeviceSync", path: "/", httpMethod: "POST", input: input)
    }

    ///  Initiates the discovery of any smart home appliances associated with the room.
    public func startSmartHomeApplianceDiscovery(_ input: StartSmartHomeApplianceDiscoveryRequest) -> EventLoopFuture<StartSmartHomeApplianceDiscoveryResponse> {
        return client.send(operation: "StartSmartHomeApplianceDiscovery", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds metadata tags to a specified resource.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes metadata tags from a specified resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates address book details by the address book ARN.
    public func updateAddressBook(_ input: UpdateAddressBookRequest) -> EventLoopFuture<UpdateAddressBookResponse> {
        return client.send(operation: "UpdateAddressBook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the configuration of the report delivery schedule with the specified schedule ARN.
    public func updateBusinessReportSchedule(_ input: UpdateBusinessReportScheduleRequest) -> EventLoopFuture<UpdateBusinessReportScheduleResponse> {
        return client.send(operation: "UpdateBusinessReportSchedule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an existing conference provider's settings.
    public func updateConferenceProvider(_ input: UpdateConferenceProviderRequest) -> EventLoopFuture<UpdateConferenceProviderResponse> {
        return client.send(operation: "UpdateConferenceProvider", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the contact details by the contact ARN.
    public func updateContact(_ input: UpdateContactRequest) -> EventLoopFuture<UpdateContactResponse> {
        return client.send(operation: "UpdateContact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the device name by device ARN.
    public func updateDevice(_ input: UpdateDeviceRequest) -> EventLoopFuture<UpdateDeviceResponse> {
        return client.send(operation: "UpdateDevice", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the details of a gateway. If any optional field is not provided, the existing corresponding value is left unmodified.
    public func updateGateway(_ input: UpdateGatewayRequest) -> EventLoopFuture<UpdateGatewayResponse> {
        return client.send(operation: "UpdateGateway", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the details of a gateway group. If any optional field is not provided, the existing corresponding value is left unmodified.
    public func updateGatewayGroup(_ input: UpdateGatewayGroupRequest) -> EventLoopFuture<UpdateGatewayGroupResponse> {
        return client.send(operation: "UpdateGatewayGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a network profile by the network profile ARN.
    public func updateNetworkProfile(_ input: UpdateNetworkProfileRequest) -> EventLoopFuture<UpdateNetworkProfileResponse> {
        return client.send(operation: "UpdateNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an existing room profile by room profile ARN.
    public func updateProfile(_ input: UpdateProfileRequest) -> EventLoopFuture<UpdateProfileResponse> {
        return client.send(operation: "UpdateProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates room details by room ARN.
    public func updateRoom(_ input: UpdateRoomRequest) -> EventLoopFuture<UpdateRoomResponse> {
        return client.send(operation: "UpdateRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates skill group details by skill group ARN.
    public func updateSkillGroup(_ input: UpdateSkillGroupRequest) -> EventLoopFuture<UpdateSkillGroupResponse> {
        return client.send(operation: "UpdateSkillGroup", path: "/", httpMethod: "POST", input: input)
    }
}
