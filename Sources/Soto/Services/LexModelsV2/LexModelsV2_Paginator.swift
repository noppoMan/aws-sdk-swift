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

import SotoCore

// MARK: Paginators

extension LexModelsV2 {
    ///  Gets a list of aliases for the specified bot.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBotAliasesPaginator<Result>(
        _ input: ListBotAliasesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBotAliasesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBotAliases,
            inputKey: \ListBotAliasesRequest.nextToken,
            outputKey: \ListBotAliasesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBotAliasesPaginator(
        _ input: ListBotAliasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBotAliasesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBotAliases,
            inputKey: \ListBotAliasesRequest.nextToken,
            outputKey: \ListBotAliasesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of locales for the specified bot.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBotLocalesPaginator<Result>(
        _ input: ListBotLocalesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBotLocalesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBotLocales,
            inputKey: \ListBotLocalesRequest.nextToken,
            outputKey: \ListBotLocalesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBotLocalesPaginator(
        _ input: ListBotLocalesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBotLocalesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBotLocales,
            inputKey: \ListBotLocalesRequest.nextToken,
            outputKey: \ListBotLocalesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets information about all of the versions of a bot. The ListBotVersions operation returns a summary of each version of a bot. For example, if a bot has three numbered versions, the ListBotVersions operation returns for summaries, one for each numbered version and one for the DRAFT version. The ListBotVersions operation always returns at least one version, the DRAFT version.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBotVersionsPaginator<Result>(
        _ input: ListBotVersionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBotVersionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBotVersions,
            inputKey: \ListBotVersionsRequest.nextToken,
            outputKey: \ListBotVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBotVersionsPaginator(
        _ input: ListBotVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBotVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBotVersions,
            inputKey: \ListBotVersionsRequest.nextToken,
            outputKey: \ListBotVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of available bots.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBotsPaginator<Result>(
        _ input: ListBotsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBotsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBots,
            inputKey: \ListBotsRequest.nextToken,
            outputKey: \ListBotsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBotsPaginator(
        _ input: ListBotsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBotsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBots,
            inputKey: \ListBotsRequest.nextToken,
            outputKey: \ListBotsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of built-in intents provided by Amazon Lex that you can use in your bot.  To use a built-in intent as a the base for your own intent, include the built-in intent signature in the parentIntentSignature parameter when you call the CreateIntent operation. For more information, see CreateIntent.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBuiltInIntentsPaginator<Result>(
        _ input: ListBuiltInIntentsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBuiltInIntentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBuiltInIntents,
            inputKey: \ListBuiltInIntentsRequest.nextToken,
            outputKey: \ListBuiltInIntentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBuiltInIntentsPaginator(
        _ input: ListBuiltInIntentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBuiltInIntentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBuiltInIntents,
            inputKey: \ListBuiltInIntentsRequest.nextToken,
            outputKey: \ListBuiltInIntentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of built-in slot types that meet the specified criteria.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBuiltInSlotTypesPaginator<Result>(
        _ input: ListBuiltInSlotTypesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBuiltInSlotTypesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBuiltInSlotTypes,
            inputKey: \ListBuiltInSlotTypesRequest.nextToken,
            outputKey: \ListBuiltInSlotTypesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBuiltInSlotTypesPaginator(
        _ input: ListBuiltInSlotTypesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBuiltInSlotTypesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBuiltInSlotTypes,
            inputKey: \ListBuiltInSlotTypesRequest.nextToken,
            outputKey: \ListBuiltInSlotTypesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the exports for a bot or bot locale. Exports are kept in the list for 7 days.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listExportsPaginator<Result>(
        _ input: ListExportsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListExportsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listExports,
            inputKey: \ListExportsRequest.nextToken,
            outputKey: \ListExportsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listExportsPaginator(
        _ input: ListExportsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListExportsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listExports,
            inputKey: \ListExportsRequest.nextToken,
            outputKey: \ListExportsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the imports for a bot or bot locale. Imports are kept in the list for 7 days.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listImportsPaginator<Result>(
        _ input: ListImportsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListImportsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listImports,
            inputKey: \ListImportsRequest.nextToken,
            outputKey: \ListImportsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listImportsPaginator(
        _ input: ListImportsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListImportsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listImports,
            inputKey: \ListImportsRequest.nextToken,
            outputKey: \ListImportsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Get a list of intents that meet the specified criteria.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listIntentsPaginator<Result>(
        _ input: ListIntentsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListIntentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listIntents,
            inputKey: \ListIntentsRequest.nextToken,
            outputKey: \ListIntentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listIntentsPaginator(
        _ input: ListIntentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListIntentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listIntents,
            inputKey: \ListIntentsRequest.nextToken,
            outputKey: \ListIntentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of slot types that match the specified criteria.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSlotTypesPaginator<Result>(
        _ input: ListSlotTypesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSlotTypesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSlotTypes,
            inputKey: \ListSlotTypesRequest.nextToken,
            outputKey: \ListSlotTypesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSlotTypesPaginator(
        _ input: ListSlotTypesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSlotTypesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSlotTypes,
            inputKey: \ListSlotTypesRequest.nextToken,
            outputKey: \ListSlotTypesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of slots that match the specified criteria.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSlotsPaginator<Result>(
        _ input: ListSlotsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSlotsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSlots,
            inputKey: \ListSlotsRequest.nextToken,
            outputKey: \ListSlotsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSlotsPaginator(
        _ input: ListSlotsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSlotsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSlots,
            inputKey: \ListSlotsRequest.nextToken,
            outputKey: \ListSlotsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension LexModelsV2.ListBotAliasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelsV2.ListBotAliasesRequest {
        return .init(
            botId: self.botId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension LexModelsV2.ListBotLocalesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelsV2.ListBotLocalesRequest {
        return .init(
            botId: self.botId,
            botVersion: self.botVersion,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}

extension LexModelsV2.ListBotVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelsV2.ListBotVersionsRequest {
        return .init(
            botId: self.botId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}

extension LexModelsV2.ListBotsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelsV2.ListBotsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}

extension LexModelsV2.ListBuiltInIntentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelsV2.ListBuiltInIntentsRequest {
        return .init(
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}

extension LexModelsV2.ListBuiltInSlotTypesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelsV2.ListBuiltInSlotTypesRequest {
        return .init(
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}

extension LexModelsV2.ListExportsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelsV2.ListExportsRequest {
        return .init(
            botId: self.botId,
            botVersion: self.botVersion,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}

extension LexModelsV2.ListImportsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelsV2.ListImportsRequest {
        return .init(
            botId: self.botId,
            botVersion: self.botVersion,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}

extension LexModelsV2.ListIntentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelsV2.ListIntentsRequest {
        return .init(
            botId: self.botId,
            botVersion: self.botVersion,
            filters: self.filters,
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}

extension LexModelsV2.ListSlotTypesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelsV2.ListSlotTypesRequest {
        return .init(
            botId: self.botId,
            botVersion: self.botVersion,
            filters: self.filters,
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}

extension LexModelsV2.ListSlotsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelsV2.ListSlotsRequest {
        return .init(
            botId: self.botId,
            botVersion: self.botVersion,
            filters: self.filters,
            intentId: self.intentId,
            localeId: self.localeId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy
        )
    }
}
