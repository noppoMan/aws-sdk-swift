// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for MediaStoreData
public enum MediaStoreDataErrorType: AWSErrorType {
    case containerNotFoundException(message: String?)
    case internalServerError(message: String?)
    case objectNotFoundException(message: String?)
    case requestedRangeNotSatisfiableException(message: String?)
}

extension MediaStoreDataErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ContainerNotFoundException":
            self = .containerNotFoundException(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "ObjectNotFoundException":
            self = .objectNotFoundException(message: message)
        case "RequestedRangeNotSatisfiableException":
            self = .requestedRangeNotSatisfiableException(message: message)
        default:
            return nil
        }
    }
}
