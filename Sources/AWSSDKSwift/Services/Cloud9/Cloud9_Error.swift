// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Cloud9
public enum Cloud9ErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case conflictException(message: String?)
    case notFoundException(message: String?)
    case forbiddenException(message: String?)
    case tooManyRequestsException(message: String?)
    case limitExceededException(message: String?)
    case internalServerErrorException(message: String?)
}

extension Cloud9ErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "ForbiddenException":
            self = .forbiddenException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "InternalServerErrorException":
            self = .internalServerErrorException(message: message)
        default:
            return nil
        }
    }
}
