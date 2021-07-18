//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS CloudDirectory service.
///
/// Amazon Cloud Directory Amazon Cloud Directory is a component of the AWS Directory Service that simplifies the development and management of cloud-scale web, mobile, and IoT applications. This guide describes the Cloud Directory operations that you can call programmatically and includes detailed information on data types and errors. For information about Cloud Directory features, see AWS Directory Service and the Amazon Cloud Directory Developer Guide.
public struct CloudDirectory: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CloudDirectory client
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
            service: "clouddirectory",
            serviceProtocol: .restjson,
            apiVersion: "2017-01-11",
            endpoint: endpoint,
            errorType: CloudDirectoryErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Adds a new Facet to an object. An object can have more than one facet applied on it.
    public func addFacetToObject(_ input: AddFacetToObjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddFacetToObjectResponse> {
        return self.client.execute(operation: "AddFacetToObject", path: "/amazonclouddirectory/2017-01-11/object/facets", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Copies the input published schema, at the specified version, into the Directory with the same name and version as that of the published schema.
    public func applySchema(_ input: ApplySchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplySchemaResponse> {
        return self.client.execute(operation: "ApplySchema", path: "/amazonclouddirectory/2017-01-11/schema/apply", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches an existing object to another object. An object can be accessed in two ways:   Using the path   Using ObjectIdentifier   
    public func attachObject(_ input: AttachObjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachObjectResponse> {
        return self.client.execute(operation: "AttachObject", path: "/amazonclouddirectory/2017-01-11/object/attach", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches a policy object to a regular object. An object can have a limited number of attached policies.
    public func attachPolicy(_ input: AttachPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachPolicyResponse> {
        return self.client.execute(operation: "AttachPolicy", path: "/amazonclouddirectory/2017-01-11/policy/attach", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches the specified object to the specified index.
    public func attachToIndex(_ input: AttachToIndexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachToIndexResponse> {
        return self.client.execute(operation: "AttachToIndex", path: "/amazonclouddirectory/2017-01-11/index/attach", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches a typed link to a specified source and target object. For more information, see Typed Links.
    public func attachTypedLink(_ input: AttachTypedLinkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachTypedLinkResponse> {
        return self.client.execute(operation: "AttachTypedLink", path: "/amazonclouddirectory/2017-01-11/typedlink/attach", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Performs all the read operations in a batch. 
    public func batchRead(_ input: BatchReadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchReadResponse> {
        return self.client.execute(operation: "BatchRead", path: "/amazonclouddirectory/2017-01-11/batchread", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Performs all the write operations in a batch. Either all the operations succeed or none.
    public func batchWrite(_ input: BatchWriteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchWriteResponse> {
        return self.client.execute(operation: "BatchWrite", path: "/amazonclouddirectory/2017-01-11/batchwrite", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Directory by copying the published schema into the directory. A directory cannot be created without a schema. You can also quickly create a directory using a managed schema, called the QuickStartSchema. For more information, see Managed Schema in the Amazon Cloud Directory Developer Guide.
    public func createDirectory(_ input: CreateDirectoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDirectoryResponse> {
        return self.client.execute(operation: "CreateDirectory", path: "/amazonclouddirectory/2017-01-11/directory/create", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Facet in a schema. Facet creation is allowed only in development or applied schemas.
    public func createFacet(_ input: CreateFacetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFacetResponse> {
        return self.client.execute(operation: "CreateFacet", path: "/amazonclouddirectory/2017-01-11/facet/create", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an index object. See Indexing and search for more information.
    public func createIndex(_ input: CreateIndexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIndexResponse> {
        return self.client.execute(operation: "CreateIndex", path: "/amazonclouddirectory/2017-01-11/index", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an object in a Directory. Additionally attaches the object to a parent, if a parent reference and LinkName is specified. An object is simply a collection of Facet attributes. You can also use this API call to create a policy object, if the facet from which you create the object is a policy facet. 
    public func createObject(_ input: CreateObjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateObjectResponse> {
        return self.client.execute(operation: "CreateObject", path: "/amazonclouddirectory/2017-01-11/object", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new schema in a development state. A schema can exist in three phases:    Development: This is a mutable phase of the schema. All new schemas are in the development phase. Once the schema is finalized, it can be published.    Published: Published schemas are immutable and have a version associated with them.    Applied: Applied schemas are mutable in a way that allows you to add new schema facets. You can also add new, nonrequired attributes to existing schema facets. You can apply only published schemas to directories.   
    public func createSchema(_ input: CreateSchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSchemaResponse> {
        return self.client.execute(operation: "CreateSchema", path: "/amazonclouddirectory/2017-01-11/schema/create", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a TypedLinkFacet. For more information, see Typed Links.
    public func createTypedLinkFacet(_ input: CreateTypedLinkFacetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTypedLinkFacetResponse> {
        return self.client.execute(operation: "CreateTypedLinkFacet", path: "/amazonclouddirectory/2017-01-11/typedlink/facet/create", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a directory. Only disabled directories can be deleted. A deleted directory cannot be undone. Exercise extreme caution when deleting directories.
    public func deleteDirectory(_ input: DeleteDirectoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDirectoryResponse> {
        return self.client.execute(operation: "DeleteDirectory", path: "/amazonclouddirectory/2017-01-11/directory", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a given Facet. All attributes and Rules that are associated with the facet will be deleted. Only development schema facets are allowed deletion.
    public func deleteFacet(_ input: DeleteFacetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFacetResponse> {
        return self.client.execute(operation: "DeleteFacet", path: "/amazonclouddirectory/2017-01-11/facet/delete", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an object and its associated attributes. Only objects with no children and no parents can be deleted. The maximum number of attributes that can be deleted during an object deletion is 30. For more information, see Amazon Cloud Directory Limits.
    public func deleteObject(_ input: DeleteObjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteObjectResponse> {
        return self.client.execute(operation: "DeleteObject", path: "/amazonclouddirectory/2017-01-11/object/delete", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a given schema. Schemas in a development and published state can only be deleted. 
    public func deleteSchema(_ input: DeleteSchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSchemaResponse> {
        return self.client.execute(operation: "DeleteSchema", path: "/amazonclouddirectory/2017-01-11/schema", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a TypedLinkFacet. For more information, see Typed Links.
    public func deleteTypedLinkFacet(_ input: DeleteTypedLinkFacetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTypedLinkFacetResponse> {
        return self.client.execute(operation: "DeleteTypedLinkFacet", path: "/amazonclouddirectory/2017-01-11/typedlink/facet/delete", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Detaches the specified object from the specified index.
    public func detachFromIndex(_ input: DetachFromIndexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachFromIndexResponse> {
        return self.client.execute(operation: "DetachFromIndex", path: "/amazonclouddirectory/2017-01-11/index/detach", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Detaches a given object from the parent object. The object that is to be detached from the parent is specified by the link name.
    public func detachObject(_ input: DetachObjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachObjectResponse> {
        return self.client.execute(operation: "DetachObject", path: "/amazonclouddirectory/2017-01-11/object/detach", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Detaches a policy from an object.
    public func detachPolicy(_ input: DetachPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachPolicyResponse> {
        return self.client.execute(operation: "DetachPolicy", path: "/amazonclouddirectory/2017-01-11/policy/detach", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Detaches a typed link from a specified source and target object. For more information, see Typed Links.
    @discardableResult public func detachTypedLink(_ input: DetachTypedLinkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DetachTypedLink", path: "/amazonclouddirectory/2017-01-11/typedlink/detach", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables the specified directory. Disabled directories cannot be read or written to. Only enabled directories can be disabled. Disabled directories may be reenabled.
    public func disableDirectory(_ input: DisableDirectoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableDirectoryResponse> {
        return self.client.execute(operation: "DisableDirectory", path: "/amazonclouddirectory/2017-01-11/directory/disable", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables the specified directory. Only disabled directories can be enabled. Once enabled, the directory can then be read and written to.
    public func enableDirectory(_ input: EnableDirectoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableDirectoryResponse> {
        return self.client.execute(operation: "EnableDirectory", path: "/amazonclouddirectory/2017-01-11/directory/enable", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns current applied schema version ARN, including the minor version in use.
    public func getAppliedSchemaVersion(_ input: GetAppliedSchemaVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAppliedSchemaVersionResponse> {
        return self.client.execute(operation: "GetAppliedSchemaVersion", path: "/amazonclouddirectory/2017-01-11/schema/getappliedschema", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves metadata about a directory.
    public func getDirectory(_ input: GetDirectoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDirectoryResponse> {
        return self.client.execute(operation: "GetDirectory", path: "/amazonclouddirectory/2017-01-11/directory/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details of the Facet, such as facet name, attributes, Rules, or ObjectType. You can call this on all kinds of schema facets -- published, development, or applied.
    public func getFacet(_ input: GetFacetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFacetResponse> {
        return self.client.execute(operation: "GetFacet", path: "/amazonclouddirectory/2017-01-11/facet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves attributes that are associated with a typed link.
    public func getLinkAttributes(_ input: GetLinkAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLinkAttributesResponse> {
        return self.client.execute(operation: "GetLinkAttributes", path: "/amazonclouddirectory/2017-01-11/typedlink/attributes/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves attributes within a facet that are associated with an object.
    public func getObjectAttributes(_ input: GetObjectAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetObjectAttributesResponse> {
        return self.client.execute(operation: "GetObjectAttributes", path: "/amazonclouddirectory/2017-01-11/object/attributes/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves metadata about an object.
    public func getObjectInformation(_ input: GetObjectInformationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetObjectInformationResponse> {
        return self.client.execute(operation: "GetObjectInformation", path: "/amazonclouddirectory/2017-01-11/object/information", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a JSON representation of the schema. See JSON Schema Format for more information.
    public func getSchemaAsJson(_ input: GetSchemaAsJsonRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSchemaAsJsonResponse> {
        return self.client.execute(operation: "GetSchemaAsJson", path: "/amazonclouddirectory/2017-01-11/schema/json", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the identity attribute order for a specific TypedLinkFacet. For more information, see Typed Links.
    public func getTypedLinkFacetInformation(_ input: GetTypedLinkFacetInformationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTypedLinkFacetInformationResponse> {
        return self.client.execute(operation: "GetTypedLinkFacetInformation", path: "/amazonclouddirectory/2017-01-11/typedlink/facet/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists schema major versions applied to a directory. If SchemaArn is provided, lists the minor version.
    public func listAppliedSchemaArns(_ input: ListAppliedSchemaArnsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAppliedSchemaArnsResponse> {
        return self.client.execute(operation: "ListAppliedSchemaArns", path: "/amazonclouddirectory/2017-01-11/schema/applied", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists indices attached to the specified object.
    public func listAttachedIndices(_ input: ListAttachedIndicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAttachedIndicesResponse> {
        return self.client.execute(operation: "ListAttachedIndices", path: "/amazonclouddirectory/2017-01-11/object/indices", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves each Amazon Resource Name (ARN) of schemas in the development state.
    public func listDevelopmentSchemaArns(_ input: ListDevelopmentSchemaArnsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDevelopmentSchemaArnsResponse> {
        return self.client.execute(operation: "ListDevelopmentSchemaArns", path: "/amazonclouddirectory/2017-01-11/schema/development", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists directories created within an account.
    public func listDirectories(_ input: ListDirectoriesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDirectoriesResponse> {
        return self.client.execute(operation: "ListDirectories", path: "/amazonclouddirectory/2017-01-11/directory/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves attributes attached to the facet.
    public func listFacetAttributes(_ input: ListFacetAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFacetAttributesResponse> {
        return self.client.execute(operation: "ListFacetAttributes", path: "/amazonclouddirectory/2017-01-11/facet/attributes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the names of facets that exist in a schema.
    public func listFacetNames(_ input: ListFacetNamesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFacetNamesResponse> {
        return self.client.execute(operation: "ListFacetNames", path: "/amazonclouddirectory/2017-01-11/facet/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a paginated list of all the incoming TypedLinkSpecifier information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see Typed Links.
    public func listIncomingTypedLinks(_ input: ListIncomingTypedLinksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIncomingTypedLinksResponse> {
        return self.client.execute(operation: "ListIncomingTypedLinks", path: "/amazonclouddirectory/2017-01-11/typedlink/incoming", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists objects attached to the specified index.
    public func listIndex(_ input: ListIndexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIndexResponse> {
        return self.client.execute(operation: "ListIndex", path: "/amazonclouddirectory/2017-01-11/index/targets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the major version families of each managed schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.
    public func listManagedSchemaArns(_ input: ListManagedSchemaArnsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListManagedSchemaArnsResponse> {
        return self.client.execute(operation: "ListManagedSchemaArns", path: "/amazonclouddirectory/2017-01-11/schema/managed", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all attributes that are associated with an object. 
    public func listObjectAttributes(_ input: ListObjectAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListObjectAttributesResponse> {
        return self.client.execute(operation: "ListObjectAttributes", path: "/amazonclouddirectory/2017-01-11/object/attributes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a paginated list of child objects that are associated with a given object.
    public func listObjectChildren(_ input: ListObjectChildrenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListObjectChildrenResponse> {
        return self.client.execute(operation: "ListObjectChildren", path: "/amazonclouddirectory/2017-01-11/object/children", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see Directory Structure. Use this API to evaluate all parents for an object. The call returns all objects from the root of the directory up to the requested object. The API returns the number of paths based on user-defined MaxResults, in case there are multiple paths to the parent. The order of the paths and nodes returned is consistent among multiple API calls unless the objects are deleted or moved. Paths not leading to the directory root are ignored from the target object.
    public func listObjectParentPaths(_ input: ListObjectParentPathsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListObjectParentPathsResponse> {
        return self.client.execute(operation: "ListObjectParentPaths", path: "/amazonclouddirectory/2017-01-11/object/parentpaths", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists parent objects that are associated with a given object in pagination fashion.
    public func listObjectParents(_ input: ListObjectParentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListObjectParentsResponse> {
        return self.client.execute(operation: "ListObjectParents", path: "/amazonclouddirectory/2017-01-11/object/parent", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns policies attached to an object in pagination fashion.
    public func listObjectPolicies(_ input: ListObjectPoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListObjectPoliciesResponse> {
        return self.client.execute(operation: "ListObjectPolicies", path: "/amazonclouddirectory/2017-01-11/object/policy", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a paginated list of all the outgoing TypedLinkSpecifier information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see Typed Links.
    public func listOutgoingTypedLinks(_ input: ListOutgoingTypedLinksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOutgoingTypedLinksResponse> {
        return self.client.execute(operation: "ListOutgoingTypedLinks", path: "/amazonclouddirectory/2017-01-11/typedlink/outgoing", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns all of the ObjectIdentifiers to which a given policy is attached.
    public func listPolicyAttachments(_ input: ListPolicyAttachmentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPolicyAttachmentsResponse> {
        return self.client.execute(operation: "ListPolicyAttachments", path: "/amazonclouddirectory/2017-01-11/policy/attachment", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the major version families of each published schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.
    public func listPublishedSchemaArns(_ input: ListPublishedSchemaArnsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPublishedSchemaArnsResponse> {
        return self.client.execute(operation: "ListPublishedSchemaArns", path: "/amazonclouddirectory/2017-01-11/schema/published", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns tags for a resource. Tagging is currently supported only for directories with a limit of 50 tags per directory. All 50 tags are returned for a given directory with this API call.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/amazonclouddirectory/2017-01-11/tags", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a paginated list of all attribute definitions for a particular TypedLinkFacet. For more information, see Typed Links.
    public func listTypedLinkFacetAttributes(_ input: ListTypedLinkFacetAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTypedLinkFacetAttributesResponse> {
        return self.client.execute(operation: "ListTypedLinkFacetAttributes", path: "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a paginated list of TypedLink facet names for a particular schema. For more information, see Typed Links.
    public func listTypedLinkFacetNames(_ input: ListTypedLinkFacetNamesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTypedLinkFacetNamesResponse> {
        return self.client.execute(operation: "ListTypedLinkFacetNames", path: "/amazonclouddirectory/2017-01-11/typedlink/facet/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all policies from the root of the Directory to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the ObjectIdentifier for such objects. If policies are present, it returns ObjectIdentifier, policyId, and policyType. Paths that don't lead to the root from the target object are ignored. For more information, see Policies.
    public func lookupPolicy(_ input: LookupPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LookupPolicyResponse> {
        return self.client.execute(operation: "LookupPolicy", path: "/amazonclouddirectory/2017-01-11/policy/lookup", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Publishes a development schema with a major version and a recommended minor version.
    public func publishSchema(_ input: PublishSchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PublishSchemaResponse> {
        return self.client.execute(operation: "PublishSchema", path: "/amazonclouddirectory/2017-01-11/schema/publish", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows a schema to be updated using JSON upload. Only available for development schemas. See JSON Schema Format for more information.
    public func putSchemaFromJson(_ input: PutSchemaFromJsonRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutSchemaFromJsonResponse> {
        return self.client.execute(operation: "PutSchemaFromJson", path: "/amazonclouddirectory/2017-01-11/schema/json", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified facet from the specified object.
    public func removeFacetFromObject(_ input: RemoveFacetFromObjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveFacetFromObjectResponse> {
        return self.client.execute(operation: "RemoveFacetFromObject", path: "/amazonclouddirectory/2017-01-11/object/facets/delete", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// An API operation for adding tags to a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/amazonclouddirectory/2017-01-11/tags/add", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// An API operation for removing tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/amazonclouddirectory/2017-01-11/tags/remove", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Does the following:   Adds new Attributes, Rules, or ObjectTypes.   Updates existing Attributes, Rules, or ObjectTypes.   Deletes existing Attributes, Rules, or ObjectTypes.  
    public func updateFacet(_ input: UpdateFacetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFacetResponse> {
        return self.client.execute(operation: "UpdateFacet", path: "/amazonclouddirectory/2017-01-11/facet", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a given typed link’s attributes. Attributes to be updated must not contribute to the typed link’s identity, as defined by its IdentityAttributeOrder.
    public func updateLinkAttributes(_ input: UpdateLinkAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLinkAttributesResponse> {
        return self.client.execute(operation: "UpdateLinkAttributes", path: "/amazonclouddirectory/2017-01-11/typedlink/attributes/update", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a given object's attributes.
    public func updateObjectAttributes(_ input: UpdateObjectAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateObjectAttributesResponse> {
        return self.client.execute(operation: "UpdateObjectAttributes", path: "/amazonclouddirectory/2017-01-11/object/update", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the schema name with a new name. Only development schema names can be updated.
    public func updateSchema(_ input: UpdateSchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSchemaResponse> {
        return self.client.execute(operation: "UpdateSchema", path: "/amazonclouddirectory/2017-01-11/schema/update", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a TypedLinkFacet. For more information, see Typed Links.
    public func updateTypedLinkFacet(_ input: UpdateTypedLinkFacetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTypedLinkFacetResponse> {
        return self.client.execute(operation: "UpdateTypedLinkFacet", path: "/amazonclouddirectory/2017-01-11/typedlink/facet", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Upgrades a single directory in-place using the PublishedSchemaArn with schema updates found in MinorVersion. Backwards-compatible minor version upgrades are instantaneously available for readers on all objects in the directory. Note: This is a synchronous API call and upgrades only one schema on a given directory per call. To upgrade multiple directories from one schema, you would need to call this API on each directory.
    public func upgradeAppliedSchema(_ input: UpgradeAppliedSchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeAppliedSchemaResponse> {
        return self.client.execute(operation: "UpgradeAppliedSchema", path: "/amazonclouddirectory/2017-01-11/schema/upgradeapplied", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Upgrades a published schema under a new minor version revision using the current contents of DevelopmentSchemaArn.
    public func upgradePublishedSchema(_ input: UpgradePublishedSchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradePublishedSchemaResponse> {
        return self.client.execute(operation: "UpgradePublishedSchema", path: "/amazonclouddirectory/2017-01-11/schema/upgradepublished", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension CloudDirectory {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CloudDirectory, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
