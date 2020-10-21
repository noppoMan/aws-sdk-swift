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

/// Error enum for Pinpoint
public struct PinpointErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case conflictException = "ConflictException"
        case forbiddenException = "ForbiddenException"
        case internalServerErrorException = "InternalServerErrorException"
        case methodNotAllowedException = "MethodNotAllowedException"
        case notFoundException = "NotFoundException"
        case payloadTooLargeException = "PayloadTooLargeException"
        case tooManyRequestsException = "TooManyRequestsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Pinpoint
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

    public static var badRequestException: Self { .init(.badRequestException) }
    public static var conflictException: Self { .init(.conflictException) }
    public static var forbiddenException: Self { .init(.forbiddenException) }
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
    public static var methodNotAllowedException: Self { .init(.methodNotAllowedException) }
    public static var notFoundException: Self { .init(.notFoundException) }
    public static var payloadTooLargeException: Self { .init(.payloadTooLargeException) }
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
}

extension PinpointErrorType: Equatable {
    public static func == (lhs: PinpointErrorType, rhs: PinpointErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension PinpointErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
