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
Client object for interacting with AWS ServiceQuotas service.

 Service Quotas is a web service that you can use to manage many of your AWS service quotas. Quotas, also referred to as limits, are the maximum values for a resource, item, or operation. This guide provide descriptions of the Service Quotas actions that you can call from an API. For the Service Quotas user guide, which explains how to use Service Quotas from the console, see What is Service Quotas.   AWS provides SDKs that consist of libraries and sample code for programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc...,). The SDKs provide a convenient way to create programmatic access to Service Quotas and AWS. For information about the AWS SDKs, including how to download and install them, see the Tools for Amazon Web Services page. 
*/
public struct ServiceQuotas: AWSService {

    //MARK: Member variables

    public let client: AWSClient
    public let context: AWSServiceContext

    //MARK: Initialization

    /// Initialize the ServiceQuotas client
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
            amzTarget: "ServiceQuotasV20190624",
            service: "servicequotas",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2019-06-24",
            endpoint: endpoint,
            errorType: ServiceQuotasErrorType.self,
            timeout: timeout
        )
    }
    
    public func transform(_ transform:(AWSServiceContext) -> AWSServiceContext) -> Self {
        return Self(client: self.client, context: transform(self.context))
    }
    
    //MARK: API Calls

    ///  Associates the Service Quotas template with your organization so that when new accounts are created in your organization, the template submits increase requests for the specified service quotas. Use the Service Quotas template to request an increase for any adjustable quota value. After you define the Service Quotas template, use this operation to associate, or enable, the template. 
    public func associateServiceQuotaTemplate(_ input: AssociateServiceQuotaTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateServiceQuotaTemplateResponse> {
        return client.execute(operation: "AssociateServiceQuotaTemplate", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Removes a service quota increase request from the Service Quotas template. 
    public func deleteServiceQuotaIncreaseRequestFromTemplate(_ input: DeleteServiceQuotaIncreaseRequestFromTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteServiceQuotaIncreaseRequestFromTemplateResponse> {
        return client.execute(operation: "DeleteServiceQuotaIncreaseRequestFromTemplate", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Disables the Service Quotas template. Once the template is disabled, it does not request quota increases for new accounts in your organization. Disabling the quota template does not apply the quota increase requests from the template.   Related operations    To enable the quota template, call AssociateServiceQuotaTemplate.    To delete a specific service quota from the template, use DeleteServiceQuotaIncreaseRequestFromTemplate.  
    public func disassociateServiceQuotaTemplate(_ input: DisassociateServiceQuotaTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateServiceQuotaTemplateResponse> {
        return client.execute(operation: "DisassociateServiceQuotaTemplate", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Retrieves the default service quotas values. The Value returned for each quota is the AWS default value, even if the quotas have been increased.. 
    public func getAWSDefaultServiceQuota(_ input: GetAWSDefaultServiceQuotaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAWSDefaultServiceQuotaResponse> {
        return client.execute(operation: "GetAWSDefaultServiceQuota", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Retrieves the ServiceQuotaTemplateAssociationStatus value from the service. Use this action to determine if the Service Quota template is associated, or enabled. 
    public func getAssociationForServiceQuotaTemplate(_ input: GetAssociationForServiceQuotaTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAssociationForServiceQuotaTemplateResponse> {
        return client.execute(operation: "GetAssociationForServiceQuotaTemplate", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Retrieves the details for a particular increase request. 
    public func getRequestedServiceQuotaChange(_ input: GetRequestedServiceQuotaChangeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRequestedServiceQuotaChangeResponse> {
        return client.execute(operation: "GetRequestedServiceQuotaChange", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns the details for the specified service quota. This operation provides a different Value than the GetAWSDefaultServiceQuota operation. This operation returns the applied value for each quota. GetAWSDefaultServiceQuota returns the default AWS value for each quota. 
    public func getServiceQuota(_ input: GetServiceQuotaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetServiceQuotaResponse> {
        return client.execute(operation: "GetServiceQuota", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns the details of the service quota increase request in your template.
    public func getServiceQuotaIncreaseRequestFromTemplate(_ input: GetServiceQuotaIncreaseRequestFromTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetServiceQuotaIncreaseRequestFromTemplateResponse> {
        return client.execute(operation: "GetServiceQuotaIncreaseRequestFromTemplate", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Lists all default service quotas for the specified AWS service or all AWS services. ListAWSDefaultServiceQuotas is similar to ListServiceQuotas except for the Value object. The Value object returned by ListAWSDefaultServiceQuotas is the default value assigned by AWS. This request returns a list of all service quotas for the specified service. The listing of each you'll see the default values are the values that AWS provides for the quotas.   Always check the NextToken response parameter when calling any of the List* operations. These operations can return an unexpected list of results, even when there are more results available. When this happens, the NextToken response parameter contains a value to pass the next call to the same API to request the next part of the list. 
    public func listAWSDefaultServiceQuotas(_ input: ListAWSDefaultServiceQuotasRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAWSDefaultServiceQuotasResponse> {
        return client.execute(operation: "ListAWSDefaultServiceQuotas", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Requests a list of the changes to quotas for a service.
    public func listRequestedServiceQuotaChangeHistory(_ input: ListRequestedServiceQuotaChangeHistoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRequestedServiceQuotaChangeHistoryResponse> {
        return client.execute(operation: "ListRequestedServiceQuotaChangeHistory", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Requests a list of the changes to specific service quotas. This command provides additional granularity over the ListRequestedServiceQuotaChangeHistory command. Once a quota change request has reached CASE_CLOSED, APPROVED, or DENIED, the history has been kept for 90 days.
    public func listRequestedServiceQuotaChangeHistoryByQuota(_ input: ListRequestedServiceQuotaChangeHistoryByQuotaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRequestedServiceQuotaChangeHistoryByQuotaResponse> {
        return client.execute(operation: "ListRequestedServiceQuotaChangeHistoryByQuota", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Returns a list of the quota increase requests in the template. 
    public func listServiceQuotaIncreaseRequestsInTemplate(_ input: ListServiceQuotaIncreaseRequestsInTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListServiceQuotaIncreaseRequestsInTemplateResponse> {
        return client.execute(operation: "ListServiceQuotaIncreaseRequestsInTemplate", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Lists all service quotas for the specified AWS service. This request returns a list of the service quotas for the specified service. you'll see the default values are the values that AWS provides for the quotas.   Always check the NextToken response parameter when calling any of the List* operations. These operations can return an unexpected list of results, even when there are more results available. When this happens, the NextToken response parameter contains a value to pass the next call to the same API to request the next part of the list. 
    public func listServiceQuotas(_ input: ListServiceQuotasRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListServiceQuotasResponse> {
        return client.execute(operation: "ListServiceQuotas", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Lists the AWS services available in Service Quotas. Not all AWS services are available in Service Quotas. To list the see the list of the service quotas for a specific service, use ListServiceQuotas.
    public func listServices(_ input: ListServicesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListServicesResponse> {
        return client.execute(operation: "ListServices", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Defines and adds a quota to the service quota template. To add a quota to the template, you must provide the ServiceCode, QuotaCode, AwsRegion, and DesiredValue. Once you add a quota to the template, use ListServiceQuotaIncreaseRequestsInTemplate to see the list of quotas in the template.
    public func putServiceQuotaIncreaseRequestIntoTemplate(_ input: PutServiceQuotaIncreaseRequestIntoTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutServiceQuotaIncreaseRequestIntoTemplateResponse> {
        return client.execute(operation: "PutServiceQuotaIncreaseRequestIntoTemplate", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }

    ///  Retrieves the details of a service quota increase request. The response to this command provides the details in the RequestedServiceQuotaChange object. 
    public func requestServiceQuotaIncrease(_ input: RequestServiceQuotaIncreaseRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RequestServiceQuotaIncreaseResponse> {
        return client.execute(operation: "RequestServiceQuotaIncrease", path: "/", httpMethod: .POST, serviceContext: context, input: input, on: eventLoop)
    }
}

extension ServiceQuotas {
    init(client: AWSClient, context: AWSServiceContext) {
        self.client = client
        self.context = context
    }
}
