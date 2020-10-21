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

/// Error enum for CostandUsageReportService
public struct CostandUsageReportServiceErrorType: AWSErrorType {
    enum Code: String {
        case duplicateReportNameException = "DuplicateReportNameException"
        case internalErrorException = "InternalErrorException"
        case reportLimitReachedException = "ReportLimitReachedException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CostandUsageReportService
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

    public static var duplicateReportNameException: Self { .init(.duplicateReportNameException) }
    public static var internalErrorException: Self { .init(.internalErrorException) }
    public static var reportLimitReachedException: Self { .init(.reportLimitReachedException) }
    public static var validationException: Self { .init(.validationException) }
}

extension CostandUsageReportServiceErrorType: Equatable {
    public static func == (lhs: CostandUsageReportServiceErrorType, rhs: CostandUsageReportServiceErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CostandUsageReportServiceErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
