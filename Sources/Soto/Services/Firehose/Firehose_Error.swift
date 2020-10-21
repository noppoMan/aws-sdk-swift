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

/// Error enum for Firehose
public struct FirehoseErrorType: AWSErrorType {
    enum Code: String {
        case concurrentModificationException = "ConcurrentModificationException"
        case invalidArgumentException = "InvalidArgumentException"
        case invalidKMSResourceException = "InvalidKMSResourceException"
        case limitExceededException = "LimitExceededException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Firehose
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

    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    public static var invalidArgumentException: Self { .init(.invalidArgumentException) }
    public static var invalidKMSResourceException: Self { .init(.invalidKMSResourceException) }
    public static var limitExceededException: Self { .init(.limitExceededException) }
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
}

extension FirehoseErrorType: Equatable {
    public static func == (lhs: FirehoseErrorType, rhs: FirehoseErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension FirehoseErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
