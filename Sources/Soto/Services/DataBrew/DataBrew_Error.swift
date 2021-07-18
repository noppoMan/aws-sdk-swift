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

/// Error enum for DataBrew
public struct DataBrewErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize DataBrew
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

    /// Access to the specified resource was denied.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Updating or deleting a resource can cause an inconsistent state.
    public static var conflictException: Self { .init(.conflictException) }
    /// An internal service failure occurred.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// One or more resources can't be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// A service quota is exceeded.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The input parameters for this request failed validation.
    public static var validationException: Self { .init(.validationException) }
}

extension DataBrewErrorType: Equatable {
    public static func == (lhs: DataBrewErrorType, rhs: DataBrewErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension DataBrewErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
