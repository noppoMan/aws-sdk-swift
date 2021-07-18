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

import Foundation
import SotoCore

extension Savingsplans {
    // MARK: Enums

    public enum CurrencyCode: String, CustomStringConvertible, Codable {
        case cny = "CNY"
        case usd = "USD"
        public var description: String { return self.rawValue }
    }

    public enum SavingsPlanOfferingFilterAttribute: String, CustomStringConvertible, Codable {
        case instancefamily = "instanceFamily"
        case region
        public var description: String { return self.rawValue }
    }

    public enum SavingsPlanOfferingPropertyKey: String, CustomStringConvertible, Codable {
        case instancefamily = "instanceFamily"
        case region
        public var description: String { return self.rawValue }
    }

    public enum SavingsPlanPaymentOption: String, CustomStringConvertible, Codable {
        case allUpfront = "All Upfront"
        case noUpfront = "No Upfront"
        case partialUpfront = "Partial Upfront"
        public var description: String { return self.rawValue }
    }

    public enum SavingsPlanProductType: String, CustomStringConvertible, Codable {
        case ec2 = "EC2"
        case fargate = "Fargate"
        case lambda = "Lambda"
        case sagemaker = "SageMaker"
        public var description: String { return self.rawValue }
    }

    public enum SavingsPlanRateFilterAttribute: String, CustomStringConvertible, Codable {
        case instancefamily = "instanceFamily"
        case instancetype = "instanceType"
        case productdescription = "productDescription"
        case productid = "productId"
        case region
        case tenancy
        public var description: String { return self.rawValue }
    }

    public enum SavingsPlanRateFilterName: String, CustomStringConvertible, Codable {
        case instancetype = "instanceType"
        case operation
        case productdescription = "productDescription"
        case producttype = "productType"
        case region
        case servicecode = "serviceCode"
        case tenancy
        case usagetype = "usageType"
        public var description: String { return self.rawValue }
    }

    public enum SavingsPlanRatePropertyKey: String, CustomStringConvertible, Codable {
        case instancefamily = "instanceFamily"
        case instancetype = "instanceType"
        case productdescription = "productDescription"
        case region
        case tenancy
        public var description: String { return self.rawValue }
    }

    public enum SavingsPlanRateServiceCode: String, CustomStringConvertible, Codable {
        case awslambda = "AWSLambda"
        case amazonec2 = "AmazonEC2"
        case amazonecs = "AmazonECS"
        case amazoneks = "AmazonEKS"
        case amazonsagemaker = "AmazonSageMaker"
        public var description: String { return self.rawValue }
    }

    public enum SavingsPlanRateUnit: String, CustomStringConvertible, Codable {
        case hrs = "Hrs"
        case lambdaGbSecond = "Lambda-GB-Second"
        case request = "Request"
        public var description: String { return self.rawValue }
    }

    public enum SavingsPlanState: String, CustomStringConvertible, Codable {
        case active
        case paymentFailed = "payment-failed"
        case paymentPending = "payment-pending"
        case queued
        case queuedDeleted = "queued-deleted"
        case retired
        public var description: String { return self.rawValue }
    }

    public enum SavingsPlanType: String, CustomStringConvertible, Codable {
        case compute = "Compute"
        case ec2instance = "EC2Instance"
        case sagemaker = "SageMaker"
        public var description: String { return self.rawValue }
    }

