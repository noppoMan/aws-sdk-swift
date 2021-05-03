//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

/// Error enum for Organizations
public struct OrganizationsErrorType: AWSErrorType {
    enum Code: String {
        case aWSOrganizationsNotInUseException = "AWSOrganizationsNotInUseException"
        case accessDeniedException = "AccessDeniedException"
        case accessDeniedForDependencyException = "AccessDeniedForDependencyException"
        case accountAlreadyRegisteredException = "AccountAlreadyRegisteredException"
        case accountNotFoundException = "AccountNotFoundException"
        case accountNotRegisteredException = "AccountNotRegisteredException"
        case accountOwnerNotVerifiedException = "AccountOwnerNotVerifiedException"
        case alreadyInOrganizationException = "AlreadyInOrganizationException"
        case childNotFoundException = "ChildNotFoundException"
        case concurrentModificationException = "ConcurrentModificationException"
        case constraintViolationException = "ConstraintViolationException"
        case createAccountStatusNotFoundException = "CreateAccountStatusNotFoundException"
        case destinationParentNotFoundException = "DestinationParentNotFoundException"
        case duplicateAccountException = "DuplicateAccountException"
        case duplicateHandshakeException = "DuplicateHandshakeException"
        case duplicateOrganizationalUnitException = "DuplicateOrganizationalUnitException"
        case duplicatePolicyAttachmentException = "DuplicatePolicyAttachmentException"
        case duplicatePolicyException = "DuplicatePolicyException"
        case effectivePolicyNotFoundException = "EffectivePolicyNotFoundException"
        case finalizingOrganizationException = "FinalizingOrganizationException"
        case handshakeAlreadyInStateException = "HandshakeAlreadyInStateException"
        case handshakeConstraintViolationException = "HandshakeConstraintViolationException"
        case handshakeNotFoundException = "HandshakeNotFoundException"
        case invalidHandshakeTransitionException = "InvalidHandshakeTransitionException"
        case invalidInputException = "InvalidInputException"
        case malformedPolicyDocumentException = "MalformedPolicyDocumentException"
        case masterCannotLeaveOrganizationException = "MasterCannotLeaveOrganizationException"
        case organizationNotEmptyException = "OrganizationNotEmptyException"
        case organizationalUnitNotEmptyException = "OrganizationalUnitNotEmptyException"
        case organizationalUnitNotFoundException = "OrganizationalUnitNotFoundException"
        case parentNotFoundException = "ParentNotFoundException"
        case policyChangesInProgressException = "PolicyChangesInProgressException"
        case policyInUseException = "PolicyInUseException"
        case policyNotAttachedException = "PolicyNotAttachedException"
        case policyNotFoundException = "PolicyNotFoundException"
        case policyTypeAlreadyEnabledException = "PolicyTypeAlreadyEnabledException"
        case policyTypeNotAvailableForOrganizationException = "PolicyTypeNotAvailableForOrganizationException"
        case policyTypeNotEnabledException = "PolicyTypeNotEnabledException"
        case rootNotFoundException = "RootNotFoundException"
        case serviceException = "ServiceException"
        case sourceParentNotFoundException = "SourceParentNotFoundException"
        case targetNotFoundException = "TargetNotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
        case unsupportedAPIEndpointException = "UnsupportedAPIEndpointException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Organizations
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// Your account isn't a member of an organization. To make this request, you must use the credentials of an account that belongs to an organization.
    public static var aWSOrganizationsNotInUseException: Self { .init(.aWSOrganizationsNotInUseException) }
    /// You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The operation that you attempted requires you to have the iam:CreateServiceLinkedRole for organizations.amazonaws.com permission so that AWS Organizations can create the required service-linked role. You don't have that permission.
    public static var accessDeniedForDependencyException: Self { .init(.accessDeniedForDependencyException) }
    /// The specified account is already a delegated administrator for this AWS service.
    public static var accountAlreadyRegisteredException: Self { .init(.accountAlreadyRegisteredException) }
    ///  We can't find an AWS account with the AccountId that you specified, or the account whose credentials you used to make this request isn't a member of an organization.
    public static var accountNotFoundException: Self { .init(.accountNotFoundException) }
    /// The specified account is not a delegated administrator for this AWS service.
    public static var accountNotRegisteredException: Self { .init(.accountNotRegisteredException) }
    /// You can't invite an existing account to your organization until you verify that you own the email address associated with the management account. For more information, see Email Address Verification in the AWS Organizations User Guide.
    public static var accountOwnerNotVerifiedException: Self { .init(.accountOwnerNotVerifiedException) }
    /// This account is already a member of an organization. An account can belong to only one organization at a time.
    public static var alreadyInOrganizationException: Self { .init(.alreadyInOrganizationException) }
    /// We can't find an organizational unit (OU) or AWS account with the ChildId that you specified.
    public static var childNotFoundException: Self { .init(.childNotFoundException) }
    /// The target of the operation is currently being modified by a different request. Try again later.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// Performing this operation violates a minimum or maximum value limit. For example, attempting to remove the last service control policy (SCP) from an OU or root, inviting or creating too many accounts to the organization, or attaching too many policies to an account, OU, or root. This exception includes a reason that contains additional information about the violated limit:  Some of the reasons in the following list might not be applicable to this specific API or operation.    ACCOUNT_CANNOT_LEAVE_ORGANIZATION: You attempted to remove the management account from the organization. You can't remove the management account. Instead, after you remove all member accounts, delete the organization itself.   ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA: You attempted to remove an account from the organization that doesn't yet have enough information to exist as a standalone account. This account requires you to first agree to the AWS Customer Agreement. Follow the steps at Removing a member account from your organizationin the AWS Organizations User Guide.    ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION: You attempted to remove an account from the organization that doesn't yet have enough information to exist as a standalone account. This account requires you to first complete phone verification. Follow the steps at Removing a member account from your organization in the AWS Organizations User Guide.    ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of accounts that you can create in one day.   ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. If you need more accounts, contact AWS Support to request an increase in your limit.  Or the number of invitations that you tried to send would cause you to exceed the limit of accounts in your organization. Send fewer invitations or contact AWS Support to request an increase in the number of accounts.  Deleted and closed accounts still count toward your limit.   If you get this exception when running a command immediately after creating the organization, wait one hour and try again. After an hour, if the command continues to fail with this error, contact AWS Support.    CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR: You attempted to register the management account of the organization as a delegated administrator for an AWS service integrated with Organizations. You can designate only a member account as a delegated administrator.   CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG: You attempted to remove an account that is registered as a delegated administrator for a service integrated with your organization. To complete this operation, you must first deregister this account as a delegated administrator.    CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION: To create an organization in the specified region, you must enable all features mode.   DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE: You attempted to register an AWS account as a delegated administrator for an AWS service that already has a delegated administrator. To complete this operation, you must first deregister any existing delegated administrators for this service.   EMAIL_VERIFICATION_CODE_EXPIRED: The email verification code is only valid for a limited period of time. You must resubmit the request and generate a new verfication code.   HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes that you can send in one day.   MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE: To create an account in this organization, you first must migrate the organization's management account to the marketplace that corresponds to the management account's address. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be associated with the same marketplace.   MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE: Applies only to the AWS Regions in China. To create an organization, the master must have a valid business license. For more information, contact customer support.   MASTER_ACCOUNT_MISSING_CONTACT_INFO: To complete this operation, you must first provide a valid contact address and phone number for the management account. Then try the operation again.   MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED: To complete this operation, the management account must have an associated account in the AWS GovCloud (US-West) Region. For more information, see AWS Organizations in the AWS GovCloud User Guide.    MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To create an organization with this management account, you first must associate a valid payment instrument, such as a credit card, with the account. Follow the steps at To leave an organization when all required account information has not yet been provided in the AWS Organizations User Guide.    MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED: You attempted to register more delegated administrators than allowed for the service principal.    MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to exceed the number of policies of a certain type that can be attached to an entity at one time.   MAX_TAG_LIMIT_EXCEEDED: You have exceeded the number of tags allowed on this resource.    MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To complete this operation with this member account, you first must associate a valid payment instrument, such as a credit card, with the account. Follow the steps at To leave an organization when all required account information has not yet been provided in the AWS Organizations User Guide.    MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to detach a policy from an entity that would cause the entity to have fewer than the minimum number of policies of a certain type required.   ORGANIZATION_NOT_IN_ALL_FEATURES_MODE: You attempted to perform an operation that requires the organization to be configured to support all features. An organization that supports only consolidated billing features can't perform this operation.   OU_DEPTH_LIMIT_EXCEEDED: You attempted to create an OU tree that is too many levels deep.   OU_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the number of OUs that you can have in an organization.   POLICY_CONTENT_LIMIT_EXCEEDED: You attempted to create a policy that is larger than the maximum size.   POLICY_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the number of policies that you can have in an organization.   TAG_POLICY_VIOLATION: You attempted to create or update a resource with tags that are not compliant with the tag policy requirements for this account.
    public static var constraintViolationException: Self { .init(.constraintViolationException) }
    /// We can't find an create account request with the CreateAccountRequestId that you specified.
    public static var createAccountStatusNotFoundException: Self { .init(.createAccountStatusNotFoundException) }
    /// We can't find the destination container (a root or OU) with the ParentId that you specified.
    public static var destinationParentNotFoundException: Self { .init(.destinationParentNotFoundException) }
    /// That account is already present in the specified destination.
    public static var duplicateAccountException: Self { .init(.duplicateAccountException) }
    /// A handshake with the same action and target already exists. For example, if you invited an account to join your organization, the invited account might already have a pending invitation from this organization. If you intend to resend an invitation to an account, ensure that existing handshakes that might be considered duplicates are canceled or declined.
    public static var duplicateHandshakeException: Self { .init(.duplicateHandshakeException) }
    /// An OU with the same name already exists.
    public static var duplicateOrganizationalUnitException: Self { .init(.duplicateOrganizationalUnitException) }
    /// The selected policy is already attached to the specified target.
    public static var duplicatePolicyAttachmentException: Self { .init(.duplicatePolicyAttachmentException) }
    /// A policy with the same name already exists.
    public static var duplicatePolicyException: Self { .init(.duplicatePolicyException) }
    /// If you ran this action on the management account, this policy type is not enabled. If you ran the action on a member account, the account doesn't have an effective policy of this type. Contact the administrator of your organization about attaching a policy of this type to the account.
    public static var effectivePolicyNotFoundException: Self { .init(.effectivePolicyNotFoundException) }
    /// AWS Organizations couldn't perform the operation because your organization hasn't finished initializing. This can take up to an hour. Try again later. If after one hour you continue to receive this error, contact AWS Support.
    public static var finalizingOrganizationException: Self { .init(.finalizingOrganizationException) }
    /// The specified handshake is already in the requested state. For example, you can't accept a handshake that was already accepted.
    public static var handshakeAlreadyInStateException: Self { .init(.handshakeAlreadyInStateException) }
    /// The requested operation would violate the constraint identified in the reason code.  Some of the reasons in the following list might not be applicable to this specific API or operation:    ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. Note that deleted and closed accounts still count toward your limit.  If you get this exception immediately after creating the organization, wait one hour and try again. If after an hour it continues to fail with this error, contact AWS Support.    ALREADY_IN_AN_ORGANIZATION: The handshake request is invalid because the invited account is already a member of an organization.   HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes that you can send in one day.   INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES: You can't issue new invitations to join an organization while it's in the process of enabling all features. You can resume inviting accounts after you finalize the process when all accounts have agreed to the change.   ORGANIZATION_ALREADY_HAS_ALL_FEATURES: The handshake request is invalid because the organization has already enabled all features.   ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION: The handshake request is invalid because the organization has already started the process to enable all features.   ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD: The request failed because the account is from a different marketplace than the accounts in the organization. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be from the same marketplace.   ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED: You attempted to change the membership of an account too quickly after its previous change.   PAYMENT_INSTRUMENT_REQUIRED: You can't complete the operation with an account that doesn't have a payment instrument, such as a credit card, associated with it.
    public static var handshakeConstraintViolationException: Self { .init(.handshakeConstraintViolationException) }
    /// We can't find a handshake with the HandshakeId that you specified.
    public static var handshakeNotFoundException: Self { .init(.handshakeNotFoundException) }
    /// You can't perform the operation on the handshake in its current state. For example, you can't cancel a handshake that was already accepted or accept a handshake that was already declined.
    public static var invalidHandshakeTransitionException: Self { .init(.invalidHandshakeTransitionException) }
    /// The requested operation failed because you provided invalid values for one or more of the request parameters. This exception includes a reason that contains additional information about the violated limit:  Some of the reasons in the following list might not be applicable to this specific API or operation.    DUPLICATE_TAG_KEY: Tag keys must be unique among the tags attached to the same entity.   IMMUTABLE_POLICY: You specified a policy that is managed by AWS and can't be modified.   INPUT_REQUIRED: You must include a value for all required parameters.   INVALID_EMAIL_ADDRESS_TARGET: You specified an invalid email address for the invited account owner.   INVALID_ENUM: You specified an invalid value.   INVALID_ENUM_POLICY_TYPE: You specified an invalid policy type string.   INVALID_FULL_NAME_TARGET: You specified a full name that contains invalid characters.   INVALID_LIST_MEMBER: You provided a list to a parameter that contains at least one invalid value.   INVALID_PAGINATION_TOKEN: Get the value for the NextToken parameter from the response to a previous call of the operation.   INVALID_PARTY_TYPE_TARGET: You specified the wrong type of entity (account, organization, or email) as a party.   INVALID_PATTERN: You provided a value that doesn't match the required pattern.   INVALID_PATTERN_TARGET_ID: You specified a policy target ID that doesn't match the required pattern.   INVALID_ROLE_NAME: You provided a role name that isn't valid. A role name can't begin with the reserved prefix AWSServiceRoleFor.   INVALID_SYNTAX_ORGANIZATION_ARN: You specified an invalid Amazon Resource Name (ARN) for the organization.   INVALID_SYNTAX_POLICY_ID: You specified an invalid policy ID.    INVALID_SYSTEM_TAGS_PARAMETER: You specified a tag key that is a system tag. You can’t add, edit, or delete system tag keys because they're reserved for AWS use. System tags don’t count against your tags per resource limit.   MAX_FILTER_LIMIT_EXCEEDED: You can specify only one filter parameter for the operation.   MAX_LENGTH_EXCEEDED: You provided a string parameter that is longer than allowed.   MAX_VALUE_EXCEEDED: You provided a numeric parameter that has a larger value than allowed.   MIN_LENGTH_EXCEEDED: You provided a string parameter that is shorter than allowed.   MIN_VALUE_EXCEEDED: You provided a numeric parameter that has a smaller value than allowed.   MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS: You can move an account only between entities in the same root.   TARGET_NOT_SUPPORTED: You can't perform the specified operation on that target entity.   UNRECOGNIZED_SERVICE_PRINCIPAL: You specified a service principal that isn't recognized.
    public static var invalidInputException: Self { .init(.invalidInputException) }
    /// The provided policy document doesn't meet the requirements of the specified policy type. For example, the syntax might be incorrect. For details about service control policy syntax, see Service Control Policy Syntax in the AWS Organizations User Guide.
    public static var malformedPolicyDocumentException: Self { .init(.malformedPolicyDocumentException) }
    /// You can't remove a management account from an organization. If you want the management account to become a member account in another organization, you must first delete the current organization of the management account.
    public static var masterCannotLeaveOrganizationException: Self { .init(.masterCannotLeaveOrganizationException) }
    /// The organization isn't empty. To delete an organization, you must first remove all accounts except the management account, delete all OUs, and delete all policies.
    public static var organizationNotEmptyException: Self { .init(.organizationNotEmptyException) }
    /// The specified OU is not empty. Move all accounts to another root or to other OUs, remove all child OUs, and try the operation again.
    public static var organizationalUnitNotEmptyException: Self { .init(.organizationalUnitNotEmptyException) }
    /// We can't find an OU with the OrganizationalUnitId that you specified.
    public static var organizationalUnitNotFoundException: Self { .init(.organizationalUnitNotFoundException) }
    /// We can't find a root or OU with the ParentId that you specified.
    public static var parentNotFoundException: Self { .init(.parentNotFoundException) }
    /// Changes to the effective policy are in progress, and its contents can't be returned. Try the operation again later.
    public static var policyChangesInProgressException: Self { .init(.policyChangesInProgressException) }
    /// The policy is attached to one or more entities. You must detach it from all roots, OUs, and accounts before performing this operation.
    public static var policyInUseException: Self { .init(.policyInUseException) }
    /// The policy isn't attached to the specified target in the specified root.
    public static var policyNotAttachedException: Self { .init(.policyNotAttachedException) }
    /// We can't find a policy with the PolicyId that you specified.
    public static var policyNotFoundException: Self { .init(.policyNotFoundException) }
    /// The specified policy type is already enabled in the specified root.
    public static var policyTypeAlreadyEnabledException: Self { .init(.policyTypeAlreadyEnabledException) }
    /// You can't use the specified policy type with the feature set currently enabled for this organization. For example, you can enable SCPs only after you enable all features in the organization. For more information, see Managing AWS Organizations Policiesin the AWS Organizations User Guide.
    public static var policyTypeNotAvailableForOrganizationException: Self { .init(.policyTypeNotAvailableForOrganizationException) }
    /// The specified policy type isn't currently enabled in this root. You can't attach policies of the specified type to entities in a root until you enable that type in the root. For more information, see Enabling All Features in Your Organization in the AWS Organizations User Guide.
    public static var policyTypeNotEnabledException: Self { .init(.policyTypeNotEnabledException) }
    /// We can't find a root with the RootId that you specified.
    public static var rootNotFoundException: Self { .init(.rootNotFoundException) }
    /// AWS Organizations can't complete your request because of an internal service error. Try again later.
    public static var serviceException: Self { .init(.serviceException) }
    /// We can't find a source root or OU with the ParentId that you specified.
    public static var sourceParentNotFoundException: Self { .init(.sourceParentNotFoundException) }
    /// We can't find a root, OU, account, or policy with the TargetId that you specified.
    public static var targetNotFoundException: Self { .init(.targetNotFoundException) }
    /// You have sent too many requests in too short a period of time. The quota helps protect against denial-of-service attacks. Try again later. For information about quotas that affect AWS Organizations, see Quotas for AWS Organizationsin the AWS Organizations User Guide.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    /// This action isn't available in the current AWS Region.
    public static var unsupportedAPIEndpointException: Self { .init(.unsupportedAPIEndpointException) }
}

extension OrganizationsErrorType: Equatable {
    public static func == (lhs: OrganizationsErrorType, rhs: OrganizationsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension OrganizationsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
