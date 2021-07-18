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

/// Error enum for EBS
public struct EBSErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case concurrentLimitExceededException = "ConcurrentLimitExceededException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case requestThrottledException = "RequestThrottledException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize EBS
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

    /// You do not have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// You have reached the limit for concurrent API requests. For more information, see Optimizing performance of the EBS direct APIs in the Amazon Elastic Compute Cloud User Guide.
    public static var concurrentLimitExceededException: Self { .init(.concurrentLimitExceededException) }
    /// The request uses the same client token as a previous, but non-identical request.
    public static var conflictException: Self { .init(.conflictException) }
    /// An internal error has occurred.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The number of API requests has exceed the maximum allowed API request throttling limit.
    public static var requestThrottledException: Self { .init(.requestThrottledException) }
    /// The specified resource does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Your current service quotas do not allow you to perform this action.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The input fails to satisfy the constraints of the EBS direct APIs.
    public static var validationException: Self { .init(.validationException) }
}

extension EBSErrorType: Equatable {
    public static func == (lhs: EBSErrorType, rhs: EBSErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension EBSErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
