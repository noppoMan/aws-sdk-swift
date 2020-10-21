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

/// Error enum for TimestreamQuery
public struct TimestreamQueryErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case invalidEndpointException = "InvalidEndpointException"
        case queryExecutionException = "QueryExecutionException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize TimestreamQuery
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

    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    public static var conflictException: Self { .init(.conflictException) }
    public static var internalServerException: Self { .init(.internalServerException) }
    public static var invalidEndpointException: Self { .init(.invalidEndpointException) }
    public static var queryExecutionException: Self { .init(.queryExecutionException) }
    public static var throttlingException: Self { .init(.throttlingException) }
    public static var validationException: Self { .init(.validationException) }
}

extension TimestreamQueryErrorType: Equatable {
    public static func == (lhs: TimestreamQueryErrorType, rhs: TimestreamQueryErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension TimestreamQueryErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
