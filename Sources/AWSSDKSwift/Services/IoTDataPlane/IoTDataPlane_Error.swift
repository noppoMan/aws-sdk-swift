// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for IoTDataPlane
public enum IoTDataPlaneErrorType: AWSErrorType {
    case internalFailureException(message: String?)
    case invalidRequestException(message: String?)
    case unauthorizedException(message: String?)
    case methodNotAllowedException(message: String?)
    case resourceNotFoundException(message: String?)
    case throttlingException(message: String?)
    case serviceUnavailableException(message: String?)
    case unsupportedDocumentEncodingException(message: String?)
    case conflictException(message: String?)
    case requestEntityTooLargeException(message: String?)
}

extension IoTDataPlaneErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        case "MethodNotAllowedException":
            self = .methodNotAllowedException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "UnsupportedDocumentEncodingException":
            self = .unsupportedDocumentEncodingException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "RequestEntityTooLargeException":
            self = .requestEntityTooLargeException(message: message)
        default:
            return nil
        }
    }
}
