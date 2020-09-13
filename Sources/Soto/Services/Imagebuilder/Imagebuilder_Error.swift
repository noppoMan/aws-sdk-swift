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

/// Error enum for Imagebuilder
public enum ImagebuilderErrorType: AWSErrorType {
    case callRateLimitExceededException(message: String?)
    case clientException(message: String?)
    case forbiddenException(message: String?)
    case idempotentParameterMismatchException(message: String?)
    case invalidPaginationTokenException(message: String?)
    case invalidParameterCombinationException(message: String?)
    case invalidParameterException(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidRequestException(message: String?)
    case invalidVersionNumberException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case resourceDependencyException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceException(message: String?)
    case serviceQuotaExceededException(message: String?)
    case serviceUnavailableException(message: String?)
}

extension ImagebuilderErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "CallRateLimitExceededException":
            self = .callRateLimitExceededException(message: message)
        case "ClientException":
            self = .clientException(message: message)
        case "ForbiddenException":
            self = .forbiddenException(message: message)
        case "IdempotentParameterMismatchException":
            self = .idempotentParameterMismatchException(message: message)
        case "InvalidPaginationTokenException":
            self = .invalidPaginationTokenException(message: message)
        case "InvalidParameterCombinationException":
            self = .invalidParameterCombinationException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "InvalidVersionNumberException":
            self = .invalidVersionNumberException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ResourceDependencyException":
            self = .resourceDependencyException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceException":
            self = .serviceException(message: message)
        case "ServiceQuotaExceededException":
            self = .serviceQuotaExceededException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        default:
            return nil
        }
    }
}

extension ImagebuilderErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .callRateLimitExceededException(let message):
            return "CallRateLimitExceededException: \(message ?? "")"
        case .clientException(let message):
            return "ClientException: \(message ?? "")"
        case .forbiddenException(let message):
            return "ForbiddenException: \(message ?? "")"
        case .idempotentParameterMismatchException(let message):
            return "IdempotentParameterMismatchException: \(message ?? "")"
        case .invalidPaginationTokenException(let message):
            return "InvalidPaginationTokenException: \(message ?? "")"
        case .invalidParameterCombinationException(let message):
            return "InvalidParameterCombinationException: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .invalidParameterValueException(let message):
            return "InvalidParameterValueException: \(message ?? "")"
        case .invalidRequestException(let message):
            return "InvalidRequestException: \(message ?? "")"
        case .invalidVersionNumberException(let message):
            return "InvalidVersionNumberException: \(message ?? "")"
        case .resourceAlreadyExistsException(let message):
            return "ResourceAlreadyExistsException: \(message ?? "")"
        case .resourceDependencyException(let message):
            return "ResourceDependencyException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .serviceException(let message):
            return "ServiceException: \(message ?? "")"
        case .serviceQuotaExceededException(let message):
            return "ServiceQuotaExceededException: \(message ?? "")"
        case .serviceUnavailableException(let message):
            return "ServiceUnavailableException: \(message ?? "")"
        }
    }
}
