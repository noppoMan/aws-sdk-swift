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

/// Error enum for WAFRegional
public struct WAFRegionalErrorType: AWSErrorType {
    enum Code: String {
        case wAFBadRequestException = "WAFBadRequestException"
        case wAFDisallowedNameException = "WAFDisallowedNameException"
        case wAFEntityMigrationException = "WAFEntityMigrationException"
        case wAFInternalErrorException = "WAFInternalErrorException"
        case wAFInvalidAccountException = "WAFInvalidAccountException"
        case wAFInvalidOperationException = "WAFInvalidOperationException"
        case wAFInvalidParameterException = "WAFInvalidParameterException"
        case wAFInvalidPermissionPolicyException = "WAFInvalidPermissionPolicyException"
        case wAFInvalidRegexPatternException = "WAFInvalidRegexPatternException"
        case wAFLimitsExceededException = "WAFLimitsExceededException"
        case wAFNonEmptyEntityException = "WAFNonEmptyEntityException"
        case wAFNonexistentContainerException = "WAFNonexistentContainerException"
        case wAFNonexistentItemException = "WAFNonexistentItemException"
        case wAFReferencedItemException = "WAFReferencedItemException"
        case wAFServiceLinkedRoleErrorException = "WAFServiceLinkedRoleErrorException"
        case wAFStaleDataException = "WAFStaleDataException"
        case wAFSubscriptionNotFoundException = "WAFSubscriptionNotFoundException"
        case wAFTagOperationException = "WAFTagOperationException"
        case wAFTagOperationInternalErrorException = "WAFTagOperationInternalErrorException"
        case wAFUnavailableEntityException = "WAFUnavailableEntityException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize WAFRegional
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

    public static var wAFBadRequestException: Self { .init(.wAFBadRequestException) }
    public static var wAFDisallowedNameException: Self { .init(.wAFDisallowedNameException) }
    public static var wAFEntityMigrationException: Self { .init(.wAFEntityMigrationException) }
    public static var wAFInternalErrorException: Self { .init(.wAFInternalErrorException) }
    public static var wAFInvalidAccountException: Self { .init(.wAFInvalidAccountException) }
    public static var wAFInvalidOperationException: Self { .init(.wAFInvalidOperationException) }
    public static var wAFInvalidParameterException: Self { .init(.wAFInvalidParameterException) }
    public static var wAFInvalidPermissionPolicyException: Self { .init(.wAFInvalidPermissionPolicyException) }
    public static var wAFInvalidRegexPatternException: Self { .init(.wAFInvalidRegexPatternException) }
    public static var wAFLimitsExceededException: Self { .init(.wAFLimitsExceededException) }
    public static var wAFNonEmptyEntityException: Self { .init(.wAFNonEmptyEntityException) }
    public static var wAFNonexistentContainerException: Self { .init(.wAFNonexistentContainerException) }
    public static var wAFNonexistentItemException: Self { .init(.wAFNonexistentItemException) }
    public static var wAFReferencedItemException: Self { .init(.wAFReferencedItemException) }
    public static var wAFServiceLinkedRoleErrorException: Self { .init(.wAFServiceLinkedRoleErrorException) }
    public static var wAFStaleDataException: Self { .init(.wAFStaleDataException) }
    public static var wAFSubscriptionNotFoundException: Self { .init(.wAFSubscriptionNotFoundException) }
    public static var wAFTagOperationException: Self { .init(.wAFTagOperationException) }
    public static var wAFTagOperationInternalErrorException: Self { .init(.wAFTagOperationInternalErrorException) }
    public static var wAFUnavailableEntityException: Self { .init(.wAFUnavailableEntityException) }
}

extension WAFRegionalErrorType: Equatable {
    public static func == (lhs: WAFRegionalErrorType, rhs: WAFRegionalErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension WAFRegionalErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
