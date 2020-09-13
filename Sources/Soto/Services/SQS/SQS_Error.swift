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
public enum SQSErrorType: AWSErrorType {
    case batchEntryIdsNotDistinct(message: String?)
    case batchRequestTooLong(message: String?)
    case emptyBatchRequest(message: String?)
    case invalidAttributeName(message: String?)
    case invalidBatchEntryId(message: String?)
    case invalidIdFormat(message: String?)
    case invalidMessageContents(message: String?)
    case messageNotInflight(message: String?)
    case overLimit(message: String?)
    case purgeQueueInProgress(message: String?)
    case queueDeletedRecently(message: String?)
    case queueDoesNotExist(message: String?)
    case queueNameExists(message: String?)
    case receiptHandleIsInvalid(message: String?)
    case tooManyEntriesInBatchRequest(message: String?)
    case unsupportedOperation(message: String?)
}

extension SQSErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AWS.SimpleQueueService.BatchEntryIdsNotDistinct":
            self = .batchEntryIdsNotDistinct(message: message)
        case "AWS.SimpleQueueService.BatchRequestTooLong":
            self = .batchRequestTooLong(message: message)
        case "AWS.SimpleQueueService.EmptyBatchRequest":
            self = .emptyBatchRequest(message: message)
        case "InvalidAttributeName":
            self = .invalidAttributeName(message: message)
        case "AWS.SimpleQueueService.InvalidBatchEntryId":
            self = .invalidBatchEntryId(message: message)
        case "InvalidIdFormat":
            self = .invalidIdFormat(message: message)
        case "InvalidMessageContents":
            self = .invalidMessageContents(message: message)
        case "AWS.SimpleQueueService.MessageNotInflight":
            self = .messageNotInflight(message: message)
        case "OverLimit":
            self = .overLimit(message: message)
        case "AWS.SimpleQueueService.PurgeQueueInProgress":
            self = .purgeQueueInProgress(message: message)
        case "AWS.SimpleQueueService.QueueDeletedRecently":
            self = .queueDeletedRecently(message: message)
        case "AWS.SimpleQueueService.NonExistentQueue":
            self = .queueDoesNotExist(message: message)
        case "QueueAlreadyExists":
            self = .queueNameExists(message: message)
        case "ReceiptHandleIsInvalid":
            self = .receiptHandleIsInvalid(message: message)
        case "AWS.SimpleQueueService.TooManyEntriesInBatchRequest":
            self = .tooManyEntriesInBatchRequest(message: message)
        case "AWS.SimpleQueueService.UnsupportedOperation":
            self = .unsupportedOperation(message: message)
        default:
            return nil
        }
    }
}

extension SQSErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .batchEntryIdsNotDistinct(let message):
            return "AWS.SimpleQueueService.BatchEntryIdsNotDistinct: \(message ?? "")"
        case .batchRequestTooLong(let message):
            return "AWS.SimpleQueueService.BatchRequestTooLong: \(message ?? "")"
        case .emptyBatchRequest(let message):
            return "AWS.SimpleQueueService.EmptyBatchRequest: \(message ?? "")"
        case .invalidAttributeName(let message):
            return "InvalidAttributeName: \(message ?? "")"
        case .invalidBatchEntryId(let message):
            return "AWS.SimpleQueueService.InvalidBatchEntryId: \(message ?? "")"
        case .invalidIdFormat(let message):
            return "InvalidIdFormat: \(message ?? "")"
        case .invalidMessageContents(let message):
            return "InvalidMessageContents: \(message ?? "")"
        case .messageNotInflight(let message):
            return "AWS.SimpleQueueService.MessageNotInflight: \(message ?? "")"
        case .overLimit(let message):
            return "OverLimit: \(message ?? "")"
        case .purgeQueueInProgress(let message):
            return "AWS.SimpleQueueService.PurgeQueueInProgress: \(message ?? "")"
        case .queueDeletedRecently(let message):
            return "AWS.SimpleQueueService.QueueDeletedRecently: \(message ?? "")"
        case .queueDoesNotExist(let message):
            return "AWS.SimpleQueueService.NonExistentQueue: \(message ?? "")"
        case .queueNameExists(let message):
            return "QueueAlreadyExists: \(message ?? "")"
        case .receiptHandleIsInvalid(let message):
            return "ReceiptHandleIsInvalid: \(message ?? "")"
        case .tooManyEntriesInBatchRequest(let message):
            return "AWS.SimpleQueueService.TooManyEntriesInBatchRequest: \(message ?? "")"
        case .unsupportedOperation(let message):
            return "AWS.SimpleQueueService.UnsupportedOperation: \(message ?? "")"
        }
    }
}
