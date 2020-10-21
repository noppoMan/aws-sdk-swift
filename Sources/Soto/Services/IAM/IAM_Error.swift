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

/// Error enum for IAM
public struct IAMErrorType: AWSErrorType {
    enum Code: String {
        case concurrentModificationException = "ConcurrentModification"
        case credentialReportExpiredException = "ReportExpired"
        case credentialReportNotPresentException = "ReportNotPresent"
        case credentialReportNotReadyException = "ReportInProgress"
        case deleteConflictException = "DeleteConflict"
        case duplicateCertificateException = "DuplicateCertificate"
        case duplicateSSHPublicKeyException = "DuplicateSSHPublicKey"
        case entityAlreadyExistsException = "EntityAlreadyExists"
        case entityTemporarilyUnmodifiableException = "EntityTemporarilyUnmodifiable"
        case invalidAuthenticationCodeException = "InvalidAuthenticationCode"
        case invalidCertificateException = "InvalidCertificate"
        case invalidInputException = "InvalidInput"
        case invalidPublicKeyException = "InvalidPublicKey"
        case invalidUserTypeException = "InvalidUserType"
        case keyPairMismatchException = "KeyPairMismatch"
        case limitExceededException = "LimitExceeded"
        case malformedCertificateException = "MalformedCertificate"
        case malformedPolicyDocumentException = "MalformedPolicyDocument"
        case noSuchEntityException = "NoSuchEntity"
        case passwordPolicyViolationException = "PasswordPolicyViolation"
        case policyEvaluationException = "PolicyEvaluation"
        case policyNotAttachableException = "PolicyNotAttachable"
        case reportGenerationLimitExceededException = "ReportGenerationLimitExceeded"
        case serviceFailureException = "ServiceFailure"
        case serviceNotSupportedException = "NotSupportedService"
        case unmodifiableEntityException = "UnmodifiableEntity"
        case unrecognizedPublicKeyEncodingException = "UnrecognizedPublicKeyEncoding"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize IAM
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
    public static var credentialReportExpiredException: Self { .init(.credentialReportExpiredException) }
    public static var credentialReportNotPresentException: Self { .init(.credentialReportNotPresentException) }
    public static var credentialReportNotReadyException: Self { .init(.credentialReportNotReadyException) }
    public static var deleteConflictException: Self { .init(.deleteConflictException) }
    public static var duplicateCertificateException: Self { .init(.duplicateCertificateException) }
    public static var duplicateSSHPublicKeyException: Self { .init(.duplicateSSHPublicKeyException) }
    public static var entityAlreadyExistsException: Self { .init(.entityAlreadyExistsException) }
    public static var entityTemporarilyUnmodifiableException: Self { .init(.entityTemporarilyUnmodifiableException) }
    public static var invalidAuthenticationCodeException: Self { .init(.invalidAuthenticationCodeException) }
    public static var invalidCertificateException: Self { .init(.invalidCertificateException) }
    public static var invalidInputException: Self { .init(.invalidInputException) }
    public static var invalidPublicKeyException: Self { .init(.invalidPublicKeyException) }
    public static var invalidUserTypeException: Self { .init(.invalidUserTypeException) }
    public static var keyPairMismatchException: Self { .init(.keyPairMismatchException) }
    public static var limitExceededException: Self { .init(.limitExceededException) }
    public static var malformedCertificateException: Self { .init(.malformedCertificateException) }
    public static var malformedPolicyDocumentException: Self { .init(.malformedPolicyDocumentException) }
    public static var noSuchEntityException: Self { .init(.noSuchEntityException) }
    public static var passwordPolicyViolationException: Self { .init(.passwordPolicyViolationException) }
    public static var policyEvaluationException: Self { .init(.policyEvaluationException) }
    public static var policyNotAttachableException: Self { .init(.policyNotAttachableException) }
    public static var reportGenerationLimitExceededException: Self { .init(.reportGenerationLimitExceededException) }
    public static var serviceFailureException: Self { .init(.serviceFailureException) }
    public static var serviceNotSupportedException: Self { .init(.serviceNotSupportedException) }
    public static var unmodifiableEntityException: Self { .init(.unmodifiableEntityException) }
    public static var unrecognizedPublicKeyEncodingException: Self { .init(.unrecognizedPublicKeyEncodingException) }
}

extension IAMErrorType: Equatable {
    public static func == (lhs: IAMErrorType, rhs: IAMErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension IAMErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
