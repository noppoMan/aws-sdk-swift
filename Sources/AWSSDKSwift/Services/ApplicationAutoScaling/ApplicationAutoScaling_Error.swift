// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ApplicationAutoScaling
public enum ApplicationAutoScalingErrorType: AWSErrorType {
    case validationException(message: String?)
    case limitExceededException(message: String?)
    case concurrentUpdateException(message: String?)
    case internalServiceException(message: String?)
    case objectNotFoundException(message: String?)
    case failedResourceAccessException(message: String?)
    case invalidNextTokenException(message: String?)
}

extension ApplicationAutoScalingErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ValidationException":
            self = .validationException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ConcurrentUpdateException":
            self = .concurrentUpdateException(message: message)
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "ObjectNotFoundException":
            self = .objectNotFoundException(message: message)
        case "FailedResourceAccessException":
            self = .failedResourceAccessException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        default:
            return nil
        }
    }
}
