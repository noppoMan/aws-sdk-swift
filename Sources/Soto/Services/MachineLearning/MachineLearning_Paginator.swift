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

import SotoCore

// MARK: Paginators

extension MachineLearning {
    ///  Returns a list of BatchPrediction operations that match the search criteria in the request.
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
    public func describeBatchPredictionsPaginator<Result>(
        _ input: DescribeBatchPredictionsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeBatchPredictionsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeBatchPredictions,
            inputKey: \DescribeBatchPredictionsInput.nextToken,
            outputKey: \DescribeBatchPredictionsOutput.nextToken,
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
    public func describeBatchPredictionsPaginator(
        _ input: DescribeBatchPredictionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeBatchPredictionsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeBatchPredictions,
            inputKey: \DescribeBatchPredictionsInput.nextToken,
            outputKey: \DescribeBatchPredictionsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of DataSource that match the search criteria in the request.
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
    public func describeDataSourcesPaginator<Result>(
        _ input: DescribeDataSourcesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeDataSourcesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeDataSources,
            inputKey: \DescribeDataSourcesInput.nextToken,
            outputKey: \DescribeDataSourcesOutput.nextToken,
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
    public func describeDataSourcesPaginator(
        _ input: DescribeDataSourcesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeDataSourcesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeDataSources,
            inputKey: \DescribeDataSourcesInput.nextToken,
            outputKey: \DescribeDataSourcesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of DescribeEvaluations that match the search criteria in the request.
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
    public func describeEvaluationsPaginator<Result>(
        _ input: DescribeEvaluationsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeEvaluationsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeEvaluations,
            inputKey: \DescribeEvaluationsInput.nextToken,
            outputKey: \DescribeEvaluationsOutput.nextToken,
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
    public func describeEvaluationsPaginator(
        _ input: DescribeEvaluationsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeEvaluationsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeEvaluations,
            inputKey: \DescribeEvaluationsInput.nextToken,
            outputKey: \DescribeEvaluationsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of MLModel that match the search criteria in the request.
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
    public func describeMLModelsPaginator<Result>(
        _ input: DescribeMLModelsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeMLModelsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeMLModels,
            inputKey: \DescribeMLModelsInput.nextToken,
            outputKey: \DescribeMLModelsOutput.nextToken,
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
    public func describeMLModelsPaginator(
        _ input: DescribeMLModelsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeMLModelsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeMLModels,
            inputKey: \DescribeMLModelsInput.nextToken,
            outputKey: \DescribeMLModelsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension MachineLearning.DescribeBatchPredictionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MachineLearning.DescribeBatchPredictionsInput {
        return .init(
            eq: self.eq,
            filterVariable: self.filterVariable,
            ge: self.ge,
            gt: self.gt,
            le: self.le,
            limit: self.limit,
            lt: self.lt,
            ne: self.ne,
            nextToken: token,
            prefix: self.prefix,
            sortOrder: self.sortOrder
        )
    }
}

extension MachineLearning.DescribeDataSourcesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MachineLearning.DescribeDataSourcesInput {
        return .init(
            eq: self.eq,
            filterVariable: self.filterVariable,
            ge: self.ge,
            gt: self.gt,
            le: self.le,
            limit: self.limit,
            lt: self.lt,
            ne: self.ne,
            nextToken: token,
            prefix: self.prefix,
            sortOrder: self.sortOrder
        )
    }
}

extension MachineLearning.DescribeEvaluationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MachineLearning.DescribeEvaluationsInput {
        return .init(
            eq: self.eq,
            filterVariable: self.filterVariable,
            ge: self.ge,
            gt: self.gt,
            le: self.le,
            limit: self.limit,
            lt: self.lt,
            ne: self.ne,
            nextToken: token,
            prefix: self.prefix,
            sortOrder: self.sortOrder
        )
    }
}

extension MachineLearning.DescribeMLModelsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MachineLearning.DescribeMLModelsInput {
        return .init(
            eq: self.eq,
            filterVariable: self.filterVariable,
            ge: self.ge,
            gt: self.gt,
            le: self.le,
            limit: self.limit,
            lt: self.lt,
            ne: self.ne,
            nextToken: token,
            prefix: self.prefix,
            sortOrder: self.sortOrder
        )
    }
}
