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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS CostExplorer service.
///
/// The Cost Explorer API enables you to programmatically query your cost and usage data. You can query for aggregated data 
/// 			such as total monthly costs or total daily usage. You can also query for granular data, such as the number of 
/// 			daily write operations for Amazon DynamoDB database tables in your production environment. 
/// 		       Service Endpoint
/// 		       The Cost Explorer API provides the following endpoint:
/// 		        
/// 				            https://ce.us-east-1.amazonaws.com 
/// 			          
/// 		       For information about costs associated with the Cost Explorer API, see 
/// 			AWS Cost Management Pricing.
public struct CostExplorer: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CostExplorer client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: nil,
            partition: partition,
            amzTarget: "AWSInsightsIndexService",
            service: "ce",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-10-25",
            endpoint: endpoint,
            serviceEndpoints: ["aws-cn-global": "ce.cn-northwest-1.amazonaws.com.cn", "aws-global": "ce.us-east-1.amazonaws.com"],
            partitionEndpoints: [.aws: (endpoint: "aws-global", region: .useast1), .awscn: (endpoint: "aws-cn-global", region: .cnnorthwest1)],
            errorType: CostExplorerErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a new cost anomaly detection monitor with the requested type and monitor specification. 
    public func createAnomalyMonitor(_ input: CreateAnomalyMonitorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAnomalyMonitorResponse> {
        return self.client.execute(operation: "CreateAnomalyMonitor", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a subscription to a cost anomaly detection monitor. You can use each subscription to define subscribers with email or SNS notifications. Email subscribers can set a dollar threshold and a time frequency for receiving notifications. 
    public func createAnomalySubscription(_ input: CreateAnomalySubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAnomalySubscriptionResponse> {
        return self.client.execute(operation: "CreateAnomalySubscription", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Cost Category with the requested name and rules.
    public func createCostCategoryDefinition(_ input: CreateCostCategoryDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCostCategoryDefinitionResponse> {
        return self.client.execute(operation: "CreateCostCategoryDefinition", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a cost anomaly monitor. 
    public func deleteAnomalyMonitor(_ input: DeleteAnomalyMonitorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAnomalyMonitorResponse> {
        return self.client.execute(operation: "DeleteAnomalyMonitor", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a cost anomaly subscription. 
    public func deleteAnomalySubscription(_ input: DeleteAnomalySubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAnomalySubscriptionResponse> {
        return self.client.execute(operation: "DeleteAnomalySubscription", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Cost Category. Expenses from this month going forward will no longer be categorized with this Cost Category.
    public func deleteCostCategoryDefinition(_ input: DeleteCostCategoryDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCostCategoryDefinitionResponse> {
        return self.client.execute(operation: "DeleteCostCategoryDefinition", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the name, ARN, rules, definition, and effective dates of a Cost Category that's defined in the account. You have the option to use EffectiveOn to return a Cost Category that is active on a specific date. If there is no EffectiveOn specified, you’ll see a Cost Category that is effective on the current date. If Cost Category is still effective, EffectiveEnd is omitted in the response. 
    public func describeCostCategoryDefinition(_ input: DescribeCostCategoryDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCostCategoryDefinitionResponse> {
        return self.client.execute(operation: "DescribeCostCategoryDefinition", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves all of the cost anomalies detected on your account, during the time period specified by the DateInterval object. 
    public func getAnomalies(_ input: GetAnomaliesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAnomaliesResponse> {
        return self.client.execute(operation: "GetAnomalies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the cost anomaly monitor definitions for your account. You can filter using a list of cost anomaly monitor Amazon Resource Names (ARNs). 
    public func getAnomalyMonitors(_ input: GetAnomalyMonitorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAnomalyMonitorsResponse> {
        return self.client.execute(operation: "GetAnomalyMonitors", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the cost anomaly subscription objects for your account. You can filter using a list of cost anomaly monitor Amazon Resource Names (ARNs). 
    public func getAnomalySubscriptions(_ input: GetAnomalySubscriptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAnomalySubscriptionsResponse> {
        return self.client.execute(operation: "GetAnomalySubscriptions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves cost and usage metrics for your account. You can specify which cost and usage-related metric, such as 
    /// 			BlendedCosts or UsageQuantity, that you want the request to return. You can also filter and group 
    /// 			your data by various dimensions, such as SERVICE or AZ, in a specific time range. For a complete list 
    /// 			of valid dimensions, see the 
    /// 			GetDimensionValues 
    /// 		  operation. Management account in an organization in AWS Organizations have access to all member accounts.
    /// 	        For information about filter limitations, see Quotas and restrictions in the Billing and Cost Management User Guide.
    public func getCostAndUsage(_ input: GetCostAndUsageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCostAndUsageResponse> {
        return self.client.execute(operation: "GetCostAndUsage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves cost and usage metrics with resources for your account. You can specify which cost and
    /// 	    usage-related metric, such as BlendedCosts or UsageQuantity, that
    /// 	    you want the request to return. You can also filter and group your data by various dimensions,
    /// 	    such as SERVICE or AZ, in a specific time range. For a complete list
    /// 	    of valid dimensions, see the GetDimensionValues operation. Management account in an organization in AWS
    /// 	    Organizations have access to all member accounts. This API is currently available for the Amazon Elastic Compute Cloud – Compute service only.
    /// 	         This is an opt-in only feature. You can enable this feature from the Cost Explorer Settings page. For information on how to access the Settings page, see Controlling Access for Cost Explorer in the AWS Billing and Cost Management User Guide. 
    public func getCostAndUsageWithResources(_ input: GetCostAndUsageWithResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCostAndUsageWithResourcesResponse> {
        return self.client.execute(operation: "GetCostAndUsageWithResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves an array of Cost Category names and values incurred cost.
    /// 	         If some Cost Category names and values are not associated with any cost, they will not be returned by this API. 
    public func getCostCategories(_ input: GetCostCategoriesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCostCategoriesResponse> {
        return self.client.execute(operation: "GetCostCategories", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a forecast for how much Amazon Web Services predicts that you will spend over the forecast time period that you select, based on your past costs. 
    public func getCostForecast(_ input: GetCostForecastRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCostForecastResponse> {
        return self.client.execute(operation: "GetCostForecast", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves all available filter values for a specified filter over a period of time. You can search the dimension values for an arbitrary string. 
    public func getDimensionValues(_ input: GetDimensionValuesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDimensionValuesResponse> {
        return self.client.execute(operation: "GetDimensionValues", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the reservation coverage for your account. This enables you to see how much of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service, or 
    /// 		  Amazon Redshift usage is covered by a reservation. An organization's management account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions.
    /// 			For any time period, you can filter data about reservation usage by the following dimensions:
    /// 		         AZ   CACHE_ENGINE   DATABASE_ENGINE   DEPLOYMENT_OPTION   INSTANCE_TYPE   LINKED_ACCOUNT   OPERATING_SYSTEM   PLATFORM   REGION   SERVICE   TAG   TENANCY  
    /// 		       To determine valid values for a dimension, use the GetDimensionValues operation. 
    public func getReservationCoverage(_ input: GetReservationCoverageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetReservationCoverageResponse> {
        return self.client.execute(operation: "GetReservationCoverage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets recommendations for which reservations to purchase. These recommendations could help you reduce your costs. 
    /// 			Reservations provide a discounted hourly rate (up to 75%) compared to On-Demand pricing.
    /// 		       AWS generates your recommendations by identifying your On-Demand usage during a specific time period and collecting your usage 
    /// 			into categories that are eligible for a reservation. After AWS has these categories, it simulates every combination of reservations 
    /// 			in each category of usage to identify the best number of each type of RI to purchase to maximize your estimated savings. 
    /// 		       For example, AWS automatically aggregates your Amazon EC2 Linux, shared tenancy, and c4 family usage in the US West (Oregon) Region 
    /// 			and recommends that you buy size-flexible regional reservations to apply to the c4 family usage. AWS recommends the smallest size instance 
    /// 			in an instance family. This makes it easier to purchase a size-flexible RI. AWS also shows the equal number of normalized units 
    /// 			so that you can purchase any instance size that you want. For this example, your RI recommendation would be for c4.large 
    /// 			because that is the smallest size instance in the c4 instance family.
    public func getReservationPurchaseRecommendation(_ input: GetReservationPurchaseRecommendationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetReservationPurchaseRecommendationResponse> {
        return self.client.execute(operation: "GetReservationPurchaseRecommendation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the reservation utilization for your account. Management account in an organization have access to member accounts. 
    /// 			You can filter data by dimensions in a time period. You can use GetDimensionValues to determine the possible 
    /// 			dimension values. Currently, you can group only by SUBSCRIPTION_ID. 
    public func getReservationUtilization(_ input: GetReservationUtilizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetReservationUtilizationResponse> {
        return self.client.execute(operation: "GetReservationUtilization", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates recommendations that help you save cost by identifying idle and underutilized Amazon EC2 instances. Recommendations are generated to either downsize or terminate instances, along with providing savings detail and metrics. For details on calculation and function, see Optimizing Your Cost with Rightsizing Recommendations in the AWS Billing and Cost Management User Guide.
    public func getRightsizingRecommendation(_ input: GetRightsizingRecommendationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRightsizingRecommendationResponse> {
        return self.client.execute(operation: "GetRightsizingRecommendation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the Savings Plans covered for your account. This enables you to see how much of your cost is covered by a Savings Plan. An organization’s management account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions. For any time period, you can filter data for Savings Plans usage with the following dimensions:
    /// 	           LINKED_ACCOUNT     REGION     SERVICE     INSTANCE_FAMILY   
    /// 	        To determine valid values for a dimension, use the GetDimensionValues operation.
    public func getSavingsPlansCoverage(_ input: GetSavingsPlansCoverageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSavingsPlansCoverageResponse> {
        return self.client.execute(operation: "GetSavingsPlansCoverage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves your request parameters, Savings Plan Recommendations Summary and Details. 
    public func getSavingsPlansPurchaseRecommendation(_ input: GetSavingsPlansPurchaseRecommendationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSavingsPlansPurchaseRecommendationResponse> {
        return self.client.execute(operation: "GetSavingsPlansPurchaseRecommendation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the Savings Plans utilization for your account across date ranges with daily or monthly granularity. Management account in an organization have access to member accounts. You can use GetDimensionValues in SAVINGS_PLANS to determine the possible dimension values.
    /// 	         You cannot group by any dimension values for GetSavingsPlansUtilization. 
    public func getSavingsPlansUtilization(_ input: GetSavingsPlansUtilizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSavingsPlansUtilizationResponse> {
        return self.client.execute(operation: "GetSavingsPlansUtilization", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves attribute data along with aggregate utilization and savings data for a given time period. This doesn't support granular or grouped data (daily/monthly) in response. You can't retrieve data by dates in a single response similar to GetSavingsPlanUtilization, but you have the option to make multiple calls to GetSavingsPlanUtilizationDetails by providing individual dates. You can use GetDimensionValues in SAVINGS_PLANS to determine the possible dimension values.
    /// 	          GetSavingsPlanUtilizationDetails internally groups data by SavingsPlansArn. 
    public func getSavingsPlansUtilizationDetails(_ input: GetSavingsPlansUtilizationDetailsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSavingsPlansUtilizationDetailsResponse> {
        return self.client.execute(operation: "GetSavingsPlansUtilizationDetails", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Queries for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary string. 
    public func getTags(_ input: GetTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTagsResponse> {
        return self.client.execute(operation: "GetTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a forecast for how much Amazon Web Services predicts that you will use over the forecast time period that you select, based on your past usage. 
    public func getUsageForecast(_ input: GetUsageForecastRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUsageForecastResponse> {
        return self.client.execute(operation: "GetUsageForecast", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the name, ARN, NumberOfRules and effective dates of all Cost Categories defined in the account. You have the option to use EffectiveOn to return a list of Cost Categories that were active on a specific date. If there is no EffectiveOn specified, you’ll see Cost Categories that are effective on the current date. If Cost Category is still effective, EffectiveEnd is omitted in the response. ListCostCategoryDefinitions supports pagination. The request can have a MaxResults range up to 100.
    public func listCostCategoryDefinitions(_ input: ListCostCategoryDefinitionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCostCategoryDefinitionsResponse> {
        return self.client.execute(operation: "ListCostCategoryDefinitions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the feedback property of a given cost anomaly. 
    public func provideAnomalyFeedback(_ input: ProvideAnomalyFeedbackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProvideAnomalyFeedbackResponse> {
        return self.client.execute(operation: "ProvideAnomalyFeedback", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing cost anomaly monitor. The changes made are applied going forward, and does not change anomalies detected in the past. 
    public func updateAnomalyMonitor(_ input: UpdateAnomalyMonitorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAnomalyMonitorResponse> {
        return self.client.execute(operation: "UpdateAnomalyMonitor", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates an existing cost anomaly monitor subscription. 
    public func updateAnomalySubscription(_ input: UpdateAnomalySubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAnomalySubscriptionResponse> {
        return self.client.execute(operation: "UpdateAnomalySubscription", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing Cost Category. Changes made to the Cost Category rules will be used to categorize the current month’s expenses and future expenses. This won’t change categorization for the previous months.
    public func updateCostCategoryDefinition(_ input: UpdateCostCategoryDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCostCategoryDefinitionResponse> {
        return self.client.execute(operation: "UpdateCostCategoryDefinition", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension CostExplorer {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CostExplorer, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
