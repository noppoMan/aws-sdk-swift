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

/// Error enum for SageMakerRuntime
public enum SageMakerRuntimeErrorType: AWSErrorType {
    case internalFailure(message: String?)
    case modelError(message: String?)
    case serviceUnavailable(message: String?)
    case validationError(message: String?)
}

extension SageMakerRuntimeErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalFailure":
            self = .internalFailure(message: message)
        case "ModelError":
            self = .modelError(message: message)
        case "ServiceUnavailable":
            self = .serviceUnavailable(message: message)
        case "ValidationError":
            self = .validationError(message: message)
        default:
            return nil
        }
    }
}

extension SageMakerRuntimeErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .internalFailure(let message):
            return "InternalFailure: \(message ?? "")"
        case .modelError(let message):
            return "ModelError: \(message ?? "")"
        case .serviceUnavailable(let message):
            return "ServiceUnavailable: \(message ?? "")"
        case .validationError(let message):
            return "ValidationError: \(message ?? "")"
        }
    }
}
