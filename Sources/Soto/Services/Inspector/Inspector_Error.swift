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

/// Error enum for Inspector
public struct InspectorErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case agentsAlreadyRunningAssessmentException = "AgentsAlreadyRunningAssessmentException"
        case assessmentRunInProgressException = "AssessmentRunInProgressException"
        case internalException = "InternalException"
        case invalidCrossAccountRoleException = "InvalidCrossAccountRoleException"
        case invalidInputException = "InvalidInputException"
        case limitExceededException = "LimitExceededException"
        case noSuchEntityException = "NoSuchEntityException"
        case previewGenerationInProgressException = "PreviewGenerationInProgressException"
        case serviceTemporarilyUnavailableException = "ServiceTemporarilyUnavailableException"
        case unsupportedFeatureException = "UnsupportedFeatureException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Inspector
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
    public static var agentsAlreadyRunningAssessmentException: Self { .init(.agentsAlreadyRunningAssessmentException) }
    public static var assessmentRunInProgressException: Self { .init(.assessmentRunInProgressException) }
    public static var internalException: Self { .init(.internalException) }
    public static var invalidCrossAccountRoleException: Self { .init(.invalidCrossAccountRoleException) }
    public static var invalidInputException: Self { .init(.invalidInputException) }
    public static var limitExceededException: Self { .init(.limitExceededException) }
    public static var noSuchEntityException: Self { .init(.noSuchEntityException) }
    public static var previewGenerationInProgressException: Self { .init(.previewGenerationInProgressException) }
    public static var serviceTemporarilyUnavailableException: Self { .init(.serviceTemporarilyUnavailableException) }
    public static var unsupportedFeatureException: Self { .init(.unsupportedFeatureException) }
}

extension InspectorErrorType: Equatable {
    public static func == (lhs: InspectorErrorType, rhs: InspectorErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension InspectorErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
