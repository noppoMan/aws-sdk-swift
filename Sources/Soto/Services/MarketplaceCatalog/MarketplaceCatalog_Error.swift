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

/// Error enum for MarketplaceCatalog
public struct MarketplaceCatalogErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case internalServiceException = "InternalServiceException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case resourceNotSupportedException = "ResourceNotSupportedException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MarketplaceCatalog
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
    public static var internalServiceException: Self { .init(.internalServiceException) }
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    public static var resourceNotSupportedException: Self { .init(.resourceNotSupportedException) }
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    public static var throttlingException: Self { .init(.throttlingException) }
    public static var validationException: Self { .init(.validationException) }
}

extension MarketplaceCatalogErrorType: Equatable {
    public static func == (lhs: MarketplaceCatalogErrorType, rhs: MarketplaceCatalogErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MarketplaceCatalogErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
