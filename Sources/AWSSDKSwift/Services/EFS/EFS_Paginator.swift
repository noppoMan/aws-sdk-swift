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

import AWSSDKSwiftCore

//MARK: Paginators

extension EFS {

    ///  Returns the description of a specific Amazon EFS access point if the AccessPointId is provided. If you provide an EFS FileSystemId, it returns descriptions of all access points for that file system. You can provide either an AccessPointId or a FileSystemId in the request, but not both.  This operation requires permissions for the elasticfilesystem:DescribeAccessPoints action.
    public func describeAccessPointsPaginator(
        _ input: DescribeAccessPointsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeAccessPointsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeAccessPoints, tokenKey: \DescribeAccessPointsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns the description of a specific Amazon EFS file system if either the file system CreationToken or the FileSystemId is provided. Otherwise, it returns descriptions of all file systems owned by the caller's AWS account in the AWS Region of the endpoint that you're calling. When retrieving all file system descriptions, you can optionally specify the MaxItems parameter to limit the number of descriptions in a response. Currently, this number is automatically set to 10. If more file system descriptions remain, Amazon EFS returns a NextMarker, an opaque token, in the response. In this case, you should send a subsequent request with the Marker request parameter set to the value of NextMarker.  To retrieve a list of your file system descriptions, this operation is used in an iterative process, where DescribeFileSystems is called first without the Marker and then the operation continues to call it with the Marker parameter set to the value of the NextMarker from the previous response until the response has no NextMarker.   The order of file systems returned in the response of one DescribeFileSystems call and the order of file systems returned across the responses of a multi-call iteration is unspecified.   This operation requires permissions for the elasticfilesystem:DescribeFileSystems action. 
    public func describeFileSystemsPaginator(
        _ input: DescribeFileSystemsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeFileSystemsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeFileSystems, tokenKey: \DescribeFileSystemsResponse.nextMarker, on: eventLoop, onPage: onPage)
    }

    ///  Returns the tags associated with a file system. The order of tags returned in the response of one DescribeTags call and the order of tags returned across the responses of a multiple-call iteration (when using pagination) is unspecified.   This operation requires permissions for the elasticfilesystem:DescribeTags action. 
    @available(*, deprecated, message:"Use ListTagsForResource.")
    public func describeTagsPaginator(
        _ input: DescribeTagsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeTagsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeTags, tokenKey: \DescribeTagsResponse.nextMarker, on: eventLoop, onPage: onPage)
    }

    ///  Lists all tags for a top-level EFS resource. You must provide the ID of the resource that you want to retrieve the tags for. This operation requires permissions for the elasticfilesystem:DescribeAccessPoints action.
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTagsForResourceResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTagsForResource, tokenKey: \ListTagsForResourceResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension EFS.DescribeAccessPointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EFS.DescribeAccessPointsRequest {
        return .init(
            accessPointId: self.accessPointId,
            fileSystemId: self.fileSystemId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension EFS.DescribeFileSystemsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EFS.DescribeFileSystemsRequest {
        return .init(
            creationToken: self.creationToken,
            fileSystemId: self.fileSystemId,
            marker: token,
            maxItems: self.maxItems
        )

    }
}

extension EFS.DescribeTagsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EFS.DescribeTagsRequest {
        return .init(
            fileSystemId: self.fileSystemId,
            marker: token,
            maxItems: self.maxItems
        )

    }
}

extension EFS.ListTagsForResourceRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EFS.ListTagsForResourceRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceId: self.resourceId
        )

    }
}


