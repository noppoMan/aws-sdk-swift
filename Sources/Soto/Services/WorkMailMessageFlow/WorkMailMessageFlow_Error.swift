//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import SotoCore

/// Error enum for WorkMailMessageFlow
public struct WorkMailMessageFlowErrorType: AWSErrorType {
    enum Code: String {
        case invalidContentLocation = "InvalidContentLocation"
        case messageFrozen = "MessageFrozen"
        case messageRejected = "MessageRejected"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize WorkMailMessageFlow
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

    /// WorkMail could not access the updated email content. Possible reasons:   You made the request in a region other than your S3 bucket region.   The S3 bucket owner is not the  same as the calling AWS account.   You have an incomplete or missing S3 bucket policy. For more information about policies, see   Updating message content with AWS Lambda in the WorkMail Administrator Guide.  
    public static var invalidContentLocation: Self { .init(.invalidContentLocation) }
    /// The requested email is not eligible for update. This is usually the case for a redirected email.
    public static var messageFrozen: Self { .init(.messageFrozen) }
    /// The requested email could not be updated due to an error in the MIME content. Check the error message for more information about  what caused the error.
    public static var messageRejected: Self { .init(.messageRejected) }
    /// The requested email message is not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension WorkMailMessageFlowErrorType: Equatable {
    public static func == (lhs: WorkMailMessageFlowErrorType, rhs: WorkMailMessageFlowErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension WorkMailMessageFlowErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
