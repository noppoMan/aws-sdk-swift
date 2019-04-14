// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Athena
public enum AthenaErrorType: AWSErrorType {
    case internalServerException(message: String?)
    case invalidRequestException(message: String?)
    case tooManyRequestsException(message: String?)
}

extension AthenaErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalServerException":
            self = .internalServerException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        default:
            return nil
        }
    }
}
