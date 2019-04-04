// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for SMS
public enum SMSErrorType: AWSErrorType {
    case invalidParameterException(message: String?)
    case missingRequiredParameterException(message: String?)
    case unauthorizedOperationException(message: String?)
    case operationNotPermittedException(message: String?)
    case replicationJobNotFoundException(message: String?)
    case internalError(message: String?)
    case serverCannotBeReplicatedException(message: String?)
    case temporarilyUnavailableException(message: String?)
    case replicationJobAlreadyExistsException(message: String?)
    case noConnectorsAvailableException(message: String?)
    case replicationRunLimitExceededException(message: String?)
}

extension SMSErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "MissingRequiredParameterException":
            self = .missingRequiredParameterException(message: message)
        case "UnauthorizedOperationException":
            self = .unauthorizedOperationException(message: message)
        case "OperationNotPermittedException":
            self = .operationNotPermittedException(message: message)
        case "ReplicationJobNotFoundException":
            self = .replicationJobNotFoundException(message: message)
        case "InternalError":
            self = .internalError(message: message)
        case "ServerCannotBeReplicatedException":
            self = .serverCannotBeReplicatedException(message: message)
        case "TemporarilyUnavailableException":
            self = .temporarilyUnavailableException(message: message)
        case "ReplicationJobAlreadyExistsException":
            self = .replicationJobAlreadyExistsException(message: message)
        case "NoConnectorsAvailableException":
            self = .noConnectorsAvailableException(message: message)
        case "ReplicationRunLimitExceededException":
            self = .replicationRunLimitExceededException(message: message)
        default:
            return nil
        }
    }
}