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
Client object for interacting with AWS MQ service.

Amazon MQ is a managed message broker service for Apache ActiveMQ that makes it easy to set up and operate message brokers in the cloud. A message broker allows software applications and components to communicate using various programming languages, operating systems, and formal messaging protocols.
*/
public struct MQ {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the MQ client
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
            service: "mq",
            serviceProtocol: .restjson,
            apiVersion: "2017-11-27",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MQErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a broker. Note: This API is asynchronous.
    public func createBroker(_ input: CreateBrokerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBrokerResponse> {
        return client.send(operation: "CreateBroker", path: "/v1/brokers", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).
    public func createConfiguration(_ input: CreateConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConfigurationResponse> {
        return client.send(operation: "CreateConfiguration", path: "/v1/configurations", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Add a tag to a resource.
    @discardableResult public func createTags(_ input: CreateTagsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "CreateTags", path: "/v1/tags/{resource-arn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an ActiveMQ user.
    public func createUser(_ input: CreateUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        return client.send(operation: "CreateUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a broker. Note: This API is asynchronous.
    public func deleteBroker(_ input: DeleteBrokerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBrokerResponse> {
        return client.send(operation: "DeleteBroker", path: "/v1/brokers/{broker-id}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Removes a tag from a resource.
    @discardableResult public func deleteTags(_ input: DeleteTagsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteTags", path: "/v1/tags/{resource-arn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an ActiveMQ user.
    public func deleteUser(_ input: DeleteUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserResponse> {
        return client.send(operation: "DeleteUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Returns information about the specified broker.
    public func describeBroker(_ input: DescribeBrokerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBrokerResponse> {
        return client.send(operation: "DescribeBroker", path: "/v1/brokers/{broker-id}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describe available engine types and versions.
    public func describeBrokerEngineTypes(_ input: DescribeBrokerEngineTypesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBrokerEngineTypesResponse> {
        return client.send(operation: "DescribeBrokerEngineTypes", path: "/v1/broker-engine-types", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describe available broker instance options.
    public func describeBrokerInstanceOptions(_ input: DescribeBrokerInstanceOptionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBrokerInstanceOptionsResponse> {
        return client.send(operation: "DescribeBrokerInstanceOptions", path: "/v1/broker-instance-options", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns information about the specified configuration.
    public func describeConfiguration(_ input: DescribeConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigurationResponse> {
        return client.send(operation: "DescribeConfiguration", path: "/v1/configurations/{configuration-id}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns the specified configuration revision for the specified configuration.
    public func describeConfigurationRevision(_ input: DescribeConfigurationRevisionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigurationRevisionResponse> {
        return client.send(operation: "DescribeConfigurationRevision", path: "/v1/configurations/{configuration-id}/revisions/{configuration-revision}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns information about an ActiveMQ user.
    public func describeUser(_ input: DescribeUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResponse> {
        return client.send(operation: "DescribeUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of all brokers.
    public func listBrokers(_ input: ListBrokersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBrokersResponse> {
        return client.send(operation: "ListBrokers", path: "/v1/brokers", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of all revisions for the specified configuration.
    public func listConfigurationRevisions(_ input: ListConfigurationRevisionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConfigurationRevisionsResponse> {
        return client.send(operation: "ListConfigurationRevisions", path: "/v1/configurations/{configuration-id}/revisions", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of all configurations.
    public func listConfigurations(_ input: ListConfigurationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConfigurationsResponse> {
        return client.send(operation: "ListConfigurations", path: "/v1/configurations", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists tags for a resource.
    public func listTags(_ input: ListTagsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsResponse> {
        return client.send(operation: "ListTags", path: "/v1/tags/{resource-arn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of all ActiveMQ users.
    public func listUsers(_ input: ListUsersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersResponse> {
        return client.send(operation: "ListUsers", path: "/v1/brokers/{broker-id}/users", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Reboots a broker. Note: This API is asynchronous.
    public func rebootBroker(_ input: RebootBrokerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RebootBrokerResponse> {
        return client.send(operation: "RebootBroker", path: "/v1/brokers/{broker-id}/reboot", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds a pending configuration change to a broker.
    public func updateBroker(_ input: UpdateBrokerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBrokerResponse> {
        return client.send(operation: "UpdateBroker", path: "/v1/brokers/{broker-id}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates the specified configuration.
    public func updateConfiguration(_ input: UpdateConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateConfigurationResponse> {
        return client.send(operation: "UpdateConfiguration", path: "/v1/configurations/{configuration-id}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates the information for an ActiveMQ user.
    public func updateUser(_ input: UpdateUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateUserResponse> {
        return client.send(operation: "UpdateUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: "PUT", input: input, on: eventLoop)
    }
}
