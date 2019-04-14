// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for KinesisAnalytics
public enum KinesisAnalyticsErrorType: AWSErrorType {
    case resourceNotFoundException(message: String?)
    case resourceInUseException(message: String?)
    case unsupportedOperationException(message: String?)
    case invalidArgumentException(message: String?)
    case invalidApplicationConfigurationException(message: String?)
    case concurrentModificationException(message: String?)
    case unableToDetectSchemaException(message: String?)
    case resourceProvisionedThroughputExceededException(message: String?)
    case serviceUnavailableException(message: String?)
    case codeValidationException(message: String?)
    case limitExceededException(message: String?)
}

extension KinesisAnalyticsErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "UnsupportedOperationException":
            self = .unsupportedOperationException(message: message)
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "InvalidApplicationConfigurationException":
            self = .invalidApplicationConfigurationException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "UnableToDetectSchemaException":
            self = .unableToDetectSchemaException(message: message)
        case "ResourceProvisionedThroughputExceededException":
            self = .resourceProvisionedThroughputExceededException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "CodeValidationException":
            self = .codeValidationException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        default:
            return nil
        }
    }
}
