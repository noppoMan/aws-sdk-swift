// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ElasticTranscoder
public enum ElasticTranscoderErrorType: AWSErrorType {
    case validationException(message: String?)
    case incompatibleVersionException(message: String?)
    case resourceNotFoundException(message: String?)
    case accessDeniedException(message: String?)
    case internalServiceException(message: String?)
    case resourceInUseException(message: String?)
    case limitExceededException(message: String?)
}

extension ElasticTranscoderErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ValidationException":
            self = .validationException(message: message)
        case "IncompatibleVersionException":
            self = .incompatibleVersionException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        default:
            return nil
        }
    }
}
