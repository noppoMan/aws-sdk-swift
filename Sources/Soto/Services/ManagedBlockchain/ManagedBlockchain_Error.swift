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

/// Error enum for ManagedBlockchain
public struct ManagedBlockchainErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case illegalActionException = "IllegalActionException"
        case internalServiceErrorException = "InternalServiceErrorException"
        case invalidRequestException = "InvalidRequestException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceLimitExceededException = "ResourceLimitExceededException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case resourceNotReadyException = "ResourceNotReadyException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ManagedBlockchain
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
    public static var illegalActionException: Self { .init(.illegalActionException) }
    public static var internalServiceErrorException: Self { .init(.internalServiceErrorException) }
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    public static var resourceLimitExceededException: Self { .init(.resourceLimitExceededException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    public static var resourceNotReadyException: Self { .init(.resourceNotReadyException) }
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension ManagedBlockchainErrorType: Equatable {
    public static func == (lhs: ManagedBlockchainErrorType, rhs: ManagedBlockchainErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ManagedBlockchainErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
