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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

#if compiler(>=5.5) && $AsyncAwait

import SotoCore

// MARK: Paginators

@available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
extension Outposts {
    ///  List the Outposts for your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOutpostsPaginator(
        _ input: ListOutpostsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOutpostsInput, ListOutpostsOutput> {
        return .init(
            input: input,
            command: listOutposts,
            inputKey: \ListOutpostsInput.nextToken,
            outputKey: \ListOutpostsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the sites for the specified AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSitesPaginator(
        _ input: ListSitesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSitesInput, ListSitesOutput> {
        return .init(
            input: input,
            command: listSites,
            inputKey: \ListSitesInput.nextToken,
            outputKey: \ListSitesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
