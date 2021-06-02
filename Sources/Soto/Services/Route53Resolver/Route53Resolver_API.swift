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

@_exported import SotoCore

/// Service object for interacting with AWS Route53Resolver service.
///
/// When you create a VPC using Amazon VPC, you automatically get DNS resolution within the VPC from Route 53 Resolver. By default, Resolver answers DNS queries for VPC domain names such as domain names for EC2 instances or ELB load balancers. Resolver performs recursive lookups against public name servers for all other domain names. You can also configure DNS resolution between your VPC and your network over a Direct Connect or VPN connection:  Forward DNS queries from resolvers on your network to Route 53 Resolver  DNS resolvers on your network can forward DNS queries to Resolver in a specified VPC. This allows your DNS resolvers to easily resolve domain names for AWS resources such as EC2 instances or records in a Route 53 private hosted zone. For more information, see How DNS Resolvers on Your Network Forward DNS Queries to Route 53 Resolver in the Amazon Route 53 Developer Guide.  Conditionally forward queries from a VPC to resolvers on your network  You can configure Resolver to forward queries that it receives from EC2 instances in your VPCs to DNS resolvers on your network. To forward selected queries, you create Resolver rules that specify the domain names for the DNS queries that you want to forward (such as example.com), and the IP addresses of the DNS resolvers on your network that you want to forward the queries to. If a query matches multiple rules (example.com, acme.example.com), Resolver chooses the rule with the most specific match (acme.example.com) and forwards the query to the IP addresses that you specified in that rule. For more information, see How Route 53 Resolver Forwards DNS Queries from Your VPCs to Your Network in the Amazon Route 53 Developer Guide. Like Amazon VPC, Resolver is regional. In each region where you have VPCs, you can choose whether to forward queries from your VPCs to your network (outbound queries), from your network to your VPCs (inbound queries), or both.
public struct Route53Resolver: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Route53Resolver client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "Route53Resolver",
            service: "route53resolver",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-04-01",
            endpoint: endpoint,
            errorType: Route53ResolverErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Associates a FirewallRuleGroup with a VPC, to provide DNS filtering for the VPC.
    public func associateFirewallRuleGroup(_ input: AssociateFirewallRuleGroupRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateFirewallRuleGroupResponse> {
        return self.client.execute(operation: "AssociateFirewallRuleGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Adds IP addresses to an inbound or an outbound Resolver endpoint. If you want to add more than one IP address, submit one AssociateResolverEndpointIpAddress request for each IP address. To remove an IP address from an endpoint, see DisassociateResolverEndpointIpAddress.
    public func associateResolverEndpointIpAddress(_ input: AssociateResolverEndpointIpAddressRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateResolverEndpointIpAddressResponse> {
        return self.client.execute(operation: "AssociateResolverEndpointIpAddress", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Associates an Amazon VPC with a specified query logging configuration. Route 53 Resolver logs DNS queries that originate in all of the Amazon VPCs that are associated with a specified query logging configuration. To associate more than one VPC with a configuration, submit one AssociateResolverQueryLogConfig request for each VPC.  The VPCs that you associate with a query logging configuration must be in the same Region as the configuration.  To remove a VPC from a query logging configuration, see DisassociateResolverQueryLogConfig.
    public func associateResolverQueryLogConfig(_ input: AssociateResolverQueryLogConfigRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateResolverQueryLogConfigResponse> {
        return self.client.execute(operation: "AssociateResolverQueryLogConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Associates a Resolver rule with a VPC. When you associate a rule with a VPC, Resolver forwards all DNS queries for the domain name that is specified in the rule and that originate in the VPC. The queries are forwarded to the IP addresses for the DNS resolvers that are specified in the rule. For more information about rules, see CreateResolverRule.
    public func associateResolverRule(_ input: AssociateResolverRuleRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateResolverRuleResponse> {
        return self.client.execute(operation: "AssociateResolverRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates an empty firewall domain list for use in DNS Firewall rules. You can populate the domains for the new list with a file, using ImportFirewallDomains, or with domain strings, using UpdateFirewallDomains.
    public func createFirewallDomainList(_ input: CreateFirewallDomainListRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFirewallDomainListResponse> {
        return self.client.execute(operation: "CreateFirewallDomainList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates a single DNS Firewall rule in the specified rule group, using the specified domain list.
    public func createFirewallRule(_ input: CreateFirewallRuleRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFirewallRuleResponse> {
        return self.client.execute(operation: "CreateFirewallRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates an empty DNS Firewall rule group for filtering DNS network traffic in a VPC. You can add rules to the new rule group by calling CreateFirewallRule.
    public func createFirewallRuleGroup(_ input: CreateFirewallRuleGroupRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFirewallRuleGroupResponse> {
        return self.client.execute(operation: "CreateFirewallRuleGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates a Resolver endpoint. There are two types of Resolver endpoints, inbound and outbound:   An inbound Resolver endpoint forwards DNS queries to the DNS service for a VPC from your network.   An outbound Resolver endpoint forwards DNS queries from the DNS service for a VPC to your network.
    public func createResolverEndpoint(_ input: CreateResolverEndpointRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateResolverEndpointResponse> {
        return self.client.execute(operation: "CreateResolverEndpoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates a Resolver query logging configuration, which defines where you want Resolver to save DNS query logs that originate in your VPCs. Resolver can log queries only for VPCs that are in the same Region as the query logging configuration. To specify which VPCs you want to log queries for, you use AssociateResolverQueryLogConfig. For more information, see AssociateResolverQueryLogConfig.  You can optionally use AWS Resource Access Manager (AWS RAM) to share a query logging configuration with other AWS accounts. The other accounts can then associate VPCs with the configuration. The query logs that Resolver creates for a configuration include all DNS queries that originate in all VPCs that are associated with the configuration.
    public func createResolverQueryLogConfig(_ input: CreateResolverQueryLogConfigRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateResolverQueryLogConfigResponse> {
        return self.client.execute(operation: "CreateResolverQueryLogConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// For DNS queries that originate in your VPCs, specifies which Resolver endpoint the queries pass through, one domain name that you want to forward to your network, and the IP addresses of the DNS resolvers in your network.
    public func createResolverRule(_ input: CreateResolverRuleRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateResolverRuleResponse> {
        return self.client.execute(operation: "CreateResolverRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes the specified domain list.
    public func deleteFirewallDomainList(_ input: DeleteFirewallDomainListRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFirewallDomainListResponse> {
        return self.client.execute(operation: "DeleteFirewallDomainList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes the specified firewall rule.
    public func deleteFirewallRule(_ input: DeleteFirewallRuleRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFirewallRuleResponse> {
        return self.client.execute(operation: "DeleteFirewallRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes the specified firewall rule group.
    public func deleteFirewallRuleGroup(_ input: DeleteFirewallRuleGroupRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFirewallRuleGroupResponse> {
        return self.client.execute(operation: "DeleteFirewallRuleGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes a Resolver endpoint. The effect of deleting a Resolver endpoint depends on whether it's an inbound or an outbound Resolver endpoint:    Inbound: DNS queries from your network are no longer routed to the DNS service for the specified VPC.    Outbound: DNS queries from a VPC are no longer routed to your network.
    public func deleteResolverEndpoint(_ input: DeleteResolverEndpointRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteResolverEndpointResponse> {
        return self.client.execute(operation: "DeleteResolverEndpoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes a query logging configuration. When you delete a configuration, Resolver stops logging DNS queries for all of the Amazon VPCs that are associated with the configuration. This also applies if the query logging configuration is shared with other AWS accounts, and the other accounts have associated VPCs with the shared configuration. Before you can delete a query logging configuration, you must first disassociate all VPCs from the configuration. See DisassociateResolverQueryLogConfig. If you used Resource Access Manager (RAM) to share a query logging configuration with other accounts, you must stop sharing the configuration before you can delete a configuration. The accounts that you shared the configuration with can first disassociate VPCs that they associated with the configuration, but that's not necessary. If you stop sharing the configuration, those VPCs are automatically disassociated from the configuration.
    public func deleteResolverQueryLogConfig(_ input: DeleteResolverQueryLogConfigRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteResolverQueryLogConfigResponse> {
        return self.client.execute(operation: "DeleteResolverQueryLogConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes a Resolver rule. Before you can delete a Resolver rule, you must disassociate it from all the VPCs that you associated the Resolver rule with. For more information, see DisassociateResolverRule.
    public func deleteResolverRule(_ input: DeleteResolverRuleRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteResolverRuleResponse> {
        return self.client.execute(operation: "DeleteResolverRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Disassociates a FirewallRuleGroup from a VPC, to remove DNS filtering from the VPC.
    public func disassociateFirewallRuleGroup(_ input: DisassociateFirewallRuleGroupRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateFirewallRuleGroupResponse> {
        return self.client.execute(operation: "DisassociateFirewallRuleGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Removes IP addresses from an inbound or an outbound Resolver endpoint. If you want to remove more than one IP address, submit one DisassociateResolverEndpointIpAddress request for each IP address. To add an IP address to an endpoint, see AssociateResolverEndpointIpAddress.
    public func disassociateResolverEndpointIpAddress(_ input: DisassociateResolverEndpointIpAddressRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateResolverEndpointIpAddressResponse> {
        return self.client.execute(operation: "DisassociateResolverEndpointIpAddress", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Disassociates a VPC from a query logging configuration.  Before you can delete a query logging configuration, you must first disassociate all VPCs from the configuration. If you used Resource Access Manager (RAM) to share a query logging configuration with other accounts, VPCs can be disassociated from the configuration in the following ways:   The accounts that you shared the configuration with can disassociate VPCs from the configuration.   You can stop sharing the configuration.
    public func disassociateResolverQueryLogConfig(_ input: DisassociateResolverQueryLogConfigRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateResolverQueryLogConfigResponse> {
        return self.client.execute(operation: "DisassociateResolverQueryLogConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Removes the association between a specified Resolver rule and a specified VPC.  If you disassociate a Resolver rule from a VPC, Resolver stops forwarding DNS queries for the domain name that you specified in the Resolver rule.
    public func disassociateResolverRule(_ input: DisassociateResolverRuleRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateResolverRuleResponse> {
        return self.client.execute(operation: "DisassociateResolverRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Retrieves the configuration of the firewall behavior provided by DNS Firewall for a single Amazon virtual private cloud (VPC).
    public func getFirewallConfig(_ input: GetFirewallConfigRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFirewallConfigResponse> {
        return self.client.execute(operation: "GetFirewallConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Retrieves the specified firewall domain list.
    public func getFirewallDomainList(_ input: GetFirewallDomainListRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFirewallDomainListResponse> {
        return self.client.execute(operation: "GetFirewallDomainList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Retrieves the specified firewall rule group.
    public func getFirewallRuleGroup(_ input: GetFirewallRuleGroupRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFirewallRuleGroupResponse> {
        return self.client.execute(operation: "GetFirewallRuleGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Retrieves a firewall rule group association, which enables DNS filtering for a VPC with one rule group. A VPC can have more than one firewall rule group association, and a rule group can be associated with more than one VPC.
    public func getFirewallRuleGroupAssociation(_ input: GetFirewallRuleGroupAssociationRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFirewallRuleGroupAssociationResponse> {
        return self.client.execute(operation: "GetFirewallRuleGroupAssociation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns the AWS Identity and Access Management (AWS IAM) policy for sharing the specified rule group. You can use the policy to share the rule group using AWS Resource Access Manager (RAM).
    public func getFirewallRuleGroupPolicy(_ input: GetFirewallRuleGroupPolicyRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFirewallRuleGroupPolicyResponse> {
        return self.client.execute(operation: "GetFirewallRuleGroupPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets DNSSEC validation information for a specified resource.
    public func getResolverDnssecConfig(_ input: GetResolverDnssecConfigRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResolverDnssecConfigResponse> {
        return self.client.execute(operation: "GetResolverDnssecConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets information about a specified Resolver endpoint, such as whether it's an inbound or an outbound Resolver endpoint, and the current status of the endpoint.
    public func getResolverEndpoint(_ input: GetResolverEndpointRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResolverEndpointResponse> {
        return self.client.execute(operation: "GetResolverEndpoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets information about a specified Resolver query logging configuration, such as the number of VPCs that the configuration is logging queries for and the location that logs are sent to.
    public func getResolverQueryLogConfig(_ input: GetResolverQueryLogConfigRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResolverQueryLogConfigResponse> {
        return self.client.execute(operation: "GetResolverQueryLogConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets information about a specified association between a Resolver query logging configuration and an Amazon VPC. When you associate a VPC with a query logging configuration, Resolver logs DNS queries that originate in that VPC.
    public func getResolverQueryLogConfigAssociation(_ input: GetResolverQueryLogConfigAssociationRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResolverQueryLogConfigAssociationResponse> {
        return self.client.execute(operation: "GetResolverQueryLogConfigAssociation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets information about a query logging policy. A query logging policy specifies the Resolver query logging operations and resources that you want to allow another AWS account to be able to use.
    public func getResolverQueryLogConfigPolicy(_ input: GetResolverQueryLogConfigPolicyRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResolverQueryLogConfigPolicyResponse> {
        return self.client.execute(operation: "GetResolverQueryLogConfigPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets information about a specified Resolver rule, such as the domain name that the rule forwards DNS queries for and the ID of the outbound Resolver endpoint that the rule is associated with.
    public func getResolverRule(_ input: GetResolverRuleRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResolverRuleResponse> {
        return self.client.execute(operation: "GetResolverRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets information about an association between a specified Resolver rule and a VPC. You associate a Resolver rule and a VPC using AssociateResolverRule.
    public func getResolverRuleAssociation(_ input: GetResolverRuleAssociationRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResolverRuleAssociationResponse> {
        return self.client.execute(operation: "GetResolverRuleAssociation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets information about the Resolver rule policy for a specified rule. A Resolver rule policy includes the rule that you want to share with another account, the account that you want to share the rule with, and the Resolver operations that you want to allow the account to use.
    public func getResolverRulePolicy(_ input: GetResolverRulePolicyRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResolverRulePolicyResponse> {
        return self.client.execute(operation: "GetResolverRulePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Imports domain names from a file into a domain list, for use in a DNS firewall rule group.  Each domain specification in your domain list must satisfy the following requirements:    It can optionally start with * (asterisk).   With the exception of the optional starting asterisk, it must only contain the following characters: A-Z, a-z, 0-9, - (hyphen).   It must be from 1-255 characters in length.
    public func importFirewallDomains(_ input: ImportFirewallDomainsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportFirewallDomainsResponse> {
        return self.client.execute(operation: "ImportFirewallDomains", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Retrieves the firewall configurations that you have defined. DNS Firewall uses the configurations to manage firewall behavior for your VPCs.  A single call might return only a partial list of the configurations. For information, see MaxResults.
    public func listFirewallConfigs(_ input: ListFirewallConfigsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFirewallConfigsResponse> {
        return self.client.execute(operation: "ListFirewallConfigs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Retrieves the firewall domain lists that you have defined. For each firewall domain list, you can retrieve the domains that are defined for a list by calling ListFirewallDomains.  A single call to this list operation might return only a partial list of the domain lists. For information, see MaxResults.
    public func listFirewallDomainLists(_ input: ListFirewallDomainListsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFirewallDomainListsResponse> {
        return self.client.execute(operation: "ListFirewallDomainLists", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Retrieves the domains that you have defined for the specified firewall domain list.  A single call might return only a partial list of the domains. For information, see MaxResults.
    public func listFirewallDomains(_ input: ListFirewallDomainsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFirewallDomainsResponse> {
        return self.client.execute(operation: "ListFirewallDomains", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Retrieves the firewall rule group associations that you have defined. Each association enables DNS filtering for a VPC with one rule group.  A single call might return only a partial list of the associations. For information, see MaxResults.
    public func listFirewallRuleGroupAssociations(_ input: ListFirewallRuleGroupAssociationsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFirewallRuleGroupAssociationsResponse> {
        return self.client.execute(operation: "ListFirewallRuleGroupAssociations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Retrieves the minimal high-level information for the rule groups that you have defined.  A single call might return only a partial list of the rule groups. For information, see MaxResults.
    public func listFirewallRuleGroups(_ input: ListFirewallRuleGroupsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFirewallRuleGroupsResponse> {
        return self.client.execute(operation: "ListFirewallRuleGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Retrieves the firewall rules that you have defined for the specified firewall rule group. DNS Firewall uses the rules in a rule group to filter DNS network traffic for a VPC.  A single call might return only a partial list of the rules. For information, see MaxResults.
    public func listFirewallRules(_ input: ListFirewallRulesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFirewallRulesResponse> {
        return self.client.execute(operation: "ListFirewallRules", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the configurations for DNSSEC validation that are associated with the current AWS account.
    public func listResolverDnssecConfigs(_ input: ListResolverDnssecConfigsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResolverDnssecConfigsResponse> {
        return self.client.execute(operation: "ListResolverDnssecConfigs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets the IP addresses for a specified Resolver endpoint.
    public func listResolverEndpointIpAddresses(_ input: ListResolverEndpointIpAddressesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResolverEndpointIpAddressesResponse> {
        return self.client.execute(operation: "ListResolverEndpointIpAddresses", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists all the Resolver endpoints that were created using the current AWS account.
    public func listResolverEndpoints(_ input: ListResolverEndpointsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResolverEndpointsResponse> {
        return self.client.execute(operation: "ListResolverEndpoints", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists information about associations between Amazon VPCs and query logging configurations.
    public func listResolverQueryLogConfigAssociations(_ input: ListResolverQueryLogConfigAssociationsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResolverQueryLogConfigAssociationsResponse> {
        return self.client.execute(operation: "ListResolverQueryLogConfigAssociations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists information about the specified query logging configurations. Each configuration defines where you want Resolver to save DNS query logs and specifies the VPCs that you want to log queries for.
    public func listResolverQueryLogConfigs(_ input: ListResolverQueryLogConfigsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResolverQueryLogConfigsResponse> {
        return self.client.execute(operation: "ListResolverQueryLogConfigs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the associations that were created between Resolver rules and VPCs using the current AWS account.
    public func listResolverRuleAssociations(_ input: ListResolverRuleAssociationsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResolverRuleAssociationsResponse> {
        return self.client.execute(operation: "ListResolverRuleAssociations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the Resolver rules that were created using the current AWS account.
    public func listResolverRules(_ input: ListResolverRulesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResolverRulesResponse> {
        return self.client.execute(operation: "ListResolverRules", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the tags that you associated with the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Attaches an AWS Identity and Access Management (AWS IAM) policy for sharing the rule group. You can use the policy to share the rule group using AWS Resource Access Manager (RAM).
    public func putFirewallRuleGroupPolicy(_ input: PutFirewallRuleGroupPolicyRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutFirewallRuleGroupPolicyResponse> {
        return self.client.execute(operation: "PutFirewallRuleGroupPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Specifies an AWS account that you want to share a query logging configuration with, the query logging configuration that you want to share, and the operations that you want the account to be able to perform on the configuration.
    public func putResolverQueryLogConfigPolicy(_ input: PutResolverQueryLogConfigPolicyRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutResolverQueryLogConfigPolicyResponse> {
        return self.client.execute(operation: "PutResolverQueryLogConfigPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Specifies an AWS rule that you want to share with another account, the account that you want to share the rule with, and the operations that you want the account to be able to perform on the rule.
    public func putResolverRulePolicy(_ input: PutResolverRulePolicyRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutResolverRulePolicyResponse> {
        return self.client.execute(operation: "PutResolverRulePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Adds one or more tags to a specified resource.
    public func tagResource(_ input: TagResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Removes one or more tags from a specified resource.
    public func untagResource(_ input: UntagResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates the configuration of the firewall behavior provided by DNS Firewall for a single Amazon virtual private cloud (VPC).
    public func updateFirewallConfig(_ input: UpdateFirewallConfigRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFirewallConfigResponse> {
        return self.client.execute(operation: "UpdateFirewallConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates the firewall domain list from an array of domain specifications.
    public func updateFirewallDomains(_ input: UpdateFirewallDomainsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFirewallDomainsResponse> {
        return self.client.execute(operation: "UpdateFirewallDomains", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates the specified firewall rule.
    public func updateFirewallRule(_ input: UpdateFirewallRuleRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFirewallRuleResponse> {
        return self.client.execute(operation: "UpdateFirewallRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Changes the association of a FirewallRuleGroup with a VPC. The association enables DNS filtering for the VPC.
    public func updateFirewallRuleGroupAssociation(_ input: UpdateFirewallRuleGroupAssociationRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFirewallRuleGroupAssociationResponse> {
        return self.client.execute(operation: "UpdateFirewallRuleGroupAssociation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates an existing DNSSEC validation configuration. If there is no existing DNSSEC validation configuration, one is created.
    public func updateResolverDnssecConfig(_ input: UpdateResolverDnssecConfigRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateResolverDnssecConfigResponse> {
        return self.client.execute(operation: "UpdateResolverDnssecConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates the name of an inbound or an outbound Resolver endpoint.
    public func updateResolverEndpoint(_ input: UpdateResolverEndpointRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateResolverEndpointResponse> {
        return self.client.execute(operation: "UpdateResolverEndpoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates settings for a specified Resolver rule. ResolverRuleId is required, and all other parameters are optional. If you don't specify a parameter, it retains its current value.
    public func updateResolverRule(_ input: UpdateResolverRuleRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateResolverRuleResponse> {
        return self.client.execute(operation: "UpdateResolverRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }
}

extension Route53Resolver {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Route53Resolver, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
