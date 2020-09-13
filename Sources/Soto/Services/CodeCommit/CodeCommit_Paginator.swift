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

extension CodeCommit {
    ///  Returns information about one or more merge conflicts in the attempted merge of two commit specifiers using the squash or three-way merge strategy. If the merge option for the attempted merge is specified as FAST_FORWARD_MERGE, an exception is thrown.
    public func describeMergeConflictsPaginator(
        _ input: DescribeMergeConflictsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeMergeConflictsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeMergeConflicts,
            tokenKey: \DescribeMergeConflictsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about one or more pull request events.
    public func describePullRequestEventsPaginator(
        _ input: DescribePullRequestEventsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribePullRequestEventsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describePullRequestEvents,
            tokenKey: \DescribePullRequestEventsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about reactions to a specified comment ID. Reactions from users who have been deleted will not be included in the count.
    public func getCommentReactionsPaginator(
        _ input: GetCommentReactionsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetCommentReactionsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getCommentReactions,
            tokenKey: \GetCommentReactionsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about comments made on the comparison between two commits.  Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of reactions from active identities, use GetCommentReactions.
    public func getCommentsForComparedCommitPaginator(
        _ input: GetCommentsForComparedCommitInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetCommentsForComparedCommitOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getCommentsForComparedCommit,
            tokenKey: \GetCommentsForComparedCommitOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns comments made on a pull request.  Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of reactions from active identities, use GetCommentReactions.
    public func getCommentsForPullRequestPaginator(
        _ input: GetCommentsForPullRequestInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetCommentsForPullRequestOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getCommentsForPullRequest,
            tokenKey: \GetCommentsForPullRequestOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID, or other fully qualified reference). Results can be limited to a specified path.
    public func getDifferencesPaginator(
        _ input: GetDifferencesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetDifferencesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getDifferences,
            tokenKey: \GetDifferencesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository.
    public func getMergeConflictsPaginator(
        _ input: GetMergeConflictsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetMergeConflictsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getMergeConflicts,
            tokenKey: \GetMergeConflictsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all approval rule templates in the specified AWS Region in your AWS account. If an AWS Region is not specified, the AWS Region where you are signed in is used.
    public func listApprovalRuleTemplatesPaginator(
        _ input: ListApprovalRuleTemplatesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListApprovalRuleTemplatesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listApprovalRuleTemplates,
            tokenKey: \ListApprovalRuleTemplatesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all approval rule templates that are associated with a specified repository.
    public func listAssociatedApprovalRuleTemplatesForRepositoryPaginator(
        _ input: ListAssociatedApprovalRuleTemplatesForRepositoryInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAssociatedApprovalRuleTemplatesForRepositoryOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAssociatedApprovalRuleTemplatesForRepository,
            tokenKey: \ListAssociatedApprovalRuleTemplatesForRepositoryOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets information about one or more branches in a repository.
    public func listBranchesPaginator(
        _ input: ListBranchesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListBranchesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBranches,
            tokenKey: \ListBranchesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of pull requests for a specified repository. The return list can be refined by pull request status or pull request author ARN.
    public func listPullRequestsPaginator(
        _ input: ListPullRequestsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPullRequestsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPullRequests,
            tokenKey: \ListPullRequestsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets information about one or more repositories.
    public func listRepositoriesPaginator(
        _ input: ListRepositoriesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRepositoriesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRepositories,
            tokenKey: \ListRepositoriesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all repositories associated with the specified approval rule template.
    public func listRepositoriesForApprovalRuleTemplatePaginator(
        _ input: ListRepositoriesForApprovalRuleTemplateInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRepositoriesForApprovalRuleTemplateOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRepositoriesForApprovalRuleTemplate,
            tokenKey: \ListRepositoriesForApprovalRuleTemplateOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension CodeCommit.DescribeMergeConflictsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.DescribeMergeConflictsInput {
        return .init(
            conflictDetailLevel: self.conflictDetailLevel,
            conflictResolutionStrategy: self.conflictResolutionStrategy,
            destinationCommitSpecifier: self.destinationCommitSpecifier,
            filePath: self.filePath,
            maxMergeHunks: self.maxMergeHunks,
            mergeOption: self.mergeOption,
            nextToken: token,
            repositoryName: self.repositoryName,
            sourceCommitSpecifier: self.sourceCommitSpecifier
        )
    }
}

extension CodeCommit.DescribePullRequestEventsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.DescribePullRequestEventsInput {
        return .init(
            actorArn: self.actorArn,
            maxResults: self.maxResults,
            nextToken: token,
            pullRequestEventType: self.pullRequestEventType,
            pullRequestId: self.pullRequestId
        )
    }
}

extension CodeCommit.GetCommentReactionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.GetCommentReactionsInput {
        return .init(
            commentId: self.commentId,
            maxResults: self.maxResults,
            nextToken: token,
            reactionUserArn: self.reactionUserArn
        )
    }
}

extension CodeCommit.GetCommentsForComparedCommitInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.GetCommentsForComparedCommitInput {
        return .init(
            afterCommitId: self.afterCommitId,
            beforeCommitId: self.beforeCommitId,
            maxResults: self.maxResults,
            nextToken: token,
            repositoryName: self.repositoryName
        )
    }
}

extension CodeCommit.GetCommentsForPullRequestInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.GetCommentsForPullRequestInput {
        return .init(
            afterCommitId: self.afterCommitId,
            beforeCommitId: self.beforeCommitId,
            maxResults: self.maxResults,
            nextToken: token,
            pullRequestId: self.pullRequestId,
            repositoryName: self.repositoryName
        )
    }
}

extension CodeCommit.GetDifferencesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.GetDifferencesInput {
        return .init(
            afterCommitSpecifier: self.afterCommitSpecifier,
            afterPath: self.afterPath,
            beforeCommitSpecifier: self.beforeCommitSpecifier,
            beforePath: self.beforePath,
            maxResults: self.maxResults,
            nextToken: token,
            repositoryName: self.repositoryName
        )
    }
}

extension CodeCommit.GetMergeConflictsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.GetMergeConflictsInput {
        return .init(
            conflictDetailLevel: self.conflictDetailLevel,
            conflictResolutionStrategy: self.conflictResolutionStrategy,
            destinationCommitSpecifier: self.destinationCommitSpecifier,
            maxConflictFiles: self.maxConflictFiles,
            mergeOption: self.mergeOption,
            nextToken: token,
            repositoryName: self.repositoryName,
            sourceCommitSpecifier: self.sourceCommitSpecifier
        )
    }
}

extension CodeCommit.ListApprovalRuleTemplatesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListApprovalRuleTemplatesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension CodeCommit.ListAssociatedApprovalRuleTemplatesForRepositoryInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListAssociatedApprovalRuleTemplatesForRepositoryInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            repositoryName: self.repositoryName
        )
    }
}

extension CodeCommit.ListBranchesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListBranchesInput {
        return .init(
            nextToken: token,
            repositoryName: self.repositoryName
        )
    }
}

extension CodeCommit.ListPullRequestsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListPullRequestsInput {
        return .init(
            authorArn: self.authorArn,
            maxResults: self.maxResults,
            nextToken: token,
            pullRequestStatus: self.pullRequestStatus,
            repositoryName: self.repositoryName
        )
    }
}

extension CodeCommit.ListRepositoriesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListRepositoriesInput {
        return .init(
            nextToken: token,
            order: self.order,
            sortBy: self.sortBy
        )
    }
}

extension CodeCommit.ListRepositoriesForApprovalRuleTemplateInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListRepositoriesForApprovalRuleTemplateInput {
        return .init(
            approvalRuleTemplateName: self.approvalRuleTemplateName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