    public enum SavingsPlansFilterName: String, CustomStringConvertible, Codable {
        case commitment
        case ec2InstanceFamily = "ec2-instance-family"
        case end
        case paymentOption = "payment-option"
        case region
        case savingsPlanType = "savings-plan-type"
        case start
        case term
        case upfront
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CreateSavingsPlanRequest: AWSEncodableShape {
        /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
        public let clientToken: String?
        /// The hourly commitment, in USD. This is a value between 0.001 and 1 million. You cannot specify more than three digits after the decimal point.
        public let commitment: String
        /// The time at which to purchase the Savings Plan, in UTC format (YYYY-MM-DDTHH:MM:SSZ).
        public let purchaseTime: Date?
        /// The ID of the offering.
        public let savingsPlanOfferingId: String
        /// One or more tags.
        public let tags: [String: String]?
        /// The up-front payment amount. This is a whole number between 50 and 99 percent of the total value of the Savings Plan. This parameter is supported only if the payment option is Partial Upfront.
        public let upfrontPaymentAmount: String?

        public init(clientToken: String? = CreateSavingsPlanRequest.idempotencyToken(), commitment: String, purchaseTime: Date? = nil, savingsPlanOfferingId: String, tags: [String: String]? = nil, upfrontPaymentAmount: String? = nil) {
            self.clientToken = clientToken
            self.commitment = commitment
            self.purchaseTime = purchaseTime
            self.savingsPlanOfferingId = savingsPlanOfferingId
            self.tags = tags
            self.upfrontPaymentAmount = upfrontPaymentAmount
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken
            case commitment
            case purchaseTime
            case savingsPlanOfferingId
            case tags
            case upfrontPaymentAmount
        }
    }

    public struct CreateSavingsPlanResponse: AWSDecodableShape {
        /// The ID of the Savings Plan.
        public let savingsPlanId: String?

        public init(savingsPlanId: String? = nil) {
            self.savingsPlanId = savingsPlanId
        }

        private enum CodingKeys: String, CodingKey {
            case savingsPlanId
        }
    }

    public struct DeleteQueuedSavingsPlanRequest: AWSEncodableShape {
        /// The ID of the Savings Plan.
        public let savingsPlanId: String

        public init(savingsPlanId: String) {
            self.savingsPlanId = savingsPlanId
        }

        private enum CodingKeys: String, CodingKey {
            case savingsPlanId
        }
    }

    public struct DeleteQueuedSavingsPlanResponse: AWSDecodableShape {
        public init() {}
    }

    public struct DescribeSavingsPlanRatesRequest: AWSEncodableShape {
        /// The filters.
        public let filters: [SavingsPlanRateFilter]?
        /// The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value.
        public let maxResults: Int?
        /// The token for the next page of results.
        public let nextToken: String?
        /// The ID of the Savings Plan.
        public let savingsPlanId: String

        public init(filters: [SavingsPlanRateFilter]? = nil, maxResults: Int? = nil, nextToken: String? = nil, savingsPlanId: String) {
            self.filters = filters
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.savingsPlanId = savingsPlanId
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 1000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9/=\\+]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case filters
            case maxResults
            case nextToken
            case savingsPlanId
        }
    }

    public struct DescribeSavingsPlanRatesResponse: AWSDecodableShape {
        /// The token to use to retrieve the next page of results. This value is null when there are no more  results to return.
        public let nextToken: String?
        /// The ID of the Savings Plan.
        public let savingsPlanId: String?
        /// Information about the Savings Plans rates.
        public let searchResults: [SavingsPlanRate]?

        public init(nextToken: String? = nil, savingsPlanId: String? = nil, searchResults: [SavingsPlanRate]? = nil) {
            self.nextToken = nextToken
            self.savingsPlanId = savingsPlanId
            self.searchResults = searchResults
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken
            case savingsPlanId
            case searchResults
        }
    }

    public struct DescribeSavingsPlansOfferingRatesRequest: AWSEncodableShape {
        /// The filters.
        public let filters: [SavingsPlanOfferingRateFilterElement]?
        /// The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value.
        public let maxResults: Int?
        /// The token for the next page of results.
        public let nextToken: String?
        /// The specific AWS operation for the line item in the billing report.
        public let operations: [String]?
        /// The AWS products.
        public let products: [SavingsPlanProductType]?
        /// The IDs of the offerings.
        public let savingsPlanOfferingIds: [String]?
        /// The payment options.
        public let savingsPlanPaymentOptions: [SavingsPlanPaymentOption]?
        /// The plan types.
        public let savingsPlanTypes: [SavingsPlanType]?
        /// The services.
        public let serviceCodes: [SavingsPlanRateServiceCode]?
        /// The usage details of the line item in the billing report.
        public let usageTypes: [String]?

