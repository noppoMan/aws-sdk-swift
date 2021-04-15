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

extension WellArchitected {
    ///  List of answers.
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
    public func listAnswersPaginator<Result>(
        _ input: ListAnswersInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAnswersOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAnswers,
            inputKey: \ListAnswersInput.nextToken,
            outputKey: \ListAnswersOutput.nextToken,
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
    public func listAnswersPaginator(
        _ input: ListAnswersInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAnswersOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAnswers,
            inputKey: \ListAnswersInput.nextToken,
            outputKey: \ListAnswersOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List lens review improvements.
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
    public func listLensReviewImprovementsPaginator<Result>(
        _ input: ListLensReviewImprovementsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListLensReviewImprovementsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listLensReviewImprovements,
            inputKey: \ListLensReviewImprovementsInput.nextToken,
            outputKey: \ListLensReviewImprovementsOutput.nextToken,
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
    public func listLensReviewImprovementsPaginator(
        _ input: ListLensReviewImprovementsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListLensReviewImprovementsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listLensReviewImprovements,
            inputKey: \ListLensReviewImprovementsInput.nextToken,
            outputKey: \ListLensReviewImprovementsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List lens reviews.
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
    public func listLensReviewsPaginator<Result>(
        _ input: ListLensReviewsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListLensReviewsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listLensReviews,
            inputKey: \ListLensReviewsInput.nextToken,
            outputKey: \ListLensReviewsOutput.nextToken,
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
    public func listLensReviewsPaginator(
        _ input: ListLensReviewsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListLensReviewsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listLensReviews,
            inputKey: \ListLensReviewsInput.nextToken,
            outputKey: \ListLensReviewsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the available lenses.
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
    public func listLensesPaginator<Result>(
        _ input: ListLensesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListLensesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listLenses,
            inputKey: \ListLensesInput.nextToken,
            outputKey: \ListLensesOutput.nextToken,
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
    public func listLensesPaginator(
        _ input: ListLensesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListLensesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listLenses,
            inputKey: \ListLensesInput.nextToken,
            outputKey: \ListLensesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List all milestones for an existing workload.
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
    public func listMilestonesPaginator<Result>(
        _ input: ListMilestonesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMilestonesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listMilestones,
            inputKey: \ListMilestonesInput.nextToken,
            outputKey: \ListMilestonesOutput.nextToken,
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
    public func listMilestonesPaginator(
        _ input: ListMilestonesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMilestonesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMilestones,
            inputKey: \ListMilestonesInput.nextToken,
            outputKey: \ListMilestonesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List lens notifications.
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
    public func listNotificationsPaginator<Result>(
        _ input: ListNotificationsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListNotificationsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listNotifications,
            inputKey: \ListNotificationsInput.nextToken,
            outputKey: \ListNotificationsOutput.nextToken,
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
    public func listNotificationsPaginator(
        _ input: ListNotificationsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListNotificationsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listNotifications,
            inputKey: \ListNotificationsInput.nextToken,
            outputKey: \ListNotificationsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the workload invitations.
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
    public func listShareInvitationsPaginator<Result>(
        _ input: ListShareInvitationsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListShareInvitationsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listShareInvitations,
            inputKey: \ListShareInvitationsInput.nextToken,
            outputKey: \ListShareInvitationsOutput.nextToken,
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
    public func listShareInvitationsPaginator(
        _ input: ListShareInvitationsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListShareInvitationsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listShareInvitations,
            inputKey: \ListShareInvitationsInput.nextToken,
            outputKey: \ListShareInvitationsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the workload shares associated with the workload.
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
    public func listWorkloadSharesPaginator<Result>(
        _ input: ListWorkloadSharesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListWorkloadSharesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listWorkloadShares,
            inputKey: \ListWorkloadSharesInput.nextToken,
            outputKey: \ListWorkloadSharesOutput.nextToken,
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
    public func listWorkloadSharesPaginator(
        _ input: ListWorkloadSharesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListWorkloadSharesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWorkloadShares,
            inputKey: \ListWorkloadSharesInput.nextToken,
            outputKey: \ListWorkloadSharesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List workloads. Paginated.
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
    public func listWorkloadsPaginator<Result>(
        _ input: ListWorkloadsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListWorkloadsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listWorkloads,
            inputKey: \ListWorkloadsInput.nextToken,
            outputKey: \ListWorkloadsOutput.nextToken,
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
    public func listWorkloadsPaginator(
        _ input: ListWorkloadsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListWorkloadsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWorkloads,
            inputKey: \ListWorkloadsInput.nextToken,
            outputKey: \ListWorkloadsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension WellArchitected.ListAnswersInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WellArchitected.ListAnswersInput {
        return .init(
            lensAlias: self.lensAlias,
            maxResults: self.maxResults,
            milestoneNumber: self.milestoneNumber,
            nextToken: token,
            pillarId: self.pillarId,
            workloadId: self.workloadId
        )
    }
}

extension WellArchitected.ListLensReviewImprovementsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WellArchitected.ListLensReviewImprovementsInput {
        return .init(
            lensAlias: self.lensAlias,
            maxResults: self.maxResults,
            milestoneNumber: self.milestoneNumber,
            nextToken: token,
            pillarId: self.pillarId,
            workloadId: self.workloadId
        )
    }
}

extension WellArchitected.ListLensReviewsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WellArchitected.ListLensReviewsInput {
        return .init(
            maxResults: self.maxResults,
            milestoneNumber: self.milestoneNumber,
            nextToken: token,
            workloadId: self.workloadId
        )
    }
}

extension WellArchitected.ListLensesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WellArchitected.ListLensesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension WellArchitected.ListMilestonesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WellArchitected.ListMilestonesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            workloadId: self.workloadId
        )
    }
}

extension WellArchitected.ListNotificationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WellArchitected.ListNotificationsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            workloadId: self.workloadId
        )
    }
}

extension WellArchitected.ListShareInvitationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WellArchitected.ListShareInvitationsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            workloadNamePrefix: self.workloadNamePrefix
        )
    }
}

extension WellArchitected.ListWorkloadSharesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WellArchitected.ListWorkloadSharesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            sharedWithPrefix: self.sharedWithPrefix,
            workloadId: self.workloadId
        )
    }
}

extension WellArchitected.ListWorkloadsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WellArchitected.ListWorkloadsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            workloadNamePrefix: self.workloadNamePrefix
        )
    }
}
