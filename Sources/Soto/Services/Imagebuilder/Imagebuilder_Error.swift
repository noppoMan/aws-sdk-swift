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

/// Error enum for Imagebuilder
public struct ImagebuilderErrorType: AWSErrorType {
    enum Code: String {
        case callRateLimitExceededException = "CallRateLimitExceededException"
        case clientException = "ClientException"
        case forbiddenException = "ForbiddenException"
        case idempotentParameterMismatchException = "IdempotentParameterMismatchException"
        case invalidPaginationTokenException = "InvalidPaginationTokenException"
        case invalidParameterCombinationException = "InvalidParameterCombinationException"
        case invalidParameterException = "InvalidParameterException"
        case invalidParameterValueException = "InvalidParameterValueException"
        case invalidRequestException = "InvalidRequestException"
        case invalidVersionNumberException = "InvalidVersionNumberException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceDependencyException = "ResourceDependencyException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceException = "ServiceException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case serviceUnavailableException = "ServiceUnavailableException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Imagebuilder
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

    public static var callRateLimitExceededException: Self { .init(.callRateLimitExceededException) }
    public static var clientException: Self { .init(.clientException) }
    public static var forbiddenException: Self { .init(.forbiddenException) }
    public static var idempotentParameterMismatchException: Self { .init(.idempotentParameterMismatchException) }
    public static var invalidPaginationTokenException: Self { .init(.invalidPaginationTokenException) }
    public static var invalidParameterCombinationException: Self { .init(.invalidParameterCombinationException) }
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    public static var invalidParameterValueException: Self { .init(.invalidParameterValueException) }
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    public static var invalidVersionNumberException: Self { .init(.invalidVersionNumberException) }
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    public static var resourceDependencyException: Self { .init(.resourceDependencyException) }
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    public static var serviceException: Self { .init(.serviceException) }
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
}

extension ImagebuilderErrorType: Equatable {
    public static func == (lhs: ImagebuilderErrorType, rhs: ImagebuilderErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ImagebuilderErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
