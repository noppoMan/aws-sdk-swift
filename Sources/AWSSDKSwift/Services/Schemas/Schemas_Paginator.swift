// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension Schemas {

    ///  List the discoverers.
    public func listDiscoverersPaginator(_ input: ListDiscoverersRequest, onPage: @escaping (ListDiscoverersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDiscoverers, tokenKey: \ListDiscoverersResponse.nextToken, onPage: onPage)
    }

    ///  List the registries.
    public func listRegistriesPaginator(_ input: ListRegistriesRequest, onPage: @escaping (ListRegistriesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRegistries, tokenKey: \ListRegistriesResponse.nextToken, onPage: onPage)
    }

    ///  Provides a list of the schema versions and related information.
    public func listSchemaVersionsPaginator(_ input: ListSchemaVersionsRequest, onPage: @escaping (ListSchemaVersionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSchemaVersions, tokenKey: \ListSchemaVersionsResponse.nextToken, onPage: onPage)
    }

    ///  List the schemas.
    public func listSchemasPaginator(_ input: ListSchemasRequest, onPage: @escaping (ListSchemasResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSchemas, tokenKey: \ListSchemasResponse.nextToken, onPage: onPage)
    }

    ///  Search the schemas
    public func searchSchemasPaginator(_ input: SearchSchemasRequest, onPage: @escaping (SearchSchemasResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchSchemas, tokenKey: \SearchSchemasResponse.nextToken, onPage: onPage)
    }

}

extension Schemas.ListDiscoverersRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Schemas.ListDiscoverersRequest {
        return .init(
            discovererIdPrefix: self.discovererIdPrefix, 
            limit: self.limit, 
            nextToken: token, 
            sourceArnPrefix: self.sourceArnPrefix
        )

    }
}

extension Schemas.ListRegistriesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Schemas.ListRegistriesRequest {
        return .init(
            limit: self.limit, 
            nextToken: token, 
            registryNamePrefix: self.registryNamePrefix, 
            scope: self.scope
        )

    }
}

extension Schemas.ListSchemaVersionsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Schemas.ListSchemaVersionsRequest {
        return .init(
            limit: self.limit, 
            nextToken: token, 
            registryName: self.registryName, 
            schemaName: self.schemaName
        )

    }
}

extension Schemas.ListSchemasRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Schemas.ListSchemasRequest {
        return .init(
            limit: self.limit, 
            nextToken: token, 
            registryName: self.registryName, 
            schemaNamePrefix: self.schemaNamePrefix
        )

    }
}

extension Schemas.SearchSchemasRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Schemas.SearchSchemasRequest {
        return .init(
            keywords: self.keywords, 
            limit: self.limit, 
            nextToken: token, 
            registryName: self.registryName
        )

    }
}


