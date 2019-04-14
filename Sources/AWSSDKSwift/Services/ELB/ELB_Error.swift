// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ELB
public enum ELBErrorType: AWSErrorType {
    case accessPointNotFoundException(message: String?)
    case invalidConfigurationRequestException(message: String?)
    case subnetNotFoundException(message: String?)
    case invalidSubnetException(message: String?)
    case policyTypeNotFoundException(message: String?)
    case duplicatePolicyNameException(message: String?)
    case tooManyPoliciesException(message: String?)
    case policyNotFoundException(message: String?)
    case listenerNotFoundException(message: String?)
    case duplicateAccessPointNameException(message: String?)
    case tooManyAccessPointsException(message: String?)
    case certificateNotFoundException(message: String?)
    case invalidSecurityGroupException(message: String?)
    case invalidSchemeException(message: String?)
    case tooManyTagsException(message: String?)
    case duplicateTagKeysException(message: String?)
    case unsupportedProtocolException(message: String?)
    case operationNotPermittedException(message: String?)
    case dependencyThrottleException(message: String?)
    case duplicateListenerException(message: String?)
    case invalidEndPointException(message: String?)
    case loadBalancerAttributeNotFoundException(message: String?)
}

extension ELBErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessPointNotFoundException":
            self = .accessPointNotFoundException(message: message)
        case "InvalidConfigurationRequestException":
            self = .invalidConfigurationRequestException(message: message)
        case "SubnetNotFoundException":
            self = .subnetNotFoundException(message: message)
        case "InvalidSubnetException":
            self = .invalidSubnetException(message: message)
        case "PolicyTypeNotFoundException":
            self = .policyTypeNotFoundException(message: message)
        case "DuplicatePolicyNameException":
            self = .duplicatePolicyNameException(message: message)
        case "TooManyPoliciesException":
            self = .tooManyPoliciesException(message: message)
        case "PolicyNotFoundException":
            self = .policyNotFoundException(message: message)
        case "ListenerNotFoundException":
            self = .listenerNotFoundException(message: message)
        case "DuplicateAccessPointNameException":
            self = .duplicateAccessPointNameException(message: message)
        case "TooManyAccessPointsException":
            self = .tooManyAccessPointsException(message: message)
        case "CertificateNotFoundException":
            self = .certificateNotFoundException(message: message)
        case "InvalidSecurityGroupException":
            self = .invalidSecurityGroupException(message: message)
        case "InvalidSchemeException":
            self = .invalidSchemeException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        case "DuplicateTagKeysException":
            self = .duplicateTagKeysException(message: message)
        case "UnsupportedProtocolException":
            self = .unsupportedProtocolException(message: message)
        case "OperationNotPermittedException":
            self = .operationNotPermittedException(message: message)
        case "DependencyThrottleException":
            self = .dependencyThrottleException(message: message)
        case "DuplicateListenerException":
            self = .duplicateListenerException(message: message)
        case "InvalidEndPointException":
            self = .invalidEndPointException(message: message)
        case "LoadBalancerAttributeNotFoundException":
            self = .loadBalancerAttributeNotFoundException(message: message)
        default:
            return nil
        }
    }
}
