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
extension LexModelBuildingService {
    ///  Returns a list of aliases for a specified Amazon Lex bot. This operation requires permissions for the lex:GetBotAliases action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getBotAliasesPaginator(
        _ input: GetBotAliasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetBotAliasesRequest, GetBotAliasesResponse> {
        return .init(
            input: input,
            command: getBotAliases,
            inputKey: \GetBotAliasesRequest.nextToken,
            outputKey: \GetBotAliasesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of all of the channels associated with the specified bot.  The GetBotChannelAssociations operation requires permissions for the lex:GetBotChannelAssociations action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getBotChannelAssociationsPaginator(
        _ input: GetBotChannelAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetBotChannelAssociationsRequest, GetBotChannelAssociationsResponse> {
        return .init(
            input: input,
            command: getBotChannelAssociations,
            inputKey: \GetBotChannelAssociationsRequest.nextToken,
            outputKey: \GetBotChannelAssociationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about all of the versions of a bot. The GetBotVersions operation returns a BotMetadata object for each version of a bot. For example, if a bot has three numbered versions, the GetBotVersions operation returns four BotMetadata objects in the response, one for each numbered version and one for the $LATEST version.  The GetBotVersions operation always returns at least one version, the $LATEST version. This operation requires permissions for the lex:GetBotVersions action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getBotVersionsPaginator(
        _ input: GetBotVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetBotVersionsRequest, GetBotVersionsResponse> {
        return .init(
            input: input,
            command: getBotVersions,
            inputKey: \GetBotVersionsRequest.nextToken,
            outputKey: \GetBotVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns bot information as follows:    If you provide the nameContains field, the response includes information for the $LATEST version of all bots whose name contains the specified string.   If you don't specify the nameContains field, the operation returns information about the $LATEST version of all of your bots.   This operation requires permission for the lex:GetBots action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getBotsPaginator(
        _ input: GetBotsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetBotsRequest, GetBotsResponse> {
        return .init(
            input: input,
            command: getBots,
            inputKey: \GetBotsRequest.nextToken,
            outputKey: \GetBotsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of built-in intents that meet the specified criteria. This operation requires permission for the lex:GetBuiltinIntents action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getBuiltinIntentsPaginator(
        _ input: GetBuiltinIntentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetBuiltinIntentsRequest, GetBuiltinIntentsResponse> {
        return .init(
            input: input,
            command: getBuiltinIntents,
            inputKey: \GetBuiltinIntentsRequest.nextToken,
            outputKey: \GetBuiltinIntentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of built-in slot types that meet the specified criteria. For a list of built-in slot types, see Slot Type Reference in the Alexa Skills Kit. This operation requires permission for the lex:GetBuiltInSlotTypes action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getBuiltinSlotTypesPaginator(
        _ input: GetBuiltinSlotTypesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetBuiltinSlotTypesRequest, GetBuiltinSlotTypesResponse> {
        return .init(
            input: input,
            command: getBuiltinSlotTypes,
            inputKey: \GetBuiltinSlotTypesRequest.nextToken,
            outputKey: \GetBuiltinSlotTypesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about all of the versions of an intent. The GetIntentVersions operation returns an IntentMetadata object for each version of an intent. For example, if an intent has three numbered versions, the GetIntentVersions operation returns four IntentMetadata objects in the response, one for each numbered version and one for the $LATEST version.  The GetIntentVersions operation always returns at least one version, the $LATEST version. This operation requires permissions for the lex:GetIntentVersions action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getIntentVersionsPaginator(
        _ input: GetIntentVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetIntentVersionsRequest, GetIntentVersionsResponse> {
        return .init(
            input: input,
            command: getIntentVersions,
            inputKey: \GetIntentVersionsRequest.nextToken,
            outputKey: \GetIntentVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns intent information as follows:    If you specify the nameContains field, returns the $LATEST version of all intents that contain the specified string.    If you don't specify the nameContains field, returns information about the $LATEST version of all intents.     The operation requires permission for the lex:GetIntents action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getIntentsPaginator(
        _ input: GetIntentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetIntentsRequest, GetIntentsResponse> {
        return .init(
            input: input,
            command: getIntents,
            inputKey: \GetIntentsRequest.nextToken,
            outputKey: \GetIntentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about all versions of a slot type. The GetSlotTypeVersions operation returns a SlotTypeMetadata object for each version of a slot type. For example, if a slot type has three numbered versions, the GetSlotTypeVersions operation returns four SlotTypeMetadata objects in the response, one for each numbered version and one for the $LATEST version.  The GetSlotTypeVersions operation always returns at least one version, the $LATEST version. This operation requires permissions for the lex:GetSlotTypeVersions action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getSlotTypeVersionsPaginator(
        _ input: GetSlotTypeVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetSlotTypeVersionsRequest, GetSlotTypeVersionsResponse> {
        return .init(
            input: input,
            command: getSlotTypeVersions,
            inputKey: \GetSlotTypeVersionsRequest.nextToken,
            outputKey: \GetSlotTypeVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns slot type information as follows:    If you specify the nameContains field, returns the $LATEST version of all slot types that contain the specified string.    If you don't specify the nameContains field, returns information about the $LATEST version of all slot types.     The operation requires permission for the lex:GetSlotTypes action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getSlotTypesPaginator(
        _ input: GetSlotTypesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetSlotTypesRequest, GetSlotTypesResponse> {
        return .init(
            input: input,
            command: getSlotTypes,
            inputKey: \GetSlotTypesRequest.nextToken,
            outputKey: \GetSlotTypesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
