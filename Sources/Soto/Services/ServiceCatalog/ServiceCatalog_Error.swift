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

/// Error enum for ServiceCatalog
public struct ServiceCatalogErrorType: AWSErrorType {
    enum Code: String {
        case duplicateResourceException = "DuplicateResourceException"
        case invalidParametersException = "InvalidParametersException"
        case invalidStateException = "InvalidStateException"
        case limitExceededException = "LimitExceededException"
        case operationNotSupportedException = "OperationNotSupportedException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case tagOptionNotMigratedException = "TagOptionNotMigratedException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ServiceCatalog
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

    public static var duplicateResourceException: Self { .init(.duplicateResourceException) }
    public static var invalidParametersException: Self { .init(.invalidParametersException) }
    public static var invalidStateException: Self { .init(.invalidStateException) }
    public static var limitExceededException: Self { .init(.limitExceededException) }
    public static var operationNotSupportedException: Self { .init(.operationNotSupportedException) }
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    public static var tagOptionNotMigratedException: Self { .init(.tagOptionNotMigratedException) }
}

extension ServiceCatalogErrorType: Equatable {
    public static func == (lhs: ServiceCatalogErrorType, rhs: ServiceCatalogErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ServiceCatalogErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
