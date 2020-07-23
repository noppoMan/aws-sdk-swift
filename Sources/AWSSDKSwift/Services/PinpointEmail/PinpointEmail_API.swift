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
Client object for interacting with AWS PinpointEmail service.

Amazon Pinpoint Email Service Welcome to the Amazon Pinpoint Email API Reference. This guide provides information about the Amazon Pinpoint Email API (version 1.0), including supported operations, data types, parameters, and schemas.  Amazon Pinpoint is an AWS service that you can use to engage with your customers across multiple messaging channels. You can use Amazon Pinpoint to send email, SMS text messages, voice messages, and push notifications. The Amazon Pinpoint Email API provides programmatic access to options that are unique to the email channel and supplement the options provided by the Amazon Pinpoint API. If you're new to Amazon Pinpoint, you might find it helpful to also review the Amazon Pinpoint Developer Guide. The Amazon Pinpoint Developer Guide provides tutorials, code samples, and procedures that demonstrate how to use Amazon Pinpoint features programmatically and how to integrate Amazon Pinpoint functionality into mobile apps and other types of applications. The guide also provides information about key topics such as Amazon Pinpoint integration with other AWS services and the limits that apply to using the service. The Amazon Pinpoint Email API is available in several AWS Regions and it provides an endpoint for each of these Regions. For a list of all the Regions and endpoints where the API is currently available, see AWS Service Endpoints in the Amazon Web Services General Reference. To learn more about AWS Regions, see Managing AWS Regions in the Amazon Web Services General Reference. In each Region, AWS maintains multiple Availability Zones. These Availability Zones are physically isolated from each other, but are united by private, low-latency, high-throughput, and highly redundant network connections. These Availability Zones enable us to provide very high levels of availability and redundancy, while also minimizing latency. To learn more about the number of Availability Zones that are available in each Region, see AWS Global Infrastructure.
*/
public struct PinpointEmail {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the PinpointEmail client
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
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "email",
            signingName: "ses",
            serviceProtocol: .restjson,
            apiVersion: "2018-07-26",
            endpoint: endpoint,
            possibleErrorTypes: [PinpointEmailErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Create a configuration set. Configuration sets are groups of rules that you can apply to the emails you send using Amazon Pinpoint. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email. 
    public func createConfigurationSet(_ input: CreateConfigurationSetRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateConfigurationSetResponse> {
        return client.execute(operation: "CreateConfigurationSet", path: "/v1/email/configuration-sets", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Create an event destination. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage. A single configuration set can include more than one event destination.
    public func createConfigurationSetEventDestination(_ input: CreateConfigurationSetEventDestinationRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateConfigurationSetEventDestinationResponse> {
        return client.execute(operation: "CreateConfigurationSetEventDestination", path: "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Create a new pool of dedicated IP addresses. A pool can include one or more dedicated IP addresses that are associated with your Amazon Pinpoint account. You can associate a pool with a configuration set. When you send an email that uses that configuration set, Amazon Pinpoint sends it using only the IP addresses in the associated pool.
    public func createDedicatedIpPool(_ input: CreateDedicatedIpPoolRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateDedicatedIpPoolResponse> {
        return client.execute(operation: "CreateDedicatedIpPool", path: "/v1/email/dedicated-ip-pools", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Create a new predictive inbox placement test. Predictive inbox placement tests can help you predict how your messages will be handled by various email providers around the world. When you perform a predictive inbox placement test, you provide a sample message that contains the content that you plan to send to your customers. Amazon Pinpoint then sends that message to special email addresses spread across several major email providers. After about 24 hours, the test is complete, and you can use the GetDeliverabilityTestReport operation to view the results of the test.
    public func createDeliverabilityTestReport(_ input: CreateDeliverabilityTestReportRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateDeliverabilityTestReportResponse> {
        return client.execute(operation: "CreateDeliverabilityTestReport", path: "/v1/email/deliverability-dashboard/test", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Verifies an email identity for use with Amazon Pinpoint. In Amazon Pinpoint, an identity is an email address or domain that you use when you send email. Before you can use an identity to send email with Amazon Pinpoint, you first have to verify it. By verifying an address, you demonstrate that you're the owner of the address, and that you've given Amazon Pinpoint permission to send email from the address. When you verify an email address, Amazon Pinpoint sends an email to the address. Your email address is verified as soon as you follow the link in the verification email.  When you verify a domain, this operation provides a set of DKIM tokens, which you can convert into CNAME tokens. You add these CNAME tokens to the DNS configuration for your domain. Your domain is verified when Amazon Pinpoint detects these records in the DNS configuration for your domain. It usually takes around 72 hours to complete the domain verification process.
    public func createEmailIdentity(_ input: CreateEmailIdentityRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateEmailIdentityResponse> {
        return client.execute(operation: "CreateEmailIdentity", path: "/v1/email/identities", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Delete an existing configuration set. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
    public func deleteConfigurationSet(_ input: DeleteConfigurationSetRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteConfigurationSetResponse> {
        return client.execute(operation: "DeleteConfigurationSet", path: "/v1/email/configuration-sets/{ConfigurationSetName}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Delete an event destination. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.
    public func deleteConfigurationSetEventDestination(_ input: DeleteConfigurationSetEventDestinationRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteConfigurationSetEventDestinationResponse> {
        return client.execute(operation: "DeleteConfigurationSetEventDestination", path: "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Delete a dedicated IP pool.
    public func deleteDedicatedIpPool(_ input: DeleteDedicatedIpPoolRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteDedicatedIpPoolResponse> {
        return client.execute(operation: "DeleteDedicatedIpPool", path: "/v1/email/dedicated-ip-pools/{PoolName}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an email identity that you previously verified for use with Amazon Pinpoint. An identity can be either an email address or a domain name.
    public func deleteEmailIdentity(_ input: DeleteEmailIdentityRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteEmailIdentityResponse> {
        return client.execute(operation: "DeleteEmailIdentity", path: "/v1/email/identities/{EmailIdentity}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Obtain information about the email-sending status and capabilities of your Amazon Pinpoint account in the current AWS Region.
    public func getAccount(_ input: GetAccountRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAccountResponse> {
        return client.execute(operation: "GetAccount", path: "/v1/email/account", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve a list of the blacklists that your dedicated IP addresses appear on.
    public func getBlacklistReports(_ input: GetBlacklistReportsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetBlacklistReportsResponse> {
        return client.execute(operation: "GetBlacklistReports", path: "/v1/email/deliverability-dashboard/blacklist-report", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Get information about an existing configuration set, including the dedicated IP pool that it's associated with, whether or not it's enabled for sending email, and more. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
    public func getConfigurationSet(_ input: GetConfigurationSetRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetConfigurationSetResponse> {
        return client.execute(operation: "GetConfigurationSet", path: "/v1/email/configuration-sets/{ConfigurationSetName}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve a list of event destinations that are associated with a configuration set. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.
    public func getConfigurationSetEventDestinations(_ input: GetConfigurationSetEventDestinationsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetConfigurationSetEventDestinationsResponse> {
        return client.execute(operation: "GetConfigurationSetEventDestinations", path: "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Get information about a dedicated IP address, including the name of the dedicated IP pool that it's associated with, as well information about the automatic warm-up process for the address.
    public func getDedicatedIp(_ input: GetDedicatedIpRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDedicatedIpResponse> {
        return client.execute(operation: "GetDedicatedIp", path: "/v1/email/dedicated-ips/{IP}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  List the dedicated IP addresses that are associated with your Amazon Pinpoint account.
    public func getDedicatedIps(_ input: GetDedicatedIpsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDedicatedIpsResponse> {
        return client.execute(operation: "GetDedicatedIps", path: "/v1/email/dedicated-ips", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve information about the status of the Deliverability dashboard for your Amazon Pinpoint account. When the Deliverability dashboard is enabled, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email using Amazon Pinpoint. You also gain the ability to perform predictive inbox placement tests. When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon Pinpoint. For more information about the features and cost of a Deliverability dashboard subscription, see Amazon Pinpoint Pricing.
    public func getDeliverabilityDashboardOptions(_ input: GetDeliverabilityDashboardOptionsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDeliverabilityDashboardOptionsResponse> {
        return client.execute(operation: "GetDeliverabilityDashboardOptions", path: "/v1/email/deliverability-dashboard", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve the results of a predictive inbox placement test.
    public func getDeliverabilityTestReport(_ input: GetDeliverabilityTestReportRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDeliverabilityTestReportResponse> {
        return client.execute(operation: "GetDeliverabilityTestReport", path: "/v1/email/deliverability-dashboard/test-reports/{ReportId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve all the deliverability data for a specific campaign. This data is available for a campaign only if the campaign sent email by using a domain that the Deliverability dashboard is enabled for (PutDeliverabilityDashboardOption operation).
    public func getDomainDeliverabilityCampaign(_ input: GetDomainDeliverabilityCampaignRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDomainDeliverabilityCampaignResponse> {
        return client.execute(operation: "GetDomainDeliverabilityCampaign", path: "/v1/email/deliverability-dashboard/campaigns/{CampaignId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve inbox placement and engagement rates for the domains that you use to send email.
    public func getDomainStatisticsReport(_ input: GetDomainStatisticsReportRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDomainStatisticsReportResponse> {
        return client.execute(operation: "GetDomainStatisticsReport", path: "/v1/email/deliverability-dashboard/statistics-report/{Domain}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides information about a specific identity associated with your Amazon Pinpoint account, including the identity's verification status, its DKIM authentication status, and its custom Mail-From settings.
    public func getEmailIdentity(_ input: GetEmailIdentityRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetEmailIdentityResponse> {
        return client.execute(operation: "GetEmailIdentity", path: "/v1/email/identities/{EmailIdentity}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  List all of the configuration sets associated with your Amazon Pinpoint account in the current region. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
    public func listConfigurationSets(_ input: ListConfigurationSetsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListConfigurationSetsResponse> {
        return client.execute(operation: "ListConfigurationSets", path: "/v1/email/configuration-sets", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  List all of the dedicated IP pools that exist in your Amazon Pinpoint account in the current AWS Region.
    public func listDedicatedIpPools(_ input: ListDedicatedIpPoolsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDedicatedIpPoolsResponse> {
        return client.execute(operation: "ListDedicatedIpPools", path: "/v1/email/dedicated-ip-pools", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses. For predictive inbox placement tests that are complete, you can use the GetDeliverabilityTestReport operation to view the results.
    public func listDeliverabilityTestReports(_ input: ListDeliverabilityTestReportsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDeliverabilityTestReportsResponse> {
        return client.execute(operation: "ListDeliverabilityTestReports", path: "/v1/email/deliverability-dashboard/test-reports", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard (PutDeliverabilityDashboardOption operation) for the domain.
    public func listDomainDeliverabilityCampaigns(_ input: ListDomainDeliverabilityCampaignsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDomainDeliverabilityCampaignsResponse> {
        return client.execute(operation: "ListDomainDeliverabilityCampaigns", path: "/v1/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of all of the email identities that are associated with your Amazon Pinpoint account. An identity can be either an email address or a domain. This operation returns identities that are verified as well as those that aren't.
    public func listEmailIdentities(_ input: ListEmailIdentitiesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListEmailIdentitiesResponse> {
        return client.execute(operation: "ListEmailIdentities", path: "/v1/email/identities", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve a list of the tags (keys and values) that are associated with a specified resource. A tag is a label that you optionally define and associate with a resource in Amazon Pinpoint. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/v1/email/tags", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Enable or disable the automatic warm-up feature for dedicated IP addresses.
    public func putAccountDedicatedIpWarmupAttributes(_ input: PutAccountDedicatedIpWarmupAttributesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutAccountDedicatedIpWarmupAttributesResponse> {
        return client.execute(operation: "PutAccountDedicatedIpWarmupAttributes", path: "/v1/email/account/dedicated-ips/warmup", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Enable or disable the ability of your account to send email.
    public func putAccountSendingAttributes(_ input: PutAccountSendingAttributesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutAccountSendingAttributesResponse> {
        return client.execute(operation: "PutAccountSendingAttributes", path: "/v1/email/account/sending", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Associate a configuration set with a dedicated IP pool. You can use dedicated IP pools to create groups of dedicated IP addresses for sending specific types of email.
    public func putConfigurationSetDeliveryOptions(_ input: PutConfigurationSetDeliveryOptionsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutConfigurationSetDeliveryOptionsResponse> {
        return client.execute(operation: "PutConfigurationSetDeliveryOptions", path: "/v1/email/configuration-sets/{ConfigurationSetName}/delivery-options", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Enable or disable collection of reputation metrics for emails that you send using a particular configuration set in a specific AWS Region.
    public func putConfigurationSetReputationOptions(_ input: PutConfigurationSetReputationOptionsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutConfigurationSetReputationOptionsResponse> {
        return client.execute(operation: "PutConfigurationSetReputationOptions", path: "/v1/email/configuration-sets/{ConfigurationSetName}/reputation-options", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Enable or disable email sending for messages that use a particular configuration set in a specific AWS Region.
    public func putConfigurationSetSendingOptions(_ input: PutConfigurationSetSendingOptionsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutConfigurationSetSendingOptionsResponse> {
        return client.execute(operation: "PutConfigurationSetSendingOptions", path: "/v1/email/configuration-sets/{ConfigurationSetName}/sending", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Specify a custom domain to use for open and click tracking elements in email that you send using Amazon Pinpoint.
    public func putConfigurationSetTrackingOptions(_ input: PutConfigurationSetTrackingOptionsRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutConfigurationSetTrackingOptionsResponse> {
        return client.execute(operation: "PutConfigurationSetTrackingOptions", path: "/v1/email/configuration-sets/{ConfigurationSetName}/tracking-options", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Move a dedicated IP address to an existing dedicated IP pool.  The dedicated IP address that you specify must already exist, and must be associated with your Amazon Pinpoint account.  The dedicated IP pool you specify must already exist. You can create a new pool by using the CreateDedicatedIpPool operation. 
    public func putDedicatedIpInPool(_ input: PutDedicatedIpInPoolRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutDedicatedIpInPoolResponse> {
        return client.execute(operation: "PutDedicatedIpInPool", path: "/v1/email/dedicated-ips/{IP}/pool", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    public func putDedicatedIpWarmupAttributes(_ input: PutDedicatedIpWarmupAttributesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutDedicatedIpWarmupAttributesResponse> {
        return client.execute(operation: "PutDedicatedIpWarmupAttributes", path: "/v1/email/dedicated-ips/{IP}/warmup", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Enable or disable the Deliverability dashboard for your Amazon Pinpoint account. When you enable the Deliverability dashboard, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email using Amazon Pinpoint. You also gain the ability to perform predictive inbox placement tests. When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon Pinpoint. For more information about the features and cost of a Deliverability dashboard subscription, see Amazon Pinpoint Pricing.
    public func putDeliverabilityDashboardOption(_ input: PutDeliverabilityDashboardOptionRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutDeliverabilityDashboardOptionResponse> {
        return client.execute(operation: "PutDeliverabilityDashboardOption", path: "/v1/email/deliverability-dashboard", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Used to enable or disable DKIM authentication for an email identity.
    public func putEmailIdentityDkimAttributes(_ input: PutEmailIdentityDkimAttributesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutEmailIdentityDkimAttributesResponse> {
        return client.execute(operation: "PutEmailIdentityDkimAttributes", path: "/v1/email/identities/{EmailIdentity}/dkim", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Used to enable or disable feedback forwarding for an identity. This setting determines what happens when an identity is used to send an email that results in a bounce or complaint event. When you enable feedback forwarding, Amazon Pinpoint sends you email notifications when bounce or complaint events occur. Amazon Pinpoint sends this notification to the address that you specified in the Return-Path header of the original email. When you disable feedback forwarding, Amazon Pinpoint sends notifications through other mechanisms, such as by notifying an Amazon SNS topic. You're required to have a method of tracking bounces and complaints. If you haven't set up another mechanism for receiving bounce or complaint notifications, Amazon Pinpoint sends an email notification when these events occur (even if this setting is disabled).
    public func putEmailIdentityFeedbackAttributes(_ input: PutEmailIdentityFeedbackAttributesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutEmailIdentityFeedbackAttributesResponse> {
        return client.execute(operation: "PutEmailIdentityFeedbackAttributes", path: "/v1/email/identities/{EmailIdentity}/feedback", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Used to enable or disable the custom Mail-From domain configuration for an email identity.
    public func putEmailIdentityMailFromAttributes(_ input: PutEmailIdentityMailFromAttributesRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutEmailIdentityMailFromAttributesResponse> {
        return client.execute(operation: "PutEmailIdentityMailFromAttributes", path: "/v1/email/identities/{EmailIdentity}/mail-from", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Sends an email message. You can use the Amazon Pinpoint Email API to send two types of messages:    Simple – A standard email message. When you create this type of message, you specify the sender, the recipient, and the message body, and Amazon Pinpoint assembles the message for you.    Raw – A raw, MIME-formatted email message. When you send this type of email, you have to specify all of the message headers, as well as the message body. You can use this message type to send messages that contain attachments. The message that you specify has to be a valid MIME message.  
    public func sendEmail(_ input: SendEmailRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<SendEmailResponse> {
        return client.execute(operation: "SendEmail", path: "/v1/email/outbound-emails", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Add one or more tags (keys and values) to a specified resource. A tag is a label that you optionally define and associate with a resource in Amazon Pinpoint. Tags can help you categorize and manage resources in different ways, such as by purpose, owner, environment, or other criteria. A resource can have as many as 50 tags. Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/v1/email/tags", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Remove one or more tags (keys and values) from a specified resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/v1/email/tags", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Update the configuration of an event destination for a configuration set. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.
    public func updateConfigurationSetEventDestination(_ input: UpdateConfigurationSetEventDestinationRequest, on eventLoop: EventLoop? = nil, logger: Logging.Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateConfigurationSetEventDestinationResponse> {
        return client.execute(operation: "UpdateConfigurationSetEventDestination", path: "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
