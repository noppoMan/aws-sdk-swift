// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for APIGateway
public enum APIGatewayErrorType: AWSErrorType {
    case unauthorizedException(message: String?)
    case notFoundException(message: String?)
    case tooManyRequestsException(message: String?)
    case conflictException(message: String?)
    case badRequestException(message: String?)
    case limitExceededException(message: String?)
    case serviceUnavailableException(message: String?)
}

extension APIGatewayErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        default:
            return nil
        }
    }
}
