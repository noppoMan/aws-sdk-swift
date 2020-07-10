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

/**
Client object for interacting with AWS MediaLive service.

API for AWS Elemental MediaLive
*/
public struct MediaLive {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the MediaLive client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "medialive",
            serviceProtocol: .restjson,
            apiVersion: "2017-10-14",
            endpoint: endpoint,
            possibleErrorTypes: [MediaLiveErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Update a channel schedule
    public func batchUpdateSchedule(_ input: BatchUpdateScheduleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchUpdateScheduleResponse> {
        return client.execute(operation: "BatchUpdateSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a new channel
    public func createChannel(_ input: CreateChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateChannelResponse> {
        return client.execute(operation: "CreateChannel", path: "/prod/channels", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Create an input
    public func createInput(_ input: CreateInputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInputResponse> {
        return client.execute(operation: "CreateInput", path: "/prod/inputs", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a Input Security Group
    public func createInputSecurityGroup(_ input: CreateInputSecurityGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInputSecurityGroupResponse> {
        return client.execute(operation: "CreateInputSecurityGroup", path: "/prod/inputSecurityGroups", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Create a new multiplex.
    public func createMultiplex(_ input: CreateMultiplexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMultiplexResponse> {
        return client.execute(operation: "CreateMultiplex", path: "/prod/multiplexes", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Create a new program in the multiplex.
    public func createMultiplexProgram(_ input: CreateMultiplexProgramRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMultiplexProgramResponse> {
        return client.execute(operation: "CreateMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Create tags for a resource
    @discardableResult public func createTags(_ input: CreateTagsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "CreateTags", path: "/prod/tags/{resource-arn}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Starts deletion of channel. The associated outputs are also deleted.
    public func deleteChannel(_ input: DeleteChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteChannelResponse> {
        return client.execute(operation: "DeleteChannel", path: "/prod/channels/{channelId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the input end point
    public func deleteInput(_ input: DeleteInputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInputResponse> {
        return client.execute(operation: "DeleteInput", path: "/prod/inputs/{inputId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes an Input Security Group
    public func deleteInputSecurityGroup(_ input: DeleteInputSecurityGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInputSecurityGroupResponse> {
        return client.execute(operation: "DeleteInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Delete a multiplex. The multiplex must be idle.
    public func deleteMultiplex(_ input: DeleteMultiplexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMultiplexResponse> {
        return client.execute(operation: "DeleteMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Delete a program from a multiplex.
    public func deleteMultiplexProgram(_ input: DeleteMultiplexProgramRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMultiplexProgramResponse> {
        return client.execute(operation: "DeleteMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Delete an expired reservation.
    public func deleteReservation(_ input: DeleteReservationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReservationResponse> {
        return client.execute(operation: "DeleteReservation", path: "/prod/reservations/{reservationId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Delete all schedule actions on a channel.
    public func deleteSchedule(_ input: DeleteScheduleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScheduleResponse> {
        return client.execute(operation: "DeleteSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes tags for a resource
    @discardableResult public func deleteTags(_ input: DeleteTagsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteTags", path: "/prod/tags/{resource-arn}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets details about a channel
    public func describeChannel(_ input: DescribeChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChannelResponse> {
        return client.execute(operation: "DescribeChannel", path: "/prod/channels/{channelId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Produces details about an input
    public func describeInput(_ input: DescribeInputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInputResponse> {
        return client.execute(operation: "DescribeInput", path: "/prod/inputs/{inputId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets the details for the input device
    public func describeInputDevice(_ input: DescribeInputDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInputDeviceResponse> {
        return client.execute(operation: "DescribeInputDevice", path: "/prod/inputDevices/{inputDeviceId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Produces a summary of an Input Security Group
    public func describeInputSecurityGroup(_ input: DescribeInputSecurityGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInputSecurityGroupResponse> {
        return client.execute(operation: "DescribeInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets details about a multiplex.
    public func describeMultiplex(_ input: DescribeMultiplexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMultiplexResponse> {
        return client.execute(operation: "DescribeMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Get the details for a program in a multiplex.
    public func describeMultiplexProgram(_ input: DescribeMultiplexProgramRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMultiplexProgramResponse> {
        return client.execute(operation: "DescribeMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Get details for an offering.
    public func describeOffering(_ input: DescribeOfferingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOfferingResponse> {
        return client.execute(operation: "DescribeOffering", path: "/prod/offerings/{offeringId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Get details for a reservation.
    public func describeReservation(_ input: DescribeReservationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReservationResponse> {
        return client.execute(operation: "DescribeReservation", path: "/prod/reservations/{reservationId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Get a channel schedule
    public func describeSchedule(_ input: DescribeScheduleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScheduleResponse> {
        return client.execute(operation: "DescribeSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Produces list of channels that have been created
    public func listChannels(_ input: ListChannelsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListChannelsResponse> {
        return client.execute(operation: "ListChannels", path: "/prod/channels", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  List input devices
    public func listInputDevices(_ input: ListInputDevicesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInputDevicesResponse> {
        return client.execute(operation: "ListInputDevices", path: "/prod/inputDevices", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Produces a list of Input Security Groups for an account
    public func listInputSecurityGroups(_ input: ListInputSecurityGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInputSecurityGroupsResponse> {
        return client.execute(operation: "ListInputSecurityGroups", path: "/prod/inputSecurityGroups", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Produces list of inputs that have been created
    public func listInputs(_ input: ListInputsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInputsResponse> {
        return client.execute(operation: "ListInputs", path: "/prod/inputs", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  List the programs that currently exist for a specific multiplex.
    public func listMultiplexPrograms(_ input: ListMultiplexProgramsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMultiplexProgramsResponse> {
        return client.execute(operation: "ListMultiplexPrograms", path: "/prod/multiplexes/{multiplexId}/programs", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieve a list of the existing multiplexes.
    public func listMultiplexes(_ input: ListMultiplexesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMultiplexesResponse> {
        return client.execute(operation: "ListMultiplexes", path: "/prod/multiplexes", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  List offerings available for purchase.
    public func listOfferings(_ input: ListOfferingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOfferingsResponse> {
        return client.execute(operation: "ListOfferings", path: "/prod/offerings", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  List purchased reservations.
    public func listReservations(_ input: ListReservationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListReservationsResponse> {
        return client.execute(operation: "ListReservations", path: "/prod/reservations", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Produces list of tags that have been created for a resource
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/prod/tags/{resource-arn}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Purchase an offering and create a reservation.
    public func purchaseOffering(_ input: PurchaseOfferingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PurchaseOfferingResponse> {
        return client.execute(operation: "PurchaseOffering", path: "/prod/offerings/{offeringId}/purchase", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Starts an existing channel
    public func startChannel(_ input: StartChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartChannelResponse> {
        return client.execute(operation: "StartChannel", path: "/prod/channels/{channelId}/start", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Start (run) the multiplex. Starting the multiplex does not start the channels. You must explicitly start each channel.
    public func startMultiplex(_ input: StartMultiplexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartMultiplexResponse> {
        return client.execute(operation: "StartMultiplex", path: "/prod/multiplexes/{multiplexId}/start", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Stops a running channel
    public func stopChannel(_ input: StopChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopChannelResponse> {
        return client.execute(operation: "StopChannel", path: "/prod/channels/{channelId}/stop", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Stops a running multiplex. If the multiplex isn't running, this action has no effect.
    public func stopMultiplex(_ input: StopMultiplexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopMultiplexResponse> {
        return client.execute(operation: "StopMultiplex", path: "/prod/multiplexes/{multiplexId}/stop", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a channel.
    public func updateChannel(_ input: UpdateChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateChannelResponse> {
        return client.execute(operation: "UpdateChannel", path: "/prod/channels/{channelId}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Changes the class of the channel.
    public func updateChannelClass(_ input: UpdateChannelClassRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateChannelClassResponse> {
        return client.execute(operation: "UpdateChannelClass", path: "/prod/channels/{channelId}/channelClass", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates an input.
    public func updateInput(_ input: UpdateInputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInputResponse> {
        return client.execute(operation: "UpdateInput", path: "/prod/inputs/{inputId}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the parameters for the input device.
    public func updateInputDevice(_ input: UpdateInputDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInputDeviceResponse> {
        return client.execute(operation: "UpdateInputDevice", path: "/prod/inputDevices/{inputDeviceId}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Update an Input Security Group's Whilelists.
    public func updateInputSecurityGroup(_ input: UpdateInputSecurityGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInputSecurityGroupResponse> {
        return client.execute(operation: "UpdateInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a multiplex.
    public func updateMultiplex(_ input: UpdateMultiplexRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMultiplexResponse> {
        return client.execute(operation: "UpdateMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Update a program in a multiplex.
    public func updateMultiplexProgram(_ input: UpdateMultiplexProgramRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMultiplexProgramResponse> {
        return client.execute(operation: "UpdateMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Update reservation.
    public func updateReservation(_ input: UpdateReservationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateReservationResponse> {
        return client.execute(operation: "UpdateReservation", path: "/prod/reservations/{reservationId}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
