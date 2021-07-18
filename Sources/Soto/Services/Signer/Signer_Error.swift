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

/// Error enum for Signer
public struct SignerErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case badRequestException = "BadRequestException"
        case conflictException = "ConflictException"
        case internalServiceErrorException = "InternalServiceErrorException"
        case notFoundException = "NotFoundException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceLimitExceededException = "ServiceLimitExceededException"
        case throttlingException = "ThrottlingException"
        case tooManyRequestsException = "TooManyRequestsException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Signer
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
    /// The request contains invalid parameters for the ARN or tags. This exception also
    /// 			occurs when you call a tagging API on a cancelled signing profile.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// The resource encountered a conflicting state.
    public static var conflictException: Self { .init(.conflictException) }
    /// An internal error occurred.
    public static var internalServiceErrorException: Self { .init(.internalServiceErrorException) }
    /// The signing profile was not found.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// A specified resource could not be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The client is making a request that exceeds service limits.
    public static var serviceLimitExceededException: Self { .init(.serviceLimitExceededException) }
    /// The request was denied due to request throttling. Instead of this error, TooManyRequestsException should be used.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The allowed number of job-signing requests has been exceeded. 
    /// 		       This error supersedes the error ThrottlingException.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    /// You signing certificate could not be validated.
    public static var validationException: Self { .init(.validationException) }
}

extension SignerErrorType: Equatable {
    public static func == (lhs: SignerErrorType, rhs: SignerErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SignerErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
