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
        case tooManyTagsException = "TooManyTagsException"
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

    /// You do not have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    public static var illegalActionException: Self { .init(.illegalActionException) }
    /// The request processing has failed because of an unknown error, exception or failure.
    public static var internalServiceErrorException: Self { .init(.internalServiceErrorException) }
    /// The action or operation requested is invalid. Verify that the action is typed correctly.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// A resource request is issued for a resource that already exists.
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    /// The maximum number of resources of that type already exist. Ensure the resources requested are within the boundaries of the service edition and your account limits.
    public static var resourceLimitExceededException: Self { .init(.resourceLimitExceededException) }
    /// A requested resource does not exist. It may have been deleted or referenced inaccurately.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The requested resource exists but is not in a status that can complete the operation.
    public static var resourceNotReadyException: Self { .init(.resourceNotReadyException) }
    /// The request or operation could not be performed because a service is throttling requests. The most common source of throttling errors is launching EC2 instances such that your service limit for EC2 instances is exceeded. Request a limit increase or delete unused resources if possible.
    public static var throttlingException: Self { .init(.throttlingException) }
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
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
