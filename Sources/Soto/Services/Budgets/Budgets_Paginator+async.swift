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
extension Budgets {
    ///   Describes a budget action history detail.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeBudgetActionHistoriesPaginator(
        _ input: DescribeBudgetActionHistoriesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeBudgetActionHistoriesRequest, DescribeBudgetActionHistoriesResponse> {
        return .init(
            input: input,
            command: describeBudgetActionHistories,
            inputKey: \DescribeBudgetActionHistoriesRequest.nextToken,
            outputKey: \DescribeBudgetActionHistoriesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Describes all of the budget actions for an account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeBudgetActionsForAccountPaginator(
        _ input: DescribeBudgetActionsForAccountRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeBudgetActionsForAccountRequest, DescribeBudgetActionsForAccountResponse> {
        return .init(
            input: input,
            command: describeBudgetActionsForAccount,
            inputKey: \DescribeBudgetActionsForAccountRequest.nextToken,
            outputKey: \DescribeBudgetActionsForAccountResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Describes all of the budget actions for a budget.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeBudgetActionsForBudgetPaginator(
        _ input: DescribeBudgetActionsForBudgetRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeBudgetActionsForBudgetRequest, DescribeBudgetActionsForBudgetResponse> {
        return .init(
            input: input,
            command: describeBudgetActionsForBudget,
            inputKey: \DescribeBudgetActionsForBudgetRequest.nextToken,
            outputKey: \DescribeBudgetActionsForBudgetResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the history for DAILY, MONTHLY, and QUARTERLY budgets. Budget history isn't available for ANNUAL budgets.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeBudgetPerformanceHistoryPaginator(
        _ input: DescribeBudgetPerformanceHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeBudgetPerformanceHistoryRequest, DescribeBudgetPerformanceHistoryResponse> {
        return .init(
            input: input,
            command: describeBudgetPerformanceHistory,
            inputKey: \DescribeBudgetPerformanceHistoryRequest.nextToken,
            outputKey: \DescribeBudgetPerformanceHistoryResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the budgets that are associated with an account.  The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeBudgetsPaginator(
        _ input: DescribeBudgetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeBudgetsRequest, DescribeBudgetsResponse> {
        return .init(
            input: input,
            command: describeBudgets,
            inputKey: \DescribeBudgetsRequest.nextToken,
            outputKey: \DescribeBudgetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the notifications that are associated with a budget.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeNotificationsForBudgetPaginator(
        _ input: DescribeNotificationsForBudgetRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeNotificationsForBudgetRequest, DescribeNotificationsForBudgetResponse> {
        return .init(
            input: input,
            command: describeNotificationsForBudget,
            inputKey: \DescribeNotificationsForBudgetRequest.nextToken,
            outputKey: \DescribeNotificationsForBudgetResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the subscribers that are associated with a notification.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeSubscribersForNotificationPaginator(
        _ input: DescribeSubscribersForNotificationRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeSubscribersForNotificationRequest, DescribeSubscribersForNotificationResponse> {
        return .init(
            input: input,
            command: describeSubscribersForNotification,
            inputKey: \DescribeSubscribersForNotificationRequest.nextToken,
            outputKey: \DescribeSubscribersForNotificationResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
