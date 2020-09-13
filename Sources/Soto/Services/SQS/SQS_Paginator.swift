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

import SotoCore

// MARK: Paginators

extension SQS {
    ///  Returns a list of your queues that have the RedrivePolicy queue attribute configured with a dead-letter queue.  The ListDeadLetterSourceQueues methods supports pagination. Set parameter MaxResults in the request to specify the maximum number of results to be returned in the response. If you do not set MaxResults, the response includes a maximum of 1,000 results. If you set MaxResults and there are additional results to display, the response includes a value for NextToken. Use NextToken as a parameter in your next request to ListDeadLetterSourceQueues to receive the next page of results.  For more information about using dead-letter queues, see Using Amazon SQS Dead-Letter Queues in the Amazon Simple Queue Service Developer Guide.
    public func listDeadLetterSourceQueuesPaginator(
        _ input: ListDeadLetterSourceQueuesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDeadLetterSourceQueuesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDeadLetterSourceQueues,
            tokenKey: \ListDeadLetterSourceQueuesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of your queues in the current region. The response includes a maximum of 1,000 results. If you specify a value for the optional QueueNamePrefix parameter, only queues with a name that begins with the specified value are returned.  The listQueues methods supports pagination. Set parameter MaxResults in the request to specify the maximum number of results to be returned in the response. If you do not set MaxResults, the response includes a maximum of 1,000 results. If you set MaxResults and there are additional results to display, the response includes a value for NextToken. Use NextToken as a parameter in your next request to listQueues to receive the next page of results.   Cross-account permissions don't apply to this action. For more information, see Grant Cross-Account Permissions to a Role and a User Name in the Amazon Simple Queue Service Developer Guide.
    public func listQueuesPaginator(
        _ input: ListQueuesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListQueuesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listQueues,
            tokenKey: \ListQueuesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension SQS.ListDeadLetterSourceQueuesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SQS.ListDeadLetterSourceQueuesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            queueUrl: self.queueUrl
        )
    }
}

extension SQS.ListQueuesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SQS.ListQueuesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            queueNamePrefix: self.queueNamePrefix
        )
    }
}
