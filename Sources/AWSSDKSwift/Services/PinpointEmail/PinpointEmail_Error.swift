// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for PinpointEmail
public enum PinpointEmailErrorType: AWSErrorType {
    case notFoundException(message: String?)
    case tooManyRequestsException(message: String?)
    case badRequestException(message: String?)
    case alreadyExistsException(message: String?)
    case limitExceededException(message: String?)
    case accountSuspendedException(message: String?)
    case sendingPausedException(message: String?)
    case messageRejected(message: String?)
    case mailFromDomainNotVerifiedException(message: String?)
}

extension PinpointEmailErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "AccountSuspendedException":
            self = .accountSuspendedException(message: message)
        case "SendingPausedException":
            self = .sendingPausedException(message: message)
        case "MessageRejected":
            self = .messageRejected(message: message)
        case "MailFromDomainNotVerifiedException":
            self = .mailFromDomainNotVerifiedException(message: message)
        default:
            return nil
        }
    }
}