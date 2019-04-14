// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Redshift
public enum RedshiftErrorType: AWSErrorType {
    case hsmClientCertificateNotFoundFault(message: String?)
    case invalidTagFault(message: String?)
    case clusterNotFoundFault(message: String?)
    case snapshotCopyDisabledFault(message: String?)
    case unauthorizedOperation(message: String?)
    case invalidClusterStateFault(message: String?)
    case invalidRetentionPeriodFault(message: String?)
    case clusterParameterGroupNotFoundFault(message: String?)
    case clusterParameterGroupQuotaExceededFault(message: String?)
    case clusterParameterGroupAlreadyExistsFault(message: String?)
    case tagLimitExceededFault(message: String?)
    case invalidScheduleFault(message: String?)
    case snapshotScheduleNotFoundFault(message: String?)
    case snapshotScheduleUpdateInProgressFault(message: String?)
    case batchModifyClusterSnapshotsLimitExceededFault(message: String?)
    case resourceNotFoundFault(message: String?)
    case clusterSnapshotNotFoundFault(message: String?)
    case inProgressTableRestoreQuotaExceededFault(message: String?)
    case invalidClusterSnapshotStateFault(message: String?)
    case invalidTableRestoreArgumentFault(message: String?)
    case unsupportedOperationFault(message: String?)
    case clusterSnapshotAlreadyExistsFault(message: String?)
    case clusterSnapshotQuotaExceededFault(message: String?)
    case snapshotCopyGrantAlreadyExistsFault(message: String?)
    case snapshotCopyGrantQuotaExceededFault(message: String?)
    case limitExceededFault(message: String?)
    case dependentServiceRequestThrottlingFault(message: String?)
    case invalidClusterTrackFault(message: String?)
    case resizeNotFoundFault(message: String?)
    case numberOfNodesQuotaExceededFault(message: String?)
    case numberOfNodesPerClusterLimitExceededFault(message: String?)
    case insufficientClusterCapacityFault(message: String?)
    case unsupportedOptionFault(message: String?)
    case clusterAlreadyExistsFault(message: String?)
    case clusterSecurityGroupNotFoundFault(message: String?)
    case clusterQuotaExceededFault(message: String?)
    case clusterSubnetGroupNotFoundFault(message: String?)
    case invalidVPCNetworkStateFault(message: String?)
    case invalidClusterSubnetGroupStateFault(message: String?)
    case invalidSubnet(message: String?)
    case hsmConfigurationNotFoundFault(message: String?)
    case invalidElasticIpFault(message: String?)
    case incompatibleOrderableOptions(message: String?)
    case copyToRegionDisabledFault(message: String?)
    case snapshotCopyAlreadyEnabledFault(message: String?)
    case unknownSnapshotCopyRegionFault(message: String?)
    case snapshotCopyGrantNotFoundFault(message: String?)
    case invalidClusterParameterGroupStateFault(message: String?)
    case invalidClusterSecurityGroupStateFault(message: String?)
    case tableRestoreNotFoundFault(message: String?)
    case accessToSnapshotDeniedFault(message: String?)
    case authorizationNotFoundFault(message: String?)
    case clusterSecurityGroupAlreadyExistsFault(message: String?)
    case clusterSecurityGroupQuotaExceededFault(message: String?)
    case snapshotCopyAlreadyDisabledFault(message: String?)
    case clusterOnLatestRevisionFault(message: String?)
    case reservedNodeOfferingNotFoundFault(message: String?)
    case reservedNodeAlreadyExistsFault(message: String?)
    case reservedNodeQuotaExceededFault(message: String?)
    case invalidClusterSnapshotScheduleStateFault(message: String?)
    case hsmClientCertificateAlreadyExistsFault(message: String?)
    case hsmClientCertificateQuotaExceededFault(message: String?)
    case invalidClusterSubnetStateFault(message: String?)
    case authorizationAlreadyExistsFault(message: String?)
    case authorizationQuotaExceededFault(message: String?)
    case subscriptionNotFoundFault(message: String?)
    case sNSInvalidTopicFault(message: String?)
    case sNSNoAuthorizationFault(message: String?)
    case sNSTopicArnNotFoundFault(message: String?)
    case subscriptionEventIdNotFoundFault(message: String?)
    case subscriptionCategoryNotFoundFault(message: String?)
    case subscriptionSeverityNotFoundFault(message: String?)
    case sourceNotFoundFault(message: String?)
    case invalidSubscriptionStateFault(message: String?)
    case snapshotScheduleAlreadyExistsFault(message: String?)
    case snapshotScheduleQuotaExceededFault(message: String?)
    case scheduleDefinitionTypeUnsupportedFault(message: String?)
    case bucketNotFoundFault(message: String?)
    case insufficientS3BucketPolicyFault(message: String?)
    case invalidS3KeyPrefixFault(message: String?)
    case invalidS3BucketNameFault(message: String?)
    case clusterSubnetGroupAlreadyExistsFault(message: String?)
    case clusterSubnetGroupQuotaExceededFault(message: String?)
    case clusterSubnetQuotaExceededFault(message: String?)
    case subnetAlreadyInUse(message: String?)
    case tableLimitExceededFault(message: String?)
    case invalidHsmClientCertificateStateFault(message: String?)
    case dependentServiceUnavailableFault(message: String?)
    case batchDeleteRequestSizeExceededFault(message: String?)
    case invalidHsmConfigurationStateFault(message: String?)
    case invalidRestoreFault(message: String?)
    case hsmConfigurationAlreadyExistsFault(message: String?)
    case hsmConfigurationQuotaExceededFault(message: String?)
    case reservedNodeNotFoundFault(message: String?)
    case invalidReservedNodeStateFault(message: String?)
    case reservedNodeAlreadyMigratedFault(message: String?)
    case eventSubscriptionQuotaExceededFault(message: String?)
    case subscriptionAlreadyExistFault(message: String?)
    case invalidSnapshotCopyGrantStateFault(message: String?)
}

