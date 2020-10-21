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

/// Error enum for CodeBuild
public struct CodeBuildErrorType: AWSErrorType {
    enum Code: String {
        case accountLimitExceededException = "AccountLimitExceededException"
        case invalidInputException = "InvalidInputException"
        case oAuthProviderException = "OAuthProviderException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CodeBuild
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

    public static var accountLimitExceededException: Self { .init(.accountLimitExceededException) }
    public static var invalidInputException: Self { .init(.invalidInputException) }
    public static var oAuthProviderException: Self { .init(.oAuthProviderException) }
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension CodeBuildErrorType: Equatable {
    public static func == (lhs: CodeBuildErrorType, rhs: CodeBuildErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CodeBuildErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
