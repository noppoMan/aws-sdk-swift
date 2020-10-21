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

/// Error enum for SQS
public struct SQSErrorType: AWSErrorType {
    enum Code: String {
        case batchEntryIdsNotDistinct = "AWS.SimpleQueueService.BatchEntryIdsNotDistinct"
        case batchRequestTooLong = "AWS.SimpleQueueService.BatchRequestTooLong"
        case emptyBatchRequest = "AWS.SimpleQueueService.EmptyBatchRequest"
        case invalidAttributeName = "InvalidAttributeName"
        case invalidBatchEntryId = "AWS.SimpleQueueService.InvalidBatchEntryId"
        case invalidIdFormat = "InvalidIdFormat"
        case invalidMessageContents = "InvalidMessageContents"
        case messageNotInflight = "AWS.SimpleQueueService.MessageNotInflight"
        case overLimit = "OverLimit"
        case purgeQueueInProgress = "AWS.SimpleQueueService.PurgeQueueInProgress"
        case queueDeletedRecently = "AWS.SimpleQueueService.QueueDeletedRecently"
        case queueDoesNotExist = "AWS.SimpleQueueService.NonExistentQueue"
        case queueNameExists = "QueueAlreadyExists"
        case receiptHandleIsInvalid = "ReceiptHandleIsInvalid"
        case tooManyEntriesInBatchRequest = "AWS.SimpleQueueService.TooManyEntriesInBatchRequest"
        case unsupportedOperation = "AWS.SimpleQueueService.UnsupportedOperation"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SQS
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    public static var batchEntryIdsNotDistinct: Self { .init(.batchEntryIdsNotDistinct) }
    public static var batchRequestTooLong: Self { .init(.batchRequestTooLong) }
    public static var emptyBatchRequest: Self { .init(.emptyBatchRequest) }
    public static var invalidAttributeName: Self { .init(.invalidAttributeName) }
    public static var invalidBatchEntryId: Self { .init(.invalidBatchEntryId) }
    public static var invalidIdFormat: Self { .init(.invalidIdFormat) }
    public static var invalidMessageContents: Self { .init(.invalidMessageContents) }
    public static var messageNotInflight: Self { .init(.messageNotInflight) }
    public static var overLimit: Self { .init(.overLimit) }
    public static var purgeQueueInProgress: Self { .init(.purgeQueueInProgress) }
    public static var queueDeletedRecently: Self { .init(.queueDeletedRecently) }
    public static var queueDoesNotExist: Self { .init(.queueDoesNotExist) }
    public static var queueNameExists: Self { .init(.queueNameExists) }
    public static var receiptHandleIsInvalid: Self { .init(.receiptHandleIsInvalid) }
    public static var tooManyEntriesInBatchRequest: Self { .init(.tooManyEntriesInBatchRequest) }
    public static var unsupportedOperation: Self { .init(.unsupportedOperation) }
}

extension SQSErrorType: Equatable {
    public static func == (lhs: SQSErrorType, rhs: SQSErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SQSErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
