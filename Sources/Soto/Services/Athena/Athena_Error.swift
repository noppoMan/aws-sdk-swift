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

/// Error enum for Athena
public struct AthenaErrorType: AWSErrorType {
    enum Code: String {
        case internalServerException = "InternalServerException"
        case invalidRequestException = "InvalidRequestException"
        case metadataException = "MetadataException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Athena
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

    public static var internalServerException: Self { .init(.internalServerException) }
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    public static var metadataException: Self { .init(.metadataException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
}

extension AthenaErrorType: Equatable {
    public static func == (lhs: AthenaErrorType, rhs: AthenaErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension AthenaErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
