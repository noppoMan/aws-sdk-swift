//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore

/**
Client object for interacting with AWS Route53Domains service.

Amazon Route 53 API actions let you register domain names and perform related operations.
*/
public struct Route53Domains: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the Route53Domains client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.context = AWSServiceContext(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "Route53Domains_v20140515",
            service: "route53domains",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2014-05-15",
            endpoint: endpoint,
            errorType: Route53DomainsErrorType.self,
            timeout: timeout
        )
    }
    
    public func transform(_ transform:(AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, context: transform(self.context))
    }
    
    //MARK: API Calls

    ///  Accepts the transfer of a domain from another AWS account to the current AWS account. You initiate a transfer between AWS accounts using TransferDomainToAnotherAwsAccount.  Use either ListOperations or GetOperationDetail to determine whether the operation succeeded. GetOperationDetail provides additional information, for example, Domain Transfer from Aws Account 111122223333 has been cancelled. 
    public func acceptDomainTransferFromAnotherAwsAccount(_ input: AcceptDomainTransferFromAnotherAwsAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AcceptDomainTransferFromAnotherAwsAccountResponse> {
        return client.execute(operation: "AcceptDomainTransferFromAnotherAwsAccount", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Cancels the transfer of a domain from the current AWS account to another AWS account. You initiate a transfer between AWS accounts using TransferDomainToAnotherAwsAccount.   You must cancel the transfer before the other AWS account accepts the transfer using AcceptDomainTransferFromAnotherAwsAccount.  Use either ListOperations or GetOperationDetail to determine whether the operation succeeded. GetOperationDetail provides additional information, for example, Domain Transfer from Aws Account 111122223333 has been cancelled. 
    public func cancelDomainTransferToAnotherAwsAccount(_ input: CancelDomainTransferToAnotherAwsAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelDomainTransferToAnotherAwsAccountResponse> {
        return client.execute(operation: "CancelDomainTransferToAnotherAwsAccount", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation checks the availability of one domain name. Note that if the availability status of a domain is pending, you must submit another request to determine the availability of the domain name.
    public func checkDomainAvailability(_ input: CheckDomainAvailabilityRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckDomainAvailabilityResponse> {
        return client.execute(operation: "CheckDomainAvailability", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Checks whether a domain name can be transferred to Amazon Route 53. 
    public func checkDomainTransferability(_ input: CheckDomainTransferabilityRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckDomainTransferabilityResponse> {
        return client.execute(operation: "CheckDomainTransferability", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation deletes the specified tags for a domain. All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.
    public func deleteTagsForDomain(_ input: DeleteTagsForDomainRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTagsForDomainResponse> {
        return client.execute(operation: "DeleteTagsForDomain", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation disables automatic renewal of domain registration for the specified domain.
    public func disableDomainAutoRenew(_ input: DisableDomainAutoRenewRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableDomainAutoRenewResponse> {
        return client.execute(operation: "DisableDomainAutoRenew", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation removes the transfer lock on the domain (specifically the clientTransferProhibited status) to allow domain transfers. We recommend you refrain from performing this action unless you intend to transfer the domain to a different registrar. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.
    public func disableDomainTransferLock(_ input: DisableDomainTransferLockRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableDomainTransferLockResponse> {
        return client.execute(operation: "DisableDomainTransferLock", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation configures Amazon Route 53 to automatically renew the specified domain before the domain registration expires. The cost of renewing your domain registration is billed to your AWS account. The period during which you can renew a domain name varies by TLD. For a list of TLDs and their renewal policies, see Domains That You Can Register with Amazon Route 53 in the Amazon Route 53 Developer Guide. Route 53 requires that you renew before the end of the renewal period so we can complete processing before the deadline.
    public func enableDomainAutoRenew(_ input: EnableDomainAutoRenewRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableDomainAutoRenewResponse> {
        return client.execute(operation: "EnableDomainAutoRenew", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation sets the transfer lock on the domain (specifically the clientTransferProhibited status) to prevent domain transfers. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.
    public func enableDomainTransferLock(_ input: EnableDomainTransferLockRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableDomainTransferLockResponse> {
        return client.execute(operation: "EnableDomainTransferLock", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation returns information about whether the registrant contact has responded. If you want us to resend the email, use the ResendContactReachabilityEmail operation.
    public func getContactReachabilityStatus(_ input: GetContactReachabilityStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetContactReachabilityStatusResponse> {
        return client.execute(operation: "GetContactReachabilityStatus", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation returns detailed information about a specified domain that is associated with the current AWS account. Contact information for the domain is also returned as part of the output.
    public func getDomainDetail(_ input: GetDomainDetailRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDomainDetailResponse> {
        return client.execute(operation: "GetDomainDetail", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  The GetDomainSuggestions operation returns a list of suggested domain names.
    public func getDomainSuggestions(_ input: GetDomainSuggestionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDomainSuggestionsResponse> {
        return client.execute(operation: "GetDomainSuggestions", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation returns the current status of an operation that is not completed.
    public func getOperationDetail(_ input: GetOperationDetailRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetOperationDetailResponse> {
        return client.execute(operation: "GetOperationDetail", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation returns all the domain names registered with Amazon Route 53 for the current AWS account.
    public func listDomains(_ input: ListDomainsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDomainsResponse> {
        return client.execute(operation: "ListDomains", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns information about all of the operations that return an operation ID and that have ever been performed on domains that were registered by the current account. 
    public func listOperations(_ input: ListOperationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOperationsResponse> {
        return client.execute(operation: "ListOperations", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation returns all of the tags that are associated with the specified domain. All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.
    public func listTagsForDomain(_ input: ListTagsForDomainRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForDomainResponse> {
        return client.execute(operation: "ListTagsForDomain", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation registers a domain. Domains are registered either by Amazon Registrar (for .com, .net, and .org domains) or by our registrar associate, Gandi (for all other domains). For some top-level domains (TLDs), this operation requires extra parameters. When you register a domain, Amazon Route 53 does the following:   Creates a Route 53 hosted zone that has the same name as the domain. Route 53 assigns four name servers to your hosted zone and automatically updates your domain registration with the names of these name servers.   Enables autorenew, so your domain registration will renew automatically each year. We'll notify you in advance of the renewal date so you can choose whether to renew the registration.   Optionally enables privacy protection, so WHOIS queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you don't enable privacy protection, WHOIS queries return the information that you entered for the registrant, admin, and tech contacts.   If registration is successful, returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant is notified by email.   Charges your AWS account an amount based on the top-level domain. For more information, see Amazon Route 53 Pricing.  
    public func registerDomain(_ input: RegisterDomainRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterDomainResponse> {
        return client.execute(operation: "RegisterDomain", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Rejects the transfer of a domain from another AWS account to the current AWS account. You initiate a transfer between AWS accounts using TransferDomainToAnotherAwsAccount.  Use either ListOperations or GetOperationDetail to determine whether the operation succeeded. GetOperationDetail provides additional information, for example, Domain Transfer from Aws Account 111122223333 has been cancelled. 
    public func rejectDomainTransferFromAnotherAwsAccount(_ input: RejectDomainTransferFromAnotherAwsAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RejectDomainTransferFromAnotherAwsAccountResponse> {
        return client.execute(operation: "RejectDomainTransferFromAnotherAwsAccount", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation renews a domain for the specified number of years. The cost of renewing your domain is billed to your AWS account. We recommend that you renew your domain several weeks before the expiration date. Some TLD registries delete domains before the expiration date if you haven't renewed far enough in advance. For more information about renewing domain registration, see Renewing Registration for a Domain in the Amazon Route 53 Developer Guide.
    public func renewDomain(_ input: RenewDomainRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenewDomainResponse> {
        return client.execute(operation: "RenewDomain", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact.
    public func resendContactReachabilityEmail(_ input: ResendContactReachabilityEmailRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResendContactReachabilityEmailResponse> {
        return client.execute(operation: "ResendContactReachabilityEmail", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation returns the AuthCode for the domain. To transfer a domain to another registrar, you provide this value to the new registrar.
    public func retrieveDomainAuthCode(_ input: RetrieveDomainAuthCodeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RetrieveDomainAuthCodeResponse> {
        return client.execute(operation: "RetrieveDomainAuthCode", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Transfers a domain from another registrar to Amazon Route 53. When the transfer is complete, the domain is registered either with Amazon Registrar (for .com, .net, and .org domains) or with our registrar associate, Gandi (for all other TLDs). For more information about transferring domains, see the following topics:   For transfer requirements, a detailed procedure, and information about viewing the status of a domain that you're transferring to Route 53, see Transferring Registration for a Domain to Amazon Route 53 in the Amazon Route 53 Developer Guide.   For information about how to transfer a domain from one AWS account to another, see TransferDomainToAnotherAwsAccount.    For information about how to transfer a domain to another domain registrar, see Transferring a Domain from Amazon Route 53 to Another Registrar in the Amazon Route 53 Developer Guide.   If the registrar for your domain is also the DNS service provider for the domain, we highly recommend that you transfer your DNS service to Route 53 or to another DNS service provider before you transfer your registration. Some registrars provide free DNS service when you purchase a domain registration. When you transfer the registration, the previous registrar will not renew your domain registration and could end your DNS service at any time.  If the registrar for your domain is also the DNS service provider for the domain and you don't transfer DNS service to another provider, your website, email, and the web applications associated with the domain might become unavailable.  If the transfer is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the transfer doesn't complete successfully, the domain registrant will be notified by email.
    public func transferDomain(_ input: TransferDomainRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TransferDomainResponse> {
        return client.execute(operation: "TransferDomain", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Transfers a domain from the current AWS account to another AWS account. Note the following:   The AWS account that you're transferring the domain to must accept the transfer. If the other account doesn't accept the transfer within 3 days, we cancel the transfer. See AcceptDomainTransferFromAnotherAwsAccount.    You can cancel the transfer before the other account accepts it. See CancelDomainTransferToAnotherAwsAccount.    The other account can reject the transfer. See RejectDomainTransferFromAnotherAwsAccount.     When you transfer a domain from one AWS account to another, Route 53 doesn't transfer the hosted zone that is associated with the domain. DNS resolution isn't affected if the domain and the hosted zone are owned by separate accounts, so transferring the hosted zone is optional. For information about transferring the hosted zone to another AWS account, see Migrating a Hosted Zone to a Different AWS Account in the Amazon Route 53 Developer Guide.  Use either ListOperations or GetOperationDetail to determine whether the operation succeeded. GetOperationDetail provides additional information, for example, Domain Transfer from Aws Account 111122223333 has been cancelled. 
    public func transferDomainToAnotherAwsAccount(_ input: TransferDomainToAnotherAwsAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TransferDomainToAnotherAwsAccountResponse> {
        return client.execute(operation: "TransferDomainToAnotherAwsAccount", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation updates the contact information for a particular domain. You must specify information for at least one contact: registrant, administrator, or technical. If the update is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.
    public func updateDomainContact(_ input: UpdateDomainContactRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDomainContactResponse> {
        return client.execute(operation: "UpdateDomainContact", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation updates the specified domain contact's privacy setting. When privacy protection is enabled, contact information such as email address is replaced either with contact information for Amazon Registrar (for .com, .net, and .org domains) or with contact information for our registrar associate, Gandi. This operation affects only the contact information for the specified contact type (registrant, administrator, or tech). If the request succeeds, Amazon Route 53 returns an operation ID that you can use with GetOperationDetail to track the progress and completion of the action. If the request doesn't complete successfully, the domain registrant will be notified by email.  By disabling the privacy service via API, you consent to the publication of the contact information provided for this domain via the public WHOIS database. You certify that you are the registrant of this domain name and have the authority to make this decision. You may withdraw your consent at any time by enabling privacy protection using either UpdateDomainContactPrivacy or the Route 53 console. Enabling privacy protection removes the contact information provided for this domain from the WHOIS database. For more information on our privacy practices, see https://aws.amazon.com/privacy/. 
    public func updateDomainContactPrivacy(_ input: UpdateDomainContactPrivacyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDomainContactPrivacyResponse> {
        return client.execute(operation: "UpdateDomainContactPrivacy", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain. If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.
    public func updateDomainNameservers(_ input: UpdateDomainNameserversRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDomainNameserversResponse> {
        return client.execute(operation: "UpdateDomainNameservers", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  This operation adds or updates tags for a specified domain. All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.
    public func updateTagsForDomain(_ input: UpdateTagsForDomainRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTagsForDomainResponse> {
        return client.execute(operation: "UpdateTagsForDomain", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns all the domain-related billing records for the current AWS account for a specified period
    public func viewBilling(_ input: ViewBillingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ViewBillingResponse> {
        return client.execute(operation: "ViewBilling", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }
}

extension Route53Domains {
    init(client: AWSClient, context: AWSServiceContext) {
        self.client = client
        self.context = context
    }
}
