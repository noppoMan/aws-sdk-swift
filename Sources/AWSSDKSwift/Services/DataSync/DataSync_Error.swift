// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for DataSync
public enum DataSyncErrorType: AWSErrorType {
    case internalException(message: String?)
    case invalidRequestException(message: String?)
}

extension DataSyncErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalException":
            self = .internalException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        default:
            return nil
        }
    }
}
