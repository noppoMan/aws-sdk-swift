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

/// Error enum for AppSync
public struct AppSyncErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case apiKeyLimitExceededException = "ApiKeyLimitExceededException"
        case apiKeyValidityOutOfBoundsException = "ApiKeyValidityOutOfBoundsException"
        case apiLimitExceededException = "ApiLimitExceededException"
        case badRequestException = "BadRequestException"
        case concurrentModificationException = "ConcurrentModificationException"
        case graphQLSchemaException = "GraphQLSchemaException"
        case internalFailureException = "InternalFailureException"
        case limitExceededException = "LimitExceededException"
        case notFoundException = "NotFoundException"
        case unauthorizedException = "UnauthorizedException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize AppSync
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
    public static var apiKeyLimitExceededException: Self { .init(.apiKeyLimitExceededException) }
    public static var apiKeyValidityOutOfBoundsException: Self { .init(.apiKeyValidityOutOfBoundsException) }
    public static var apiLimitExceededException: Self { .init(.apiLimitExceededException) }
    public static var badRequestException: Self { .init(.badRequestException) }
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    public static var graphQLSchemaException: Self { .init(.graphQLSchemaException) }
    public static var internalFailureException: Self { .init(.internalFailureException) }
    public static var limitExceededException: Self { .init(.limitExceededException) }
    public static var notFoundException: Self { .init(.notFoundException) }
    public static var unauthorizedException: Self { .init(.unauthorizedException) }
}

extension AppSyncErrorType: Equatable {
    public static func == (lhs: AppSyncErrorType, rhs: AppSyncErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension AppSyncErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
