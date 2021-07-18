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

/// Error enum for Glue
public struct GlueErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case alreadyExistsException = "AlreadyExistsException"
        case concurrentModificationException = "ConcurrentModificationException"
        case concurrentRunsExceededException = "ConcurrentRunsExceededException"
        case conditionCheckFailureException = "ConditionCheckFailureException"
        case conflictException = "ConflictException"
        case crawlerNotRunningException = "CrawlerNotRunningException"
        case crawlerRunningException = "CrawlerRunningException"
        case crawlerStoppingException = "CrawlerStoppingException"
        case entityNotFoundException = "EntityNotFoundException"
        case glueEncryptionException = "GlueEncryptionException"
        case idempotentParameterMismatchException = "IdempotentParameterMismatchException"
        case illegalWorkflowStateException = "IllegalWorkflowStateException"
        case internalServiceException = "InternalServiceException"
        case invalidInputException = "InvalidInputException"
        case mLTransformNotReadyException = "MLTransformNotReadyException"
        case noScheduleException = "NoScheduleException"
        case operationTimeoutException = "OperationTimeoutException"
        case resourceNumberLimitExceededException = "ResourceNumberLimitExceededException"
        case schedulerNotRunningException = "SchedulerNotRunningException"
        case schedulerRunningException = "SchedulerRunningException"
        case schedulerTransitioningException = "SchedulerTransitioningException"
        case validationException = "ValidationException"
        case versionMismatchException = "VersionMismatchException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Glue
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

    /// Access to a resource was denied.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// A resource to be created or added already exists.
    public static var alreadyExistsException: Self { .init(.alreadyExistsException) }
    /// Two processes are trying to modify a resource simultaneously.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// Too many jobs are being run concurrently.
    public static var concurrentRunsExceededException: Self { .init(.concurrentRunsExceededException) }
    /// A specified condition was not satisfied.
    public static var conditionCheckFailureException: Self { .init(.conditionCheckFailureException) }
    /// The CreatePartitions API was called on a table that has indexes enabled.	
    public static var conflictException: Self { .init(.conflictException) }
    /// The specified crawler is not running.
    public static var crawlerNotRunningException: Self { .init(.crawlerNotRunningException) }
    /// The operation cannot be performed because the crawler is already running.
    public static var crawlerRunningException: Self { .init(.crawlerRunningException) }
    /// The specified crawler is stopping.
    public static var crawlerStoppingException: Self { .init(.crawlerStoppingException) }
    /// A specified entity does not exist
    public static var entityNotFoundException: Self { .init(.entityNotFoundException) }
    /// An encryption operation failed.
    public static var glueEncryptionException: Self { .init(.glueEncryptionException) }
    /// The same unique identifier was associated with two different records.
    public static var idempotentParameterMismatchException: Self { .init(.idempotentParameterMismatchException) }
    /// The workflow is in an invalid state to perform a requested operation.
    public static var illegalWorkflowStateException: Self { .init(.illegalWorkflowStateException) }
    /// An internal service error occurred.
    public static var internalServiceException: Self { .init(.internalServiceException) }
    /// The input provided was not valid.
    public static var invalidInputException: Self { .init(.invalidInputException) }
    /// The machine learning transform is not ready to run.
    public static var mLTransformNotReadyException: Self { .init(.mLTransformNotReadyException) }
    /// There is no applicable schedule.
    public static var noScheduleException: Self { .init(.noScheduleException) }
    /// The operation timed out.
    public static var operationTimeoutException: Self { .init(.operationTimeoutException) }
    /// A resource numerical limit was exceeded.
    public static var resourceNumberLimitExceededException: Self { .init(.resourceNumberLimitExceededException) }
    /// The specified scheduler is not running.
    public static var schedulerNotRunningException: Self { .init(.schedulerNotRunningException) }
    /// The specified scheduler is already running.
    public static var schedulerRunningException: Self { .init(.schedulerRunningException) }
    /// The specified scheduler is transitioning.
    public static var schedulerTransitioningException: Self { .init(.schedulerTransitioningException) }
    /// A value could not be validated.
    public static var validationException: Self { .init(.validationException) }
    /// There was a version conflict.
    public static var versionMismatchException: Self { .init(.versionMismatchException) }
}

extension GlueErrorType: Equatable {
    public static func == (lhs: GlueErrorType, rhs: GlueErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension GlueErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
