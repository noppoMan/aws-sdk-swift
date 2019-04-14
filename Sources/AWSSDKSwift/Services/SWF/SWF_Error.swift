// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for SWF
public enum SWFErrorType: AWSErrorType {
    case unknownResourceFault(message: String?)
    case typeDeprecatedFault(message: String?)
    case operationNotPermittedFault(message: String?)
    case limitExceededFault(message: String?)
    case domainDeprecatedFault(message: String?)
    case domainAlreadyExistsFault(message: String?)
    case typeAlreadyExistsFault(message: String?)
    case workflowExecutionAlreadyStartedFault(message: String?)
    case defaultUndefinedFault(message: String?)
}

extension SWFErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "UnknownResourceFault":
            self = .unknownResourceFault(message: message)
        case "TypeDeprecatedFault":
            self = .typeDeprecatedFault(message: message)
        case "OperationNotPermittedFault":
            self = .operationNotPermittedFault(message: message)
        case "LimitExceededFault":
            self = .limitExceededFault(message: message)
        case "DomainDeprecatedFault":
            self = .domainDeprecatedFault(message: message)
        case "DomainAlreadyExistsFault":
            self = .domainAlreadyExistsFault(message: message)
        case "TypeAlreadyExistsFault":
            self = .typeAlreadyExistsFault(message: message)
        case "WorkflowExecutionAlreadyStartedFault":
            self = .workflowExecutionAlreadyStartedFault(message: message)
        case "DefaultUndefinedFault":
            self = .defaultUndefinedFault(message: message)
        default:
            return nil
        }
    }
}
