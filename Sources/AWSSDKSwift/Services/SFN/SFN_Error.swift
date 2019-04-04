// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for SFN
public enum SFNErrorType: AWSErrorType {
    case taskDoesNotExist(message: String?)
    case invalidOutput(message: String?)
    case invalidToken(message: String?)
    case taskTimedOut(message: String?)
    case invalidArn(message: String?)
    case invalidDefinition(message: String?)
    case missingRequiredParameter(message: String?)
    case stateMachineDeleting(message: String?)
    case stateMachineDoesNotExist(message: String?)
    case activityDoesNotExist(message: String?)
    case activityWorkerLimitExceeded(message: String?)
    case executionDoesNotExist(message: String?)
    case activityLimitExceeded(message: String?)
    case invalidName(message: String?)
    case executionLimitExceeded(message: String?)
    case executionAlreadyExists(message: String?)
    case invalidExecutionInput(message: String?)
    case stateMachineAlreadyExists(message: String?)
    case stateMachineLimitExceeded(message: String?)
}

extension SFNErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "TaskDoesNotExist":
            self = .taskDoesNotExist(message: message)
        case "InvalidOutput":
            self = .invalidOutput(message: message)
        case "InvalidToken":
            self = .invalidToken(message: message)
        case "TaskTimedOut":
            self = .taskTimedOut(message: message)
        case "InvalidArn":
            self = .invalidArn(message: message)
        case "InvalidDefinition":
            self = .invalidDefinition(message: message)
        case "MissingRequiredParameter":
            self = .missingRequiredParameter(message: message)
        case "StateMachineDeleting":
            self = .stateMachineDeleting(message: message)
        case "StateMachineDoesNotExist":
            self = .stateMachineDoesNotExist(message: message)
        case "ActivityDoesNotExist":
            self = .activityDoesNotExist(message: message)
        case "ActivityWorkerLimitExceeded":
            self = .activityWorkerLimitExceeded(message: message)
        case "ExecutionDoesNotExist":
            self = .executionDoesNotExist(message: message)
        case "ActivityLimitExceeded":
            self = .activityLimitExceeded(message: message)
        case "InvalidName":
            self = .invalidName(message: message)
        case "ExecutionLimitExceeded":
            self = .executionLimitExceeded(message: message)
        case "ExecutionAlreadyExists":
            self = .executionAlreadyExists(message: message)
        case "InvalidExecutionInput":
            self = .invalidExecutionInput(message: message)
        case "StateMachineAlreadyExists":
            self = .stateMachineAlreadyExists(message: message)
        case "StateMachineLimitExceeded":
            self = .stateMachineLimitExceeded(message: message)
        default:
            return nil
        }
    }
}