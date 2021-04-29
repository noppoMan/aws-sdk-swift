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

#if compiler(>=5.5) && $AsyncAwait

import SotoCore

@available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
extension SecurityHub {
    // MARK: Async API Calls

    /// Accepts the invitation to be a member account and be monitored by the Security Hub master account that the invitation was sent from. This operation is only used by member accounts that are not added through Organizations. When the member account accepts the invitation, permission is granted to the master account to view findings generated in the member account.
    public func acceptInvitation(_ input: AcceptInvitationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptInvitationResponse {
        return try await self.client.execute(operation: "AcceptInvitation", path: "/master", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables the standards specified by the provided StandardsSubscriptionArns. For more information, see Security Standards section of the AWS Security Hub User Guide.
    public func batchDisableStandards(_ input: BatchDisableStandardsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDisableStandardsResponse {
        return try await self.client.execute(operation: "BatchDisableStandards", path: "/standards/deregister", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables the standards specified by the provided StandardsArn. To obtain the ARN for a standard, use the  DescribeStandards  operation. For more information, see the Security Standards section of the AWS Security Hub User Guide.
    public func batchEnableStandards(_ input: BatchEnableStandardsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchEnableStandardsResponse {
        return try await self.client.execute(operation: "BatchEnableStandards", path: "/standards/register", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Imports security findings generated from an integrated product into Security Hub. This action is requested by the integrated product to import its findings into Security Hub. The maximum allowed size for a finding is 240 Kb. An error is returned for any finding larger than 240 Kb. After a finding is created, BatchImportFindings cannot be used to update the following finding fields and objects, which Security Hub customers use to manage their investigation workflow.    Note     UserDefinedFields     VerificationState     Workflow    Finding providers also should not use BatchImportFindings to update the following attributes.    Confidence     Criticality     RelatedFindings     Severity     Types    Instead, finding providers use FindingProviderFields to provide values for these attributes.
    public func batchImportFindings(_ input: BatchImportFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchImportFindingsResponse {
        return try await self.client.execute(operation: "BatchImportFindings", path: "/findings/import", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used by Security Hub customers to update information about their investigation into a finding. Requested by master accounts or member accounts. Master accounts can update findings for their account and their member accounts. Member accounts can update findings for their account. Updates from BatchUpdateFindings do not affect the value of UpdatedAt for a finding. Master and member accounts can use BatchUpdateFindings to update the following finding fields and objects.    Confidence     Criticality     Note     RelatedFindings     Severity     Types     UserDefinedFields     VerificationState     Workflow    You can configure IAM policies to restrict access to fields and field values. For example, you might not want member accounts to be able to suppress findings or change the finding severity. See Configuring access to BatchUpdateFindings in the AWS Security Hub User Guide.
    public func batchUpdateFindings(_ input: BatchUpdateFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchUpdateFindingsResponse {
        return try await self.client.execute(operation: "BatchUpdateFindings", path: "/findings/batchupdate", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a custom action target in Security Hub. You can use custom actions on findings and insights in Security Hub to trigger target actions in Amazon CloudWatch Events.
    public func createActionTarget(_ input: CreateActionTargetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateActionTargetResponse {
        return try await self.client.execute(operation: "CreateActionTarget", path: "/actionTargets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a custom insight in Security Hub. An insight is a consolidation of findings that relate to a security issue that requires attention or remediation. To group the related findings in the insight, use the GroupByAttribute.
    public func createInsight(_ input: CreateInsightRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInsightResponse {
        return try await self.client.execute(operation: "CreateInsight", path: "/insights", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a member association in Security Hub between the specified accounts and the account used to make the request, which is the master account. If you are integrated with Organizations, then the master account is the Security Hub administrator account that is designated by the organization management account.  CreateMembers is always used to add accounts that are not organization members. For accounts that are part of an organization, CreateMembers is only used in the following cases:   Security Hub is not configured to automatically add new accounts in an organization.   The account was disassociated or deleted in Security Hub.   This action can only be used by an account that has Security Hub enabled. To enable Security Hub, you can use the  EnableSecurityHub  operation. For accounts that are not organization members, you create the account association and then send an invitation to the member account. To send the invitation, you use the  InviteMembers  operation. If the account owner accepts the invitation, the account becomes a member account in Security Hub. Accounts that are part of an organization do not receive an invitation. They automatically become a member account in Security Hub. A permissions policy is added that permits the master account to view the findings generated in the member account. When Security Hub is enabled in a member account, findings are sent to both the member and master accounts.  To remove the association between the master and member accounts, use the  DisassociateFromMasterAccount  or  DisassociateMembers  operation.
    public func createMembers(_ input: CreateMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMembersResponse {
        return try await self.client.execute(operation: "CreateMembers", path: "/members", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Declines invitations to become a member account. This operation is only used by accounts that are not part of an organization. Organization accounts do not receive invitations.
    public func declineInvitations(_ input: DeclineInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeclineInvitationsResponse {
        return try await self.client.execute(operation: "DeclineInvitations", path: "/invitations/decline", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a custom action target from Security Hub. Deleting a custom action target does not affect any findings or insights that were already sent to Amazon CloudWatch Events using the custom action.
    public func deleteActionTarget(_ input: DeleteActionTargetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteActionTargetResponse {
        return try await self.client.execute(operation: "DeleteActionTarget", path: "/actionTargets/{ActionTargetArn+}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the insight specified by the InsightArn.
    public func deleteInsight(_ input: DeleteInsightRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInsightResponse {
        return try await self.client.execute(operation: "DeleteInsight", path: "/insights/{InsightArn+}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes invitations received by the AWS account to become a member account. This operation is only used by accounts that are not part of an organization. Organization accounts do not receive invitations.
    public func deleteInvitations(_ input: DeleteInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInvitationsResponse {
        return try await self.client.execute(operation: "DeleteInvitations", path: "/invitations/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified member accounts from Security Hub. Can be used to delete member accounts that belong to an organization as well as member accounts that were invited manually.
    public func deleteMembers(_ input: DeleteMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMembersResponse {
        return try await self.client.execute(operation: "DeleteMembers", path: "/members/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the custom action targets in Security Hub in your account.
    public func describeActionTargets(_ input: DescribeActionTargetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeActionTargetsResponse {
        return try await self.client.execute(operation: "DescribeActionTargets", path: "/actionTargets/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns details about the Hub resource in your account, including the HubArn and the time when you enabled Security Hub.
    public func describeHub(_ input: DescribeHubRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHubResponse {
        return try await self.client.execute(operation: "DescribeHub", path: "/accounts", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the Organizations configuration for Security Hub. Can only be called from a Security Hub administrator account.
    public func describeOrganizationConfiguration(_ input: DescribeOrganizationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationConfigurationResponse {
        return try await self.client.execute(operation: "DescribeOrganizationConfiguration", path: "/organization/configuration", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about product integrations in Security Hub. You can optionally provide an integration ARN. If you provide an integration ARN, then the results only include that integration. If you do not provide an integration ARN, then the results include all of the available product integrations.
    public func describeProducts(_ input: DescribeProductsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductsResponse {
        return try await self.client.execute(operation: "DescribeProducts", path: "/products", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the available standards in Security Hub. For each standard, the results include the standard ARN, the name, and a description.
    public func describeStandards(_ input: DescribeStandardsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStandardsResponse {
        return try await self.client.execute(operation: "DescribeStandards", path: "/standards", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of security standards controls. For each control, the results include information about whether it is currently enabled, the severity, and a link to remediation information.
    public func describeStandardsControls(_ input: DescribeStandardsControlsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStandardsControlsResponse {
        return try await self.client.execute(operation: "DescribeStandardsControls", path: "/standards/controls/{StandardsSubscriptionArn+}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables the integration of the specified product with Security Hub. After the integration is disabled, findings from that product are no longer sent to Security Hub.
    public func disableImportFindingsForProduct(_ input: DisableImportFindingsForProductRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableImportFindingsForProductResponse {
        return try await self.client.execute(operation: "DisableImportFindingsForProduct", path: "/productSubscriptions/{ProductSubscriptionArn+}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables a Security Hub administrator account. Can only be called by the organization management account.
    public func disableOrganizationAdminAccount(_ input: DisableOrganizationAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableOrganizationAdminAccountResponse {
        return try await self.client.execute(operation: "DisableOrganizationAdminAccount", path: "/organization/admin/disable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables Security Hub in your account only in the current Region. To disable Security Hub in all Regions, you must submit one request per Region where you have enabled Security Hub. When you disable Security Hub for a master account, it doesn't disable Security Hub for any associated member accounts. When you disable Security Hub, your existing findings and insights and any Security Hub configuration settings are deleted after 90 days and cannot be recovered. Any standards that were enabled are disabled, and your master and member account associations are removed. If you want to save your existing findings, you must export them before you disable Security Hub.
    public func disableSecurityHub(_ input: DisableSecurityHubRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableSecurityHubResponse {
        return try await self.client.execute(operation: "DisableSecurityHub", path: "/accounts", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates the current Security Hub member account from the associated master account. This operation is only used by accounts that are not part of an organization. For organization accounts, only the master account (the designated Security Hub administrator) can disassociate a member account.
    public func disassociateFromMasterAccount(_ input: DisassociateFromMasterAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateFromMasterAccountResponse {
        return try await self.client.execute(operation: "DisassociateFromMasterAccount", path: "/master/disassociate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates the specified member accounts from the associated master account. Can be used to disassociate both accounts that are in an organization and accounts that were invited manually.
    public func disassociateMembers(_ input: DisassociateMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateMembersResponse {
        return try await self.client.execute(operation: "DisassociateMembers", path: "/members/disassociate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables the integration of a partner product with Security Hub. Integrated products send findings to Security Hub. When you enable a product integration, a permissions policy that grants permission for the product to send findings to Security Hub is applied.
    public func enableImportFindingsForProduct(_ input: EnableImportFindingsForProductRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableImportFindingsForProductResponse {
        return try await self.client.execute(operation: "EnableImportFindingsForProduct", path: "/productSubscriptions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Designates the Security Hub administrator account for an organization. Can only be called by the organization management account.
    public func enableOrganizationAdminAccount(_ input: EnableOrganizationAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableOrganizationAdminAccountResponse {
        return try await self.client.execute(operation: "EnableOrganizationAdminAccount", path: "/organization/admin/enable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables Security Hub for your account in the current Region or the Region you specify in the request. When you enable Security Hub, you grant to Security Hub the permissions necessary to gather findings from other services that are integrated with Security Hub. When you use the EnableSecurityHub operation to enable Security Hub, you also automatically enable the following standards.   CIS AWS Foundations   AWS Foundational Security Best Practices   You do not enable the Payment Card Industry Data Security Standard (PCI DSS) standard.  To not enable the automatically enabled standards, set EnableDefaultStandards to false. After you enable Security Hub, to enable a standard, use the  BatchEnableStandards  operation. To disable a standard, use the  BatchDisableStandards  operation. To learn more, see Setting Up AWS Security Hub in the AWS Security Hub User Guide.
    public func enableSecurityHub(_ input: EnableSecurityHubRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableSecurityHubResponse {
        return try await self.client.execute(operation: "EnableSecurityHub", path: "/accounts", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the standards that are currently enabled.
    public func getEnabledStandards(_ input: GetEnabledStandardsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEnabledStandardsResponse {
        return try await self.client.execute(operation: "GetEnabledStandards", path: "/standards/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of findings that match the specified criteria.
    public func getFindings(_ input: GetFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFindingsResponse {
        return try await self.client.execute(operation: "GetFindings", path: "/findings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the results of the Security Hub insight specified by the insight ARN.
    public func getInsightResults(_ input: GetInsightResultsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInsightResultsResponse {
        return try await self.client.execute(operation: "GetInsightResults", path: "/insights/results/{InsightArn+}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists and describes insights for the specified insight ARNs.
    public func getInsights(_ input: GetInsightsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInsightsResponse {
        return try await self.client.execute(operation: "GetInsights", path: "/insights/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the count of all Security Hub membership invitations that were sent to the current member account, not including the currently accepted invitation.
    public func getInvitationsCount(_ input: GetInvitationsCountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInvitationsCountResponse {
        return try await self.client.execute(operation: "GetInvitationsCount", path: "/invitations/count", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides the details for the Security Hub master account for the current member account. Can be used by both member accounts that are in an organization and accounts that were invited manually.
    public func getMasterAccount(_ input: GetMasterAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMasterAccountResponse {
        return try await self.client.execute(operation: "GetMasterAccount", path: "/master", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the details for the Security Hub member accounts for the specified account IDs. A master account can be either a delegated Security Hub administrator account for an organization or a master account that enabled Security Hub manually. The results include both member accounts that are in an organization and accounts that were invited manually.
    public func getMembers(_ input: GetMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMembersResponse {
        return try await self.client.execute(operation: "GetMembers", path: "/members/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Invites other AWS accounts to become member accounts for the Security Hub master account that the invitation is sent from. This operation is only used to invite accounts that do not belong to an organization. Organization accounts do not receive invitations. Before you can use this action to invite a member, you must first use the  CreateMembers  action to create the member account in Security Hub. When the account owner enables Security Hub and accepts the invitation to become a member account, the master account can view the findings generated from the member account.
    public func inviteMembers(_ input: InviteMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InviteMembersResponse {
        return try await self.client.execute(operation: "InviteMembers", path: "/members/invite", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all findings-generating solutions (products) that you are subscribed to receive findings from in Security Hub.
    public func listEnabledProductsForImport(_ input: ListEnabledProductsForImportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEnabledProductsForImportResponse {
        return try await self.client.execute(operation: "ListEnabledProductsForImport", path: "/productSubscriptions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all Security Hub membership invitations that were sent to the current AWS account. This operation is only used by accounts that do not belong to an organization. Organization accounts do not receive invitations.
    public func listInvitations(_ input: ListInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInvitationsResponse {
        return try await self.client.execute(operation: "ListInvitations", path: "/invitations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists details about all member accounts for the current Security Hub master account. The results include both member accounts that belong to an organization and member accounts that were invited manually.
    public func listMembers(_ input: ListMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMembersResponse {
        return try await self.client.execute(operation: "ListMembers", path: "/members", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the Security Hub administrator accounts. Can only be called by the organization management account.
    public func listOrganizationAdminAccounts(_ input: ListOrganizationAdminAccountsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationAdminAccountsResponse {
        return try await self.client.execute(operation: "ListOrganizationAdminAccounts", path: "/organization/admin", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of tags associated with a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more tags to a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the name and description of a custom action target in Security Hub.
    public func updateActionTarget(_ input: UpdateActionTargetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateActionTargetResponse {
        return try await self.client.execute(operation: "UpdateActionTarget", path: "/actionTargets/{ActionTargetArn+}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  UpdateFindings is deprecated. Instead of UpdateFindings, use BatchUpdateFindings. Updates the Note and RecordState of the Security Hub-aggregated findings that the filter attributes specify. Any member account that can view the finding also sees the update to the finding.
    public func updateFindings(_ input: UpdateFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFindingsResponse {
        return try await self.client.execute(operation: "UpdateFindings", path: "/findings", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the Security Hub insight identified by the specified insight ARN.
    public func updateInsight(_ input: UpdateInsightRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateInsightResponse {
        return try await self.client.execute(operation: "UpdateInsight", path: "/insights/{InsightArn+}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used to update the configuration related to Organizations. Can only be called from a Security Hub administrator account.
    public func updateOrganizationConfiguration(_ input: UpdateOrganizationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateOrganizationConfigurationResponse {
        return try await self.client.execute(operation: "UpdateOrganizationConfiguration", path: "/organization/configuration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates configuration options for Security Hub.
    public func updateSecurityHubConfiguration(_ input: UpdateSecurityHubConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSecurityHubConfigurationResponse {
        return try await self.client.execute(operation: "UpdateSecurityHubConfiguration", path: "/accounts", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used to control whether an individual security standard control is enabled or disabled.
    public func updateStandardsControl(_ input: UpdateStandardsControlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateStandardsControlResponse {
        return try await self.client.execute(operation: "UpdateStandardsControl", path: "/standards/control/{StandardsControlArn+}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && $AsyncAwait
