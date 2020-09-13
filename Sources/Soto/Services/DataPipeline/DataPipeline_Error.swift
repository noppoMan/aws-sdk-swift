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

/// Error enum for DataPipeline
public enum DataPipelineErrorType: AWSErrorType {
    case internalServiceError(message: String?)
    case invalidRequestException(message: String?)
    case pipelineDeletedException(message: String?)
    case pipelineNotFoundException(message: String?)
    case taskNotFoundException(message: String?)
}

extension DataPipelineErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalServiceError":
            self = .internalServiceError(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "PipelineDeletedException":
            self = .pipelineDeletedException(message: message)
        case "PipelineNotFoundException":
            self = .pipelineNotFoundException(message: message)
        case "TaskNotFoundException":
            self = .taskNotFoundException(message: message)
        default:
            return nil
        }
    }
}

extension DataPipelineErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .internalServiceError(let message):
            return "InternalServiceError: \(message ?? "")"
        case .invalidRequestException(let message):
            return "InvalidRequestException: \(message ?? "")"
        case .pipelineDeletedException(let message):
            return "PipelineDeletedException: \(message ?? "")"
        case .pipelineNotFoundException(let message):
            return "PipelineNotFoundException: \(message ?? "")"
        case .taskNotFoundException(let message):
            return "TaskNotFoundException: \(message ?? "")"
        }
    }
}
