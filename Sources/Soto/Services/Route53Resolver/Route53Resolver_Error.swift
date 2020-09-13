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

/// Error enum for Route53Resolver
public enum Route53ResolverErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case internalServiceErrorException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidParameterException(message: String?)
    case invalidPolicyDocument(message: String?)
    case invalidRequestException(message: String?)
    case invalidTagException(message: String?)
    case limitExceededException(message: String?)
    case resourceExistsException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourceUnavailableException(message: String?)
    case throttlingException(message: String?)
    case unknownResourceException(message: String?)
}

extension Route53ResolverErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "InternalServiceErrorException":
            self = .internalServiceErrorException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidPolicyDocument":
            self = .invalidPolicyDocument(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "InvalidTagException":
            self = .invalidTagException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceExistsException":
            self = .resourceExistsException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceUnavailableException":
            self = .resourceUnavailableException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "UnknownResourceException":
            self = .unknownResourceException(message: message)
        default:
            return nil
        }
    }
}

extension Route53ResolverErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .internalServiceErrorException(let message):
            return "InternalServiceErrorException: \(message ?? "")"
        case .invalidNextTokenException(let message):
            return "InvalidNextTokenException: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .invalidPolicyDocument(let message):
            return "InvalidPolicyDocument: \(message ?? "")"
        case .invalidRequestException(let message):
            return "InvalidRequestException: \(message ?? "")"
        case .invalidTagException(let message):
            return "InvalidTagException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .resourceExistsException(let message):
            return "ResourceExistsException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .resourceUnavailableException(let message):
            return "ResourceUnavailableException: \(message ?? "")"
        case .throttlingException(let message):
            return "ThrottlingException: \(message ?? "")"
        case .unknownResourceException(let message):
            return "UnknownResourceException: \(message ?? "")"
        }
    }
}
