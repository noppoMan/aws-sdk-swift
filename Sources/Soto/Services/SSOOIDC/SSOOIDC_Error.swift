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

/// Error enum for SSOOIDC
public struct SSOOIDCErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case authorizationPendingException = "AuthorizationPendingException"
        case expiredTokenException = "ExpiredTokenException"
        case internalServerException = "InternalServerException"
        case invalidClientException = "InvalidClientException"
        case invalidClientMetadataException = "InvalidClientMetadataException"
        case invalidGrantException = "InvalidGrantException"
        case invalidRequestException = "InvalidRequestException"
        case invalidScopeException = "InvalidScopeException"
        case slowDownException = "SlowDownException"
        case unauthorizedClientException = "UnauthorizedClientException"
        case unsupportedGrantTypeException = "UnsupportedGrantTypeException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SSOOIDC
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
    public static var authorizationPendingException: Self { .init(.authorizationPendingException) }
    public static var expiredTokenException: Self { .init(.expiredTokenException) }
    public static var internalServerException: Self { .init(.internalServerException) }
    public static var invalidClientException: Self { .init(.invalidClientException) }
    public static var invalidClientMetadataException: Self { .init(.invalidClientMetadataException) }
    public static var invalidGrantException: Self { .init(.invalidGrantException) }
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    public static var invalidScopeException: Self { .init(.invalidScopeException) }
    public static var slowDownException: Self { .init(.slowDownException) }
    public static var unauthorizedClientException: Self { .init(.unauthorizedClientException) }
    public static var unsupportedGrantTypeException: Self { .init(.unsupportedGrantTypeException) }
}

extension SSOOIDCErrorType: Equatable {
    public static func == (lhs: SSOOIDCErrorType, rhs: SSOOIDCErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SSOOIDCErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
