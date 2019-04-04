// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Elemental MediaPackage
*/
public struct MediaPackage {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "mediapackage",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-10-12",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [MediaPackageErrorType.self]
        )
    }

    ///  Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
    public func rotateIngestEndpointCredentials(_ input: RotateIngestEndpointCredentialsRequest) throws -> EventLoopFuture<RotateIngestEndpointCredentialsResponse> {
        return try client.send(operation: "RotateIngestEndpointCredentials", path: "/channels/{id}/ingest_endpoints/{ingest_endpoint_id}/credentials", httpMethod: "PUT", input: input)
    }

    ///  Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead
    public func rotateChannelCredentials(_ input: RotateChannelCredentialsRequest) throws -> EventLoopFuture<RotateChannelCredentialsResponse> {
        return try client.send(operation: "RotateChannelCredentials", path: "/channels/{id}/credentials", httpMethod: "PUT", input: input)
    }

    ///  Returns a collection of Channels.
    public func listChannels(_ input: ListChannelsRequest) throws -> EventLoopFuture<ListChannelsResponse> {
        return try client.send(operation: "ListChannels", path: "/channels", httpMethod: "GET", input: input)
    }

    ///  Creates a new OriginEndpoint record.
    public func createOriginEndpoint(_ input: CreateOriginEndpointRequest) throws -> EventLoopFuture<CreateOriginEndpointResponse> {
        return try client.send(operation: "CreateOriginEndpoint", path: "/origin_endpoints", httpMethod: "POST", input: input)
    }

    ///  Updates an existing OriginEndpoint.
    public func updateOriginEndpoint(_ input: UpdateOriginEndpointRequest) throws -> EventLoopFuture<UpdateOriginEndpointResponse> {
        return try client.send(operation: "UpdateOriginEndpoint", path: "/origin_endpoints/{id}", httpMethod: "PUT", input: input)
    }

    ///  Gets details about a Channel.
    public func describeChannel(_ input: DescribeChannelRequest) throws -> EventLoopFuture<DescribeChannelResponse> {
        return try client.send(operation: "DescribeChannel", path: "/channels/{id}", httpMethod: "GET", input: input)
    }

    ///  Returns a collection of OriginEndpoint records.
    public func listOriginEndpoints(_ input: ListOriginEndpointsRequest) throws -> EventLoopFuture<ListOriginEndpointsResponse> {
        return try client.send(operation: "ListOriginEndpoints", path: "/origin_endpoints", httpMethod: "GET", input: input)
    }

    ///  Updates an existing Channel.
    public func updateChannel(_ input: UpdateChannelRequest) throws -> EventLoopFuture<UpdateChannelResponse> {
        return try client.send(operation: "UpdateChannel", path: "/channels/{id}", httpMethod: "PUT", input: input)
    }

    ///  Gets details about an existing OriginEndpoint.
    public func describeOriginEndpoint(_ input: DescribeOriginEndpointRequest) throws -> EventLoopFuture<DescribeOriginEndpointResponse> {
        return try client.send(operation: "DescribeOriginEndpoint", path: "/origin_endpoints/{id}", httpMethod: "GET", input: input)
    }

    ///  Deletes an existing Channel.
    public func deleteChannel(_ input: DeleteChannelRequest) throws -> EventLoopFuture<DeleteChannelResponse> {
        return try client.send(operation: "DeleteChannel", path: "/channels/{id}", httpMethod: "DELETE", input: input)
    }

    ///  Creates a new Channel.
    public func createChannel(_ input: CreateChannelRequest) throws -> EventLoopFuture<CreateChannelResponse> {
        return try client.send(operation: "CreateChannel", path: "/channels", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing OriginEndpoint.
    public func deleteOriginEndpoint(_ input: DeleteOriginEndpointRequest) throws -> EventLoopFuture<DeleteOriginEndpointResponse> {
        return try client.send(operation: "DeleteOriginEndpoint", path: "/origin_endpoints/{id}", httpMethod: "DELETE", input: input)
    }


}