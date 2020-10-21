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

/// Error enum for ApplicationDiscoveryService
public struct ApplicationDiscoveryServiceErrorType: AWSErrorType {
    enum Code: String {
        case authorizationErrorException = "AuthorizationErrorException"
        case conflictErrorException = "ConflictErrorException"
        case homeRegionNotSetException = "HomeRegionNotSetException"
        case invalidParameterException = "InvalidParameterException"
        case invalidParameterValueException = "InvalidParameterValueException"
        case operationNotPermittedException = "OperationNotPermittedException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serverInternalErrorException = "ServerInternalErrorException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ApplicationDiscoveryService
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

    public static var authorizationErrorException: Self { .init(.authorizationErrorException) }
    public static var conflictErrorException: Self { .init(.conflictErrorException) }
    public static var homeRegionNotSetException: Self { .init(.homeRegionNotSetException) }
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    public static var invalidParameterValueException: Self { .init(.invalidParameterValueException) }
    public static var operationNotPermittedException: Self { .init(.operationNotPermittedException) }
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    public static var serverInternalErrorException: Self { .init(.serverInternalErrorException) }
}

extension ApplicationDiscoveryServiceErrorType: Equatable {
    public static func == (lhs: ApplicationDiscoveryServiceErrorType, rhs: ApplicationDiscoveryServiceErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ApplicationDiscoveryServiceErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
