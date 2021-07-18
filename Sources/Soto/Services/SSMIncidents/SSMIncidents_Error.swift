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

/// Error enum for SSMIncidents
public struct SSMIncidentsErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SSMIncidents
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

    /// You don't have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Updating or deleting a resource causes an inconsistent state.
    public static var conflictException: Self { .init(.conflictException) }
    /// The request processing has failed because of an unknown error, exception or failure.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// Request references a resource which does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Request would cause a service quota to be exceeded.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The request was denied due to request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The input fails to satisfy the constraints specified by an AWS service.
    public static var validationException: Self { .init(.validationException) }
}

extension SSMIncidentsErrorType: Equatable {
    public static func == (lhs: SSMIncidentsErrorType, rhs: SSMIncidentsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SSMIncidentsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
