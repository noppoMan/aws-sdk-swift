// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for GlobalAccelerator
public enum GlobalAcceleratorErrorType: AWSErrorType {
    case invalidArgumentException(message: String?)
    case listenerNotFoundException(message: String?)
    case internalServiceErrorException(message: String?)
    case acceleratorNotFoundException(message: String?)
    case limitExceededException(message: String?)
    case endpointGroupAlreadyExistsException(message: String?)
    case invalidPortRangeException(message: String?)
    case endpointGroupNotFoundException(message: String?)
    case associatedEndpointGroupFoundException(message: String?)
    case invalidNextTokenException(message: String?)
    case acceleratorNotDisabledException(message: String?)
    case associatedListenerFoundException(message: String?)
}

extension GlobalAcceleratorErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "ListenerNotFoundException":
            self = .listenerNotFoundException(message: message)
        case "InternalServiceErrorException":
            self = .internalServiceErrorException(message: message)
        case "AcceleratorNotFoundException":
            self = .acceleratorNotFoundException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "EndpointGroupAlreadyExistsException":
            self = .endpointGroupAlreadyExistsException(message: message)
        case "InvalidPortRangeException":
            self = .invalidPortRangeException(message: message)
        case "EndpointGroupNotFoundException":
            self = .endpointGroupNotFoundException(message: message)
        case "AssociatedEndpointGroupFoundException":
            self = .associatedEndpointGroupFoundException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "AcceleratorNotDisabledException":
            self = .acceleratorNotDisabledException(message: message)
        case "AssociatedListenerFoundException":
            self = .associatedListenerFoundException(message: message)
        default:
            return nil
        }
    }
}