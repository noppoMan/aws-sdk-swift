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
Client object for interacting with AWS MediaStoreData service.

An AWS Elemental MediaStore asset is an object, similar to an object in the Amazon S3 service. Objects are the fundamental entities that are stored in AWS Elemental MediaStore.
*/
public struct MediaStoreData {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the MediaStoreData client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "data.mediastore",
            signingName: "mediastore",
            serviceProtocol: .restjson,
            apiVersion: "2017-09-01",
            endpoint: endpoint,
            possibleErrorTypes: [MediaStoreDataErrorType.self]
        )
    }
    
    //MARK: API Calls

    ///  Deletes an object at the specified path.
    public func deleteObject(_ input: DeleteObjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteObjectResponse> {
        return client.execute(operation: "DeleteObject", path: "/{Path+}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets the headers for an object at the specified path.
    public func describeObject(_ input: DescribeObjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeObjectResponse> {
        return client.execute(operation: "DescribeObject", path: "/{Path+}", httpMethod: "HEAD", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Downloads the object at the specified path. If the object’s upload availability is set to streaming, AWS Elemental MediaStore downloads the object even if it’s still uploading the object.
    public func getObject(_ input: GetObjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetObjectResponse> {
        return client.execute(operation: "GetObject", path: "/{Path+}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provides a list of metadata entries about folders and objects in the specified folder.
    public func listItems(_ input: ListItemsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListItemsResponse> {
        return client.execute(operation: "ListItems", path: "/", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Uploads an object to the specified path. Object sizes are limited to 25 MB for standard upload availability and 10 MB for streaming upload availability.
    public func putObject(_ input: PutObjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutObjectResponse> {
        return client.execute(operation: "PutObject", path: "/{Path+}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    //MARK: Streaming API Calls

    ///  Downloads the object at the specified path. If the object’s upload availability is set to streaming, AWS Elemental MediaStore downloads the object even if it’s still uploading the object.
    public func getObjectStreaming(_ input: GetObjectRequest, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop)->EventLoopFuture<Void>) -> EventLoopFuture<GetObjectResponse> {
        return client.execute(operation: "GetObject", path: "/{Path+}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop, stream: stream)
    }
}
