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

/// Error enum for CognitoSync
public enum CognitoSyncErrorType: AWSErrorType {
    case alreadyStreamedException(message: String?)
    case concurrentModificationException(message: String?)
    case duplicateRequestException(message: String?)
    case internalErrorException(message: String?)
    case invalidConfigurationException(message: String?)
    case invalidLambdaFunctionOutputException(message: String?)
    case invalidParameterException(message: String?)
    case lambdaThrottledException(message: String?)
    case limitExceededException(message: String?)
    case notAuthorizedException(message: String?)
    case resourceConflictException(message: String?)
    case resourceNotFoundException(message: String?)
    case tooManyRequestsException(message: String?)
}

extension CognitoSyncErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AlreadyStreamed":
            self = .alreadyStreamedException(message: message)
        case "ConcurrentModification":
            self = .concurrentModificationException(message: message)
        case "DuplicateRequest":
            self = .duplicateRequestException(message: message)
        case "InternalError":
            self = .internalErrorException(message: message)
        case "InvalidConfiguration":
            self = .invalidConfigurationException(message: message)
        case "InvalidLambdaFunctionOutput":
            self = .invalidLambdaFunctionOutputException(message: message)
        case "InvalidParameter":
            self = .invalidParameterException(message: message)
        case "LambdaThrottled":
            self = .lambdaThrottledException(message: message)
        case "LimitExceeded":
            self = .limitExceededException(message: message)
        case "NotAuthorizedError":
            self = .notAuthorizedException(message: message)
        case "ResourceConflict":
            self = .resourceConflictException(message: message)
        case "ResourceNotFound":
            self = .resourceNotFoundException(message: message)
        case "TooManyRequests":
            self = .tooManyRequestsException(message: message)
        default:
            return nil
        }
    }
}

extension CognitoSyncErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .alreadyStreamedException(let message):
            return "AlreadyStreamed: \(message ?? "")"
        case .concurrentModificationException(let message):
            return "ConcurrentModification: \(message ?? "")"
        case .duplicateRequestException(let message):
            return "DuplicateRequest: \(message ?? "")"
        case .internalErrorException(let message):
            return "InternalError: \(message ?? "")"
        case .invalidConfigurationException(let message):
            return "InvalidConfiguration: \(message ?? "")"
        case .invalidLambdaFunctionOutputException(let message):
            return "InvalidLambdaFunctionOutput: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameter: \(message ?? "")"
        case .lambdaThrottledException(let message):
            return "LambdaThrottled: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceeded: \(message ?? "")"
        case .notAuthorizedException(let message):
            return "NotAuthorizedError: \(message ?? "")"
        case .resourceConflictException(let message):
            return "ResourceConflict: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFound: \(message ?? "")"
        case .tooManyRequestsException(let message):
            return "TooManyRequests: \(message ?? "")"
        }
    }
}
