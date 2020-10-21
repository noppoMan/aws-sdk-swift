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

/// Error enum for SecretsManager
public struct SecretsManagerErrorType: AWSErrorType {
    enum Code: String {
        case decryptionFailure = "DecryptionFailure"
        case encryptionFailure = "EncryptionFailure"
        case internalServiceError = "InternalServiceError"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidParameterException = "InvalidParameterException"
        case invalidRequestException = "InvalidRequestException"
        case limitExceededException = "LimitExceededException"
        case malformedPolicyDocumentException = "MalformedPolicyDocumentException"
        case preconditionNotMetException = "PreconditionNotMetException"
        case publicPolicyException = "PublicPolicyException"
        case resourceExistsException = "ResourceExistsException"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SecretsManager
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

    public static var decryptionFailure: Self { .init(.decryptionFailure) }
    public static var encryptionFailure: Self { .init(.encryptionFailure) }
    public static var internalServiceError: Self { .init(.internalServiceError) }
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    public static var limitExceededException: Self { .init(.limitExceededException) }
    public static var malformedPolicyDocumentException: Self { .init(.malformedPolicyDocumentException) }
    public static var preconditionNotMetException: Self { .init(.preconditionNotMetException) }
    public static var publicPolicyException: Self { .init(.publicPolicyException) }
    public static var resourceExistsException: Self { .init(.resourceExistsException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension SecretsManagerErrorType: Equatable {
    public static func == (lhs: SecretsManagerErrorType, rhs: SecretsManagerErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SecretsManagerErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
