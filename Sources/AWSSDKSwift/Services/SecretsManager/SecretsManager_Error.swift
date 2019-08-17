// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for SecretsManager
public enum SecretsManagerErrorType: AWSErrorType {
    case decryptionFailure(message: String?)
    case encryptionFailure(message: String?)
    case internalServiceError(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidParameterException(message: String?)
    case invalidRequestException(message: String?)
    case limitExceededException(message: String?)
    case malformedPolicyDocumentException(message: String?)
    case preconditionNotMetException(message: String?)
    case resourceExistsException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension SecretsManagerErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "DecryptionFailure":
            self = .decryptionFailure(message: message)
        case "EncryptionFailure":
            self = .encryptionFailure(message: message)
        case "InternalServiceError":
            self = .internalServiceError(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "MalformedPolicyDocumentException":
            self = .malformedPolicyDocumentException(message: message)
        case "PreconditionNotMetException":
            self = .preconditionNotMetException(message: message)
        case "ResourceExistsException":
            self = .resourceExistsException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}
