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

/// Error enum for PI
public struct PIErrorType: AWSErrorType {
    enum Code: String {
        case internalServiceError = "InternalServiceError"
        case invalidArgumentException = "InvalidArgumentException"
        case notAuthorizedException = "NotAuthorizedException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize PI
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

    /// The request failed due to an unknown error.
    public static var internalServiceError: Self { .init(.internalServiceError) }
    /// One of the arguments provided is invalid for this request.
    public static var invalidArgumentException: Self { .init(.invalidArgumentException) }
    /// The user is not authorized to perform this request.
    public static var notAuthorizedException: Self { .init(.notAuthorizedException) }
}

extension PIErrorType: Equatable {
    public static func == (lhs: PIErrorType, rhs: PIErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension PIErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
