// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for IoTJobsDataPlane
public enum IoTJobsDataPlaneErrorType: AWSErrorType {
    case certificateValidationException(message: String?)
    case invalidRequestException(message: String?)
    case invalidStateTransitionException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceUnavailableException(message: String?)
    case terminalStateException(message: String?)
    case throttlingException(message: String?)
}

extension IoTJobsDataPlaneErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "CertificateValidationException":
            self = .certificateValidationException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "InvalidStateTransitionException":
            self = .invalidStateTransitionException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "TerminalStateException":
            self = .terminalStateException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        default:
            return nil
        }
    }
}
