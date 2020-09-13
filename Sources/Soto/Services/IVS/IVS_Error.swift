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

/// Error enum for IVS
public enum IVSErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case channelNotBroadcasting(message: String?)
    case conflictException(message: String?)
    case internalServerException(message: String?)
    case pendingVerification(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceQuotaExceededException(message: String?)
    case streamUnavailable(message: String?)
    case throttlingException(message: String?)
    case validationException(message: String?)
}

extension IVSErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "ChannelNotBroadcasting":
            self = .channelNotBroadcasting(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "InternalServerException":
            self = .internalServerException(message: message)
        case "PendingVerification":
            self = .pendingVerification(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceQuotaExceededException":
            self = .serviceQuotaExceededException(message: message)
        case "StreamUnavailable":
            self = .streamUnavailable(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        default:
            return nil
        }
    }
}

extension IVSErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .channelNotBroadcasting(let message):
            return "ChannelNotBroadcasting: \(message ?? "")"
        case .conflictException(let message):
            return "ConflictException: \(message ?? "")"
        case .internalServerException(let message):
            return "InternalServerException: \(message ?? "")"
        case .pendingVerification(let message):
            return "PendingVerification: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .serviceQuotaExceededException(let message):
            return "ServiceQuotaExceededException: \(message ?? "")"
        case .streamUnavailable(let message):
            return "StreamUnavailable: \(message ?? "")"
        case .throttlingException(let message):
            return "ThrottlingException: \(message ?? "")"
        case .validationException(let message):
            return "ValidationException: \(message ?? "")"
        }
    }
}
