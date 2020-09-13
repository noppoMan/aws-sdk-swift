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

/// Error enum for Batch
public enum BatchErrorType: AWSErrorType {
    case clientException(message: String?)
    case serverException(message: String?)
}

extension BatchErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ClientException":
            self = .clientException(message: message)
        case "ServerException":
            self = .serverException(message: message)
        default:
            return nil
        }
    }
}

extension BatchErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .clientException(let message):
            return "ClientException: \(message ?? "")"
        case .serverException(let message):
            return "ServerException: \(message ?? "")"
        }
    }
}
