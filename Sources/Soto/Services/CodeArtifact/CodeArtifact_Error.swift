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

/// Error enum for Codeartifact
public struct CodeartifactErrorType: AWSErrorType {
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

    /// initialize Codeartifact
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

    ///  The operation did not succeed because of an unauthorized access attempt. 
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    ///  The operation did not succeed because prerequisites are not met. 
    public static var conflictException: Self { .init(.conflictException) }
    ///  The operation did not succeed because of an error that occurred inside AWS CodeArtifact. 
    public static var internalServerException: Self { .init(.internalServerException) }
    ///  The operation did not succeed because the resource requested is not found in the service. 
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    ///  The operation did not succeed because it would have exceeded a service limit for your account. 
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    ///  The operation did not succeed because too many requests are sent to the service. 
    public static var throttlingException: Self { .init(.throttlingException) }
    ///  The operation did not succeed because a parameter in the request was sent with an invalid value. 
    public static var validationException: Self { .init(.validationException) }
}

extension CodeartifactErrorType: Equatable {
    public static func == (lhs: CodeartifactErrorType, rhs: CodeartifactErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CodeartifactErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