        public init(filters: [SavingsPlanOfferingRateFilterElement]? = nil, maxResults: Int? = nil, nextToken: String? = nil, operations: [String]? = nil, products: [SavingsPlanProductType]? = nil, savingsPlanOfferingIds: [String]? = nil, savingsPlanPaymentOptions: [SavingsPlanPaymentOption]? = nil, savingsPlanTypes: [SavingsPlanType]? = nil, serviceCodes: [SavingsPlanRateServiceCode]? = nil, usageTypes: [String]? = nil) {
            self.filters = filters
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.operations = operations
            self.products = products
            self.savingsPlanOfferingIds = savingsPlanOfferingIds
            self.savingsPlanPaymentOptions = savingsPlanPaymentOptions
            self.savingsPlanTypes = savingsPlanTypes
            self.serviceCodes = serviceCodes
            self.usageTypes = usageTypes
        }

        public func validate(name: String) throws {
            try self.filters?.forEach {
                try $0.validate(name: "\(name).filters[]")
            }
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 1000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 0)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9/=\\+]+$")
            try self.operations?.forEach {
                try validate($0, name: "operations[]", parent: name, max: 255)
                try validate($0, name: "operations[]", parent: name, pattern: "^[a-zA-Z0-9_ \\/.:-]*$")
            }
            try self.savingsPlanOfferingIds?.forEach {
                try validate($0, name: "savingsPlanOfferingIds[]", parent: name, pattern: "^(([0-9a-f]+)(-?))+$")
            }
            try self.usageTypes?.forEach {
                try validate($0, name: "usageTypes[]", parent: name, max: 255)
                try validate($0, name: "usageTypes[]", parent: name, pattern: "^[a-zA-Z0-9_ \\/.:-]+$")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case filters
            case maxResults
            case nextToken
            case operations
            case products
            case savingsPlanOfferingIds
            case savingsPlanPaymentOptions
            case savingsPlanTypes
            case serviceCodes
            case usageTypes
        }
    }

    public struct DescribeSavingsPlansOfferingRatesResponse: AWSDecodableShape {
        /// The token to use to retrieve the next page of results. This value is null when there are no more  results to return.
        public let nextToken: String?
        /// Information about the Savings Plans offering rates.
        public let searchResults: [SavingsPlanOfferingRate]?

        public init(nextToken: String? = nil, searchResults: [SavingsPlanOfferingRate]? = nil) {
            self.nextToken = nextToken
            self.searchResults = searchResults
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken
            case searchResults
        }
    }

    public struct DescribeSavingsPlansOfferingsRequest: AWSEncodableShape {
        /// The currencies.
        public let currencies: [CurrencyCode]?
        /// The descriptions.
        public let descriptions: [String]?
        /// The durations, in seconds.
        public let durations: [Int64]?
        /// The filters.
        public let filters: [SavingsPlanOfferingFilterElement]?
        /// The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value.
        public let maxResults: Int?
        /// The token for the next page of results.
        public let nextToken: String?
        /// The IDs of the offerings.
        public let offeringIds: [String]?
        /// The specific AWS operation for the line item in the billing report.
        public let operations: [String]?
        /// The payment options.
        public let paymentOptions: [SavingsPlanPaymentOption]?
        /// The plan type.
        public let planTypes: [SavingsPlanType]?
        /// The product type.
        public let productType: SavingsPlanProductType?
        /// The services.
        public let serviceCodes: [String]?
        /// The usage details of the line item in the billing report.
        public let usageTypes: [String]?

        public init(currencies: [CurrencyCode]? = nil, descriptions: [String]? = nil, durations: [Int64]? = nil, filters: [SavingsPlanOfferingFilterElement]? = nil, maxResults: Int? = nil, nextToken: String? = nil, offeringIds: [String]? = nil, operations: [String]? = nil, paymentOptions: [SavingsPlanPaymentOption]? = nil, planTypes: [SavingsPlanType]? = nil, productType: SavingsPlanProductType? = nil, serviceCodes: [String]? = nil, usageTypes: [String]? = nil) {
            self.currencies = currencies
            self.descriptions = descriptions
            self.durations = durations
            self.filters = filters
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.offeringIds = offeringIds
            self.operations = operations
            self.paymentOptions = paymentOptions
            self.planTypes = planTypes
            self.productType = productType
            self.serviceCodes = serviceCodes
            self.usageTypes = usageTypes
        }

        public func validate(name: String) throws {
            try self.descriptions?.forEach {
                try validate($0, name: "descriptions[]", parent: name, pattern: "^[a-zA-Z0-9_\\- ]+$")
            }
            try self.durations?.forEach {
                try validate($0, name: "durations[]", parent: name, min: 0)
            }
            try self.filters?.forEach {
                try $0.validate(name: "\(name).filters[]")
            }
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 1000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 0)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9/=\\+]+$")
            try self.offeringIds?.forEach {
                try validate($0, name: "offeringIds[]", parent: name, pattern: "^(([0-9a-f]+)(-?))+$")
            }
            try self.operations?.forEach {
                try validate($0, name: "operations[]", parent: name, max: 255)
                try validate($0, name: "operations[]", parent: name, pattern: "^[a-zA-Z0-9_ \\/.:-]*$")
            }
            try self.serviceCodes?.forEach {
                try validate($0, name: "serviceCodes[]", parent: name, max: 255)
                try validate($0, name: "serviceCodes[]", parent: name, pattern: "^[a-zA-Z]+$")
            }
            try self.usageTypes?.forEach {
                try validate($0, name: "usageTypes[]", parent: name, max: 255)
                try validate($0, name: "usageTypes[]", parent: name, pattern: "^[a-zA-Z0-9_ \\/.:-]+$")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case currencies
            case descriptions
            case durations
            case filters
            case maxResults
            case nextToken
            case offeringIds
            case operations
            case paymentOptions
            case planTypes
            case productType
            case serviceCodes
            case usageTypes
        }
    }

    public struct DescribeSavingsPlansOfferingsResponse: AWSDecodableShape {
        /// The token to use to retrieve the next page of results. This value is null when there are no more  results to return.
        public let nextToken: String?
        /// Information about the Savings Plans offerings.
        public let searchResults: [SavingsPlanOffering]?

        public init(nextToken: String? = nil, searchResults: [SavingsPlanOffering]? = nil) {
            self.nextToken = nextToken
            self.searchResults = searchResults
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken
            case searchResults
        }
    }

    public struct DescribeSavingsPlansRequest: AWSEncodableShape {
        /// The filters.
        public let filters: [SavingsPlanFilter]?
        /// The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value.
        public let maxResults: Int?
        /// The token for the next page of results.
        public let nextToken: String?
        /// The Amazon Resource Names (ARN) of the Savings Plans.
        public let savingsPlanArns: [String]?
        /// The IDs of the Savings Plans.
        public let savingsPlanIds: [String]?
        /// The states.
        public let states: [SavingsPlanState]?

        public init(filters: [SavingsPlanFilter]? = nil, maxResults: Int? = nil, nextToken: String? = nil, savingsPlanArns: [String]? = nil, savingsPlanIds: [String]? = nil, states: [SavingsPlanState]? = nil) {
            self.filters = filters
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.savingsPlanArns = savingsPlanArns
            self.savingsPlanIds = savingsPlanIds
            self.states = states
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 1000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9/=\\+]+$")
            try self.savingsPlanArns?.forEach {
                try validate($0, name: "savingsPlanArns[]", parent: name, pattern: "arn:aws:[a-z]+:([a-z]{2}-[a-z]+-\\d{1}|):(\\d{12}):savingsplan\\/([0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12})$")
            }
            try self.validate(self.savingsPlanArns, name: "savingsPlanArns", parent: name, max: 100)
        }

        private enum CodingKeys: String, CodingKey {
            case filters
            case maxResults
            case nextToken
            case savingsPlanArns
            case savingsPlanIds
            case states
        }
    }

    public struct DescribeSavingsPlansResponse: AWSDecodableShape {
        /// The token to use to retrieve the next page of results. This value is null when there are no more  results to return.
        public let nextToken: String?
        /// Information about the Savings Plans.
        public let savingsPlans: [SavingsPlan]?

        public init(nextToken: String? = nil, savingsPlans: [SavingsPlan]? = nil) {
            self.nextToken = nextToken
            self.savingsPlans = savingsPlans
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken
            case savingsPlans
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the resource.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "arn:aws:[a-z]+:([a-z]{2}-[a-z]+-\\d{1}|):(\\d{12}):savingsplan\\/([0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12})$")
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn
        }
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {
        /// Information about the tags.
        public let tags: [String: String]?

        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags
        }
    }

    public struct ParentSavingsPlanOffering: AWSDecodableShape {
        /// The currency.
        public let currency: CurrencyCode?
        /// The duration, in seconds.
        public let durationSeconds: Int64?
        /// The ID of the offering.
        public let offeringId: String?
        /// The payment option.
        public let paymentOption: SavingsPlanPaymentOption?
        /// The description.
        public let planDescription: String?
        /// The plan type.
        public let planType: SavingsPlanType?

        public init(currency: CurrencyCode? = nil, durationSeconds: Int64? = nil, offeringId: String? = nil, paymentOption: SavingsPlanPaymentOption? = nil, planDescription: String? = nil, planType: SavingsPlanType? = nil) {
            self.currency = currency
            self.durationSeconds = durationSeconds
            self.offeringId = offeringId
            self.paymentOption = paymentOption
            self.planDescription = planDescription
            self.planType = planType
        }

        private enum CodingKeys: String, CodingKey {
            case currency
            case durationSeconds
            case offeringId
            case paymentOption
            case planDescription
            case planType
        }
    }

    public struct SavingsPlan: AWSDecodableShape {
        /// The hourly commitment, in USD.
        public let commitment: String?
        /// The currency.
        public let currency: CurrencyCode?
        /// The description.
        public let description: String?
        /// The EC2 instance family.
        public let ec2InstanceFamily: String?
        /// The end time.
        public let end: String?
        /// The ID of the offering.
        public let offeringId: String?
        /// The payment option.
        public let paymentOption: SavingsPlanPaymentOption?
        /// The product types.
        public let productTypes: [SavingsPlanProductType]?
        /// The recurring payment amount.
        public let recurringPaymentAmount: String?
        /// The AWS Region.
        public let region: String?
        /// The Amazon Resource Name (ARN) of the Savings Plan.
        public let savingsPlanArn: String?
        /// The ID of the Savings Plan.
        public let savingsPlanId: String?
        /// The plan type.
        public let savingsPlanType: SavingsPlanType?
        /// The start time.
        public let start: String?
        /// The state.
        public let state: SavingsPlanState?
        /// One or more tags.
        public let tags: [String: String]?
        /// The duration of the term, in seconds.
        public let termDurationInSeconds: Int64?
        /// The up-front payment amount.
        public let upfrontPaymentAmount: String?

        public init(commitment: String? = nil, currency: CurrencyCode? = nil, description: String? = nil, ec2InstanceFamily: String? = nil, end: String? = nil, offeringId: String? = nil, paymentOption: SavingsPlanPaymentOption? = nil, productTypes: [SavingsPlanProductType]? = nil, recurringPaymentAmount: String? = nil, region: String? = nil, savingsPlanArn: String? = nil, savingsPlanId: String? = nil, savingsPlanType: SavingsPlanType? = nil, start: String? = nil, state: SavingsPlanState? = nil, tags: [String: String]? = nil, termDurationInSeconds: Int64? = nil, upfrontPaymentAmount: String? = nil) {
            self.commitment = commitment
            self.currency = currency
            self.description = description
            self.ec2InstanceFamily = ec2InstanceFamily
            self.end = end
            self.offeringId = offeringId
            self.paymentOption = paymentOption
            self.productTypes = productTypes
            self.recurringPaymentAmount = recurringPaymentAmount
            self.region = region
            self.savingsPlanArn = savingsPlanArn
            self.savingsPlanId = savingsPlanId
            self.savingsPlanType = savingsPlanType
            self.start = start
            self.state = state
            self.tags = tags
            self.termDurationInSeconds = termDurationInSeconds
            self.upfrontPaymentAmount = upfrontPaymentAmount
        }

        private enum CodingKeys: String, CodingKey {
            case commitment
            case currency
            case description
            case ec2InstanceFamily
            case end
            case offeringId
            case paymentOption
            case productTypes
            case recurringPaymentAmount
            case region
            case savingsPlanArn
            case savingsPlanId
            case savingsPlanType
            case start
            case state
            case tags
            case termDurationInSeconds
            case upfrontPaymentAmount
        }
    }

    public struct SavingsPlanFilter: AWSEncodableShape {
        /// The filter name.
        public let name: SavingsPlansFilterName?
        /// The filter value.
        public let values: [String]?

        public init(name: SavingsPlansFilterName? = nil, values: [String]? = nil) {
            self.name = name
            self.values = values
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case values
        }
    }

    public struct SavingsPlanOffering: AWSDecodableShape {
        /// The currency.
        public let currency: CurrencyCode?
        /// The description.
        public let description: String?
        /// The duration, in seconds.
        public let durationSeconds: Int64?
        /// The ID of the offering.
        public let offeringId: String?
        /// The specific AWS operation for the line item in the billing report.
        public let operation: String?
        /// The payment option.
        public let paymentOption: SavingsPlanPaymentOption?
        /// The plan type.
        public let planType: SavingsPlanType?
        /// The product type.
        public let productTypes: [SavingsPlanProductType]?
        /// The properties.
        public let properties: [SavingsPlanOfferingProperty]?
        /// The service.
        public let serviceCode: String?
        /// The usage details of the line item in the billing report.
        public let usageType: String?

        public init(currency: CurrencyCode? = nil, description: String? = nil, durationSeconds: Int64? = nil, offeringId: String? = nil, operation: String? = nil, paymentOption: SavingsPlanPaymentOption? = nil, planType: SavingsPlanType? = nil, productTypes: [SavingsPlanProductType]? = nil, properties: [SavingsPlanOfferingProperty]? = nil, serviceCode: String? = nil, usageType: String? = nil) {
            self.currency = currency
            self.description = description
            self.durationSeconds = durationSeconds
            self.offeringId = offeringId
            self.operation = operation
            self.paymentOption = paymentOption
            self.planType = planType
            self.productTypes = productTypes
            self.properties = properties
            self.serviceCode = serviceCode
            self.usageType = usageType
        }

        private enum CodingKeys: String, CodingKey {
            case currency
            case description
            case durationSeconds
            case offeringId
            case operation
            case paymentOption
            case planType
            case productTypes
            case properties
            case serviceCode
            case usageType
        }
    }

    public struct SavingsPlanOfferingFilterElement: AWSEncodableShape {
        /// The filter name.
        public let name: SavingsPlanOfferingFilterAttribute?
        /// The filter values.
        public let values: [String]?

        public init(name: SavingsPlanOfferingFilterAttribute? = nil, values: [String]? = nil) {
            self.name = name
            self.values = values
        }

        public func validate(name: String) throws {
            try self.values?.forEach {
                try validate($0, name: "values[]", parent: name, pattern: "^[a-zA-Z0-9_ \\/.\\:\\-\\(\\)]+$")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case values
        }
    }

    public struct SavingsPlanOfferingProperty: AWSDecodableShape {
        /// The property name.
        public let name: SavingsPlanOfferingPropertyKey?
        /// The property value.
        public let value: String?

        public init(name: SavingsPlanOfferingPropertyKey? = nil, value: String? = nil) {
            self.name = name
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case value
        }
    }

    public struct SavingsPlanOfferingRate: AWSDecodableShape {
        /// The specific AWS operation for the line item in the billing report.
        public let operation: String?
        /// The product type.
        public let productType: SavingsPlanProductType?
        /// The properties.
        public let properties: [SavingsPlanOfferingRateProperty]?
        /// The Savings Plan rate.
        public let rate: String?
        /// The Savings Plan offering.
        public let savingsPlanOffering: ParentSavingsPlanOffering?
        /// The service.
        public let serviceCode: SavingsPlanRateServiceCode?
        /// The unit.
        public let unit: SavingsPlanRateUnit?
        /// The usage details of the line item in the billing report.
        public let usageType: String?

        public init(operation: String? = nil, productType: SavingsPlanProductType? = nil, properties: [SavingsPlanOfferingRateProperty]? = nil, rate: String? = nil, savingsPlanOffering: ParentSavingsPlanOffering? = nil, serviceCode: SavingsPlanRateServiceCode? = nil, unit: SavingsPlanRateUnit? = nil, usageType: String? = nil) {
            self.operation = operation
            self.productType = productType
            self.properties = properties
            self.rate = rate
            self.savingsPlanOffering = savingsPlanOffering
            self.serviceCode = serviceCode
            self.unit = unit
            self.usageType = usageType
        }

        private enum CodingKeys: String, CodingKey {
            case operation
            case productType
            case properties
            case rate
            case savingsPlanOffering
            case serviceCode
            case unit
            case usageType
        }
    }

    public struct SavingsPlanOfferingRateFilterElement: AWSEncodableShape {
        /// The filter name.
        public let name: SavingsPlanRateFilterAttribute?
        /// The filter values.
        public let values: [String]?

        public init(name: SavingsPlanRateFilterAttribute? = nil, values: [String]? = nil) {
            self.name = name
            self.values = values
        }

        public func validate(name: String) throws {
            try self.values?.forEach {
                try validate($0, name: "values[]", parent: name, pattern: "^[a-zA-Z0-9_ \\/.\\:\\-\\(\\)]+$")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case values
        }
    }

    public struct SavingsPlanOfferingRateProperty: AWSDecodableShape {
        /// The property name.
        public let name: String?
        /// The property value.
        public let value: String?

        public init(name: String? = nil, value: String? = nil) {
            self.name = name
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case value
        }
    }

    public struct SavingsPlanRate: AWSDecodableShape {
        /// The currency.
        public let currency: CurrencyCode?
        /// The specific AWS operation for the line item in the billing report.
        public let operation: String?
        /// The product type.
        public let productType: SavingsPlanProductType?
        /// The properties.
        public let properties: [SavingsPlanRateProperty]?
        /// The rate.
        public let rate: String?
        /// The service.
        public let serviceCode: SavingsPlanRateServiceCode?
        /// The unit.
        public let unit: SavingsPlanRateUnit?
        /// The usage details of the line item in the billing report.
        public let usageType: String?

        public init(currency: CurrencyCode? = nil, operation: String? = nil, productType: SavingsPlanProductType? = nil, properties: [SavingsPlanRateProperty]? = nil, rate: String? = nil, serviceCode: SavingsPlanRateServiceCode? = nil, unit: SavingsPlanRateUnit? = nil, usageType: String? = nil) {
            self.currency = currency
            self.operation = operation
            self.productType = productType
            self.properties = properties
            self.rate = rate
            self.serviceCode = serviceCode
            self.unit = unit
            self.usageType = usageType
        }

        private enum CodingKeys: String, CodingKey {
            case currency
            case operation
            case productType
            case properties
            case rate
            case serviceCode
            case unit
            case usageType
        }
    }

    public struct SavingsPlanRateFilter: AWSEncodableShape {
        /// The filter name.
        public let name: SavingsPlanRateFilterName?
        /// The filter values.
        public let values: [String]?

        public init(name: SavingsPlanRateFilterName? = nil, values: [String]? = nil) {
            self.name = name
            self.values = values
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case values
        }
    }

    public struct SavingsPlanRateProperty: AWSDecodableShape {
        /// The property name.
        public let name: SavingsPlanRatePropertyKey?
        /// The property value.
        public let value: String?

        public init(name: SavingsPlanRatePropertyKey? = nil, value: String? = nil) {
            self.name = name
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case value
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the resource.
        public let resourceArn: String
        /// One or more tags. For example, { "tags": {"key1":"value1", "key2":"value2"} }.
        public let tags: [String: String]

        public init(resourceArn: String, tags: [String: String]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "arn:aws:[a-z]+:([a-z]{2}-[a-z]+-\\d{1}|):(\\d{12}):savingsplan\\/([0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12})$")
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn
            case tags
        }
    }

    public struct TagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the resource.
        public let resourceArn: String
        /// The tag keys.
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "arn:aws:[a-z]+:([a-z]{2}-[a-z]+-\\d{1}|):(\\d{12}):savingsplan\\/([0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12})$")
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn
            case tagKeys
        }
    }

    public struct UntagResourceResponse: AWSDecodableShape {
        public init() {}
    }
}