extension RedshiftErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "HsmClientCertificateNotFoundFault":
            self = .hsmClientCertificateNotFoundFault(message: message)
        case "InvalidTagFault":
            self = .invalidTagFault(message: message)
        case "ClusterNotFoundFault":
            self = .clusterNotFoundFault(message: message)
        case "SnapshotCopyDisabledFault":
            self = .snapshotCopyDisabledFault(message: message)
        case "UnauthorizedOperation":
            self = .unauthorizedOperation(message: message)
        case "InvalidClusterStateFault":
            self = .invalidClusterStateFault(message: message)
        case "InvalidRetentionPeriodFault":
            self = .invalidRetentionPeriodFault(message: message)
        case "ClusterParameterGroupNotFoundFault":
            self = .clusterParameterGroupNotFoundFault(message: message)
        case "ClusterParameterGroupQuotaExceededFault":
            self = .clusterParameterGroupQuotaExceededFault(message: message)
        case "ClusterParameterGroupAlreadyExistsFault":
            self = .clusterParameterGroupAlreadyExistsFault(message: message)
        case "TagLimitExceededFault":
            self = .tagLimitExceededFault(message: message)
        case "InvalidScheduleFault":
            self = .invalidScheduleFault(message: message)
        case "SnapshotScheduleNotFoundFault":
            self = .snapshotScheduleNotFoundFault(message: message)
        case "SnapshotScheduleUpdateInProgressFault":
            self = .snapshotScheduleUpdateInProgressFault(message: message)
        case "BatchModifyClusterSnapshotsLimitExceededFault":
            self = .batchModifyClusterSnapshotsLimitExceededFault(message: message)
        case "ResourceNotFoundFault":
            self = .resourceNotFoundFault(message: message)
        case "ClusterSnapshotNotFoundFault":
            self = .clusterSnapshotNotFoundFault(message: message)
        case "InProgressTableRestoreQuotaExceededFault":
            self = .inProgressTableRestoreQuotaExceededFault(message: message)
        case "InvalidClusterSnapshotStateFault":
            self = .invalidClusterSnapshotStateFault(message: message)
        case "InvalidTableRestoreArgumentFault":
            self = .invalidTableRestoreArgumentFault(message: message)
        case "UnsupportedOperationFault":
            self = .unsupportedOperationFault(message: message)
        case "ClusterSnapshotAlreadyExistsFault":
            self = .clusterSnapshotAlreadyExistsFault(message: message)
        case "ClusterSnapshotQuotaExceededFault":
            self = .clusterSnapshotQuotaExceededFault(message: message)
        case "SnapshotCopyGrantAlreadyExistsFault":
            self = .snapshotCopyGrantAlreadyExistsFault(message: message)
        case "SnapshotCopyGrantQuotaExceededFault":
            self = .snapshotCopyGrantQuotaExceededFault(message: message)
        case "LimitExceededFault":
            self = .limitExceededFault(message: message)
        case "DependentServiceRequestThrottlingFault":
            self = .dependentServiceRequestThrottlingFault(message: message)
        case "InvalidClusterTrackFault":
            self = .invalidClusterTrackFault(message: message)
        case "ResizeNotFoundFault":
            self = .resizeNotFoundFault(message: message)
        case "NumberOfNodesQuotaExceededFault":
            self = .numberOfNodesQuotaExceededFault(message: message)
        case "NumberOfNodesPerClusterLimitExceededFault":
            self = .numberOfNodesPerClusterLimitExceededFault(message: message)
        case "InsufficientClusterCapacityFault":
            self = .insufficientClusterCapacityFault(message: message)
        case "UnsupportedOptionFault":
            self = .unsupportedOptionFault(message: message)
        case "ClusterAlreadyExistsFault":
            self = .clusterAlreadyExistsFault(message: message)
        case "ClusterSecurityGroupNotFoundFault":
            self = .clusterSecurityGroupNotFoundFault(message: message)
        case "ClusterQuotaExceededFault":
            self = .clusterQuotaExceededFault(message: message)
        case "ClusterSubnetGroupNotFoundFault":
            self = .clusterSubnetGroupNotFoundFault(message: message)
        case "InvalidVPCNetworkStateFault":
            self = .invalidVPCNetworkStateFault(message: message)
        case "InvalidClusterSubnetGroupStateFault":
            self = .invalidClusterSubnetGroupStateFault(message: message)
        case "InvalidSubnet":
            self = .invalidSubnet(message: message)
        case "HsmConfigurationNotFoundFault":
            self = .hsmConfigurationNotFoundFault(message: message)
        case "InvalidElasticIpFault":
            self = .invalidElasticIpFault(message: message)
        case "IncompatibleOrderableOptions":
            self = .incompatibleOrderableOptions(message: message)
        case "CopyToRegionDisabledFault":
            self = .copyToRegionDisabledFault(message: message)
        case "SnapshotCopyAlreadyEnabledFault":
            self = .snapshotCopyAlreadyEnabledFault(message: message)
        case "UnknownSnapshotCopyRegionFault":
            self = .unknownSnapshotCopyRegionFault(message: message)
        case "SnapshotCopyGrantNotFoundFault":
            self = .snapshotCopyGrantNotFoundFault(message: message)
        case "InvalidClusterParameterGroupStateFault":
            self = .invalidClusterParameterGroupStateFault(message: message)
        case "InvalidClusterSecurityGroupStateFault":
            self = .invalidClusterSecurityGroupStateFault(message: message)
        case "TableRestoreNotFoundFault":
            self = .tableRestoreNotFoundFault(message: message)
        case "AccessToSnapshotDeniedFault":
            self = .accessToSnapshotDeniedFault(message: message)
        case "AuthorizationNotFoundFault":
            self = .authorizationNotFoundFault(message: message)
        case "ClusterSecurityGroupAlreadyExistsFault":
            self = .clusterSecurityGroupAlreadyExistsFault(message: message)
        case "ClusterSecurityGroupQuotaExceededFault":
            self = .clusterSecurityGroupQuotaExceededFault(message: message)
        case "SnapshotCopyAlreadyDisabledFault":
            self = .snapshotCopyAlreadyDisabledFault(message: message)
        case "ClusterOnLatestRevisionFault":
            self = .clusterOnLatestRevisionFault(message: message)
        case "ReservedNodeOfferingNotFoundFault":
            self = .reservedNodeOfferingNotFoundFault(message: message)
        case "ReservedNodeAlreadyExistsFault":
            self = .reservedNodeAlreadyExistsFault(message: message)
        case "ReservedNodeQuotaExceededFault":
            self = .reservedNodeQuotaExceededFault(message: message)
        case "InvalidClusterSnapshotScheduleStateFault":
            self = .invalidClusterSnapshotScheduleStateFault(message: message)
        case "HsmClientCertificateAlreadyExistsFault":
            self = .hsmClientCertificateAlreadyExistsFault(message: message)
        case "HsmClientCertificateQuotaExceededFault":
            self = .hsmClientCertificateQuotaExceededFault(message: message)
        case "InvalidClusterSubnetStateFault":
            self = .invalidClusterSubnetStateFault(message: message)
        case "AuthorizationAlreadyExistsFault":
            self = .authorizationAlreadyExistsFault(message: message)
        case "AuthorizationQuotaExceededFault":
            self = .authorizationQuotaExceededFault(message: message)
        case "SubscriptionNotFoundFault":
            self = .subscriptionNotFoundFault(message: message)
        case "SNSInvalidTopicFault":
            self = .sNSInvalidTopicFault(message: message)
        case "SNSNoAuthorizationFault":
            self = .sNSNoAuthorizationFault(message: message)
        case "SNSTopicArnNotFoundFault":
            self = .sNSTopicArnNotFoundFault(message: message)
        case "SubscriptionEventIdNotFoundFault":
            self = .subscriptionEventIdNotFoundFault(message: message)
        case "SubscriptionCategoryNotFoundFault":
            self = .subscriptionCategoryNotFoundFault(message: message)
        case "SubscriptionSeverityNotFoundFault":
            self = .subscriptionSeverityNotFoundFault(message: message)
        case "SourceNotFoundFault":
            self = .sourceNotFoundFault(message: message)
        case "InvalidSubscriptionStateFault":
            self = .invalidSubscriptionStateFault(message: message)
        case "SnapshotScheduleAlreadyExistsFault":
            self = .snapshotScheduleAlreadyExistsFault(message: message)
        case "SnapshotScheduleQuotaExceededFault":
            self = .snapshotScheduleQuotaExceededFault(message: message)
        case "ScheduleDefinitionTypeUnsupportedFault":
            self = .scheduleDefinitionTypeUnsupportedFault(message: message)
        case "BucketNotFoundFault":
            self = .bucketNotFoundFault(message: message)
        case "InsufficientS3BucketPolicyFault":
            self = .insufficientS3BucketPolicyFault(message: message)
        case "InvalidS3KeyPrefixFault":
            self = .invalidS3KeyPrefixFault(message: message)
        case "InvalidS3BucketNameFault":
            self = .invalidS3BucketNameFault(message: message)
        case "ClusterSubnetGroupAlreadyExistsFault":
            self = .clusterSubnetGroupAlreadyExistsFault(message: message)
        case "ClusterSubnetGroupQuotaExceededFault":
            self = .clusterSubnetGroupQuotaExceededFault(message: message)
        case "ClusterSubnetQuotaExceededFault":
            self = .clusterSubnetQuotaExceededFault(message: message)
        case "SubnetAlreadyInUse":
            self = .subnetAlreadyInUse(message: message)
        case "TableLimitExceededFault":
            self = .tableLimitExceededFault(message: message)
        case "InvalidHsmClientCertificateStateFault":
            self = .invalidHsmClientCertificateStateFault(message: message)
        case "DependentServiceUnavailableFault":
            self = .dependentServiceUnavailableFault(message: message)
        case "BatchDeleteRequestSizeExceededFault":
            self = .batchDeleteRequestSizeExceededFault(message: message)
        case "InvalidHsmConfigurationStateFault":
            self = .invalidHsmConfigurationStateFault(message: message)
        case "InvalidRestoreFault":
            self = .invalidRestoreFault(message: message)
        case "HsmConfigurationAlreadyExistsFault":
            self = .hsmConfigurationAlreadyExistsFault(message: message)
        case "HsmConfigurationQuotaExceededFault":
            self = .hsmConfigurationQuotaExceededFault(message: message)
        case "ReservedNodeNotFoundFault":
            self = .reservedNodeNotFoundFault(message: message)
        case "InvalidReservedNodeStateFault":
            self = .invalidReservedNodeStateFault(message: message)
        case "ReservedNodeAlreadyMigratedFault":
            self = .reservedNodeAlreadyMigratedFault(message: message)
        case "EventSubscriptionQuotaExceededFault":
            self = .eventSubscriptionQuotaExceededFault(message: message)
        case "SubscriptionAlreadyExistFault":
            self = .subscriptionAlreadyExistFault(message: message)
        case "InvalidSnapshotCopyGrantStateFault":
            self = .invalidSnapshotCopyGrantStateFault(message: message)
        default:
            return nil
        }
    }
}
