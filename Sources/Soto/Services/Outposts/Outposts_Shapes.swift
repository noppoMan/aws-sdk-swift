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

extension Outposts {
    // MARK: Enums

    // MARK: Shapes

    public struct CreateOutpostInput: AWSEncodableShape {
        public let availabilityZone: String?
        public let availabilityZoneId: String?
        public let description: String?
        public let name: String
        public let siteId: String
        /// The tags to apply to the Outpost.
        public let tags: [String: String]?

        public init(availabilityZone: String? = nil, availabilityZoneId: String? = nil, description: String? = nil, name: String, siteId: String, tags: [String: String]? = nil) {
            self.availabilityZone = availabilityZone
            self.availabilityZoneId = availabilityZoneId
            self.description = description
            self.name = name
            self.siteId = siteId
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.availabilityZone, name: "availabilityZone", parent: name, max: 1000)
            try self.validate(self.availabilityZone, name: "availabilityZone", parent: name, min: 1)
            try self.validate(self.availabilityZone, name: "availabilityZone", parent: name, pattern: "^([a-zA-Z]+-){1,3}([a-zA-Z]+)?(\\d+[a-zA-Z]?)?$")
            try self.validate(self.availabilityZoneId, name: "availabilityZoneId", parent: name, max: 255)
            try self.validate(self.availabilityZoneId, name: "availabilityZoneId", parent: name, min: 1)
            try self.validate(self.availabilityZoneId, name: "availabilityZoneId", parent: name, pattern: "^[a-zA-Z]+\\d-[a-zA-Z]+\\d$")
            try self.validate(self.description, name: "description", parent: name, max: 1000)
            try self.validate(self.description, name: "description", parent: name, pattern: "^[\\S ]*$")
            try self.validate(self.name, name: "name", parent: name, max: 255)
            try self.validate(self.name, name: "name", parent: name, min: 1)
            try self.validate(self.name, name: "name", parent: name, pattern: "^[\\S ]+$")
            try self.validate(self.siteId, name: "siteId", parent: name, max: 255)
            try self.validate(self.siteId, name: "siteId", parent: name, min: 1)
            try self.validate(self.siteId, name: "siteId", parent: name, pattern: "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:site/)?(os-[a-f0-9]{17})$")
            try self.tags?.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^(?!aws:)[a-zA-Z+-=._:/]+$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, pattern: "^[\\S \\n]+$")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 50)
            try self.validate(self.tags, name: "tags", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case availabilityZone = "AvailabilityZone"
            case availabilityZoneId = "AvailabilityZoneId"
            case description = "Description"
            case name = "Name"
            case siteId = "SiteId"
            case tags = "Tags"
        }
    }

    public struct CreateOutpostOutput: AWSDecodableShape {
        public let outpost: Outpost?

        public init(outpost: Outpost? = nil) {
            self.outpost = outpost
        }

        private enum CodingKeys: String, CodingKey {
            case outpost = "Outpost"
        }
    }

    public struct DeleteOutpostInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "outpostId", location: .uri(locationName: "OutpostId"))
        ]

        public let outpostId: String

        public init(outpostId: String) {
            self.outpostId = outpostId
        }

        public func validate(name: String) throws {
            try self.validate(self.outpostId, name: "outpostId", parent: name, max: 180)
            try self.validate(self.outpostId, name: "outpostId", parent: name, min: 1)
            try self.validate(self.outpostId, name: "outpostId", parent: name, pattern: "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/)?op-[a-f0-9]{17}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteOutpostOutput: AWSDecodableShape {
        public init() {}
    }

    public struct DeleteSiteInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "siteId", location: .uri(locationName: "SiteId"))
        ]

        public let siteId: String

        public init(siteId: String) {
            self.siteId = siteId
        }

        public func validate(name: String) throws {
            try self.validate(self.siteId, name: "siteId", parent: name, max: 255)
            try self.validate(self.siteId, name: "siteId", parent: name, min: 1)
            try self.validate(self.siteId, name: "siteId", parent: name, pattern: "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:site/)?(os-[a-f0-9]{17})$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteSiteOutput: AWSDecodableShape {
        public init() {}
    }

    public struct GetOutpostInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "outpostId", location: .uri(locationName: "OutpostId"))
        ]

        public let outpostId: String

        public init(outpostId: String) {
            self.outpostId = outpostId
        }

        public func validate(name: String) throws {
            try self.validate(self.outpostId, name: "outpostId", parent: name, max: 180)
            try self.validate(self.outpostId, name: "outpostId", parent: name, min: 1)
            try self.validate(self.outpostId, name: "outpostId", parent: name, pattern: "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/)?op-[a-f0-9]{17}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetOutpostInstanceTypesInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "MaxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "NextToken")),
            AWSMemberEncoding(label: "outpostId", location: .uri(locationName: "OutpostId"))
        ]

        public let maxResults: Int?
        public let nextToken: String?
        public let outpostId: String

        public init(maxResults: Int? = nil, nextToken: String? = nil, outpostId: String) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.outpostId = outpostId
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 1000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1005)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^(\\d+)##(\\S+)$")
            try self.validate(self.outpostId, name: "outpostId", parent: name, max: 180)
            try self.validate(self.outpostId, name: "outpostId", parent: name, min: 1)
            try self.validate(self.outpostId, name: "outpostId", parent: name, pattern: "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/)?op-[a-f0-9]{17}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetOutpostInstanceTypesOutput: AWSDecodableShape {
        public let instanceTypes: [InstanceTypeItem]?
        public let nextToken: String?
        public let outpostArn: String?
        public let outpostId: String?

        public init(instanceTypes: [InstanceTypeItem]? = nil, nextToken: String? = nil, outpostArn: String? = nil, outpostId: String? = nil) {
            self.instanceTypes = instanceTypes
            self.nextToken = nextToken
            self.outpostArn = outpostArn
            self.outpostId = outpostId
        }

        private enum CodingKeys: String, CodingKey {
            case instanceTypes = "InstanceTypes"
            case nextToken = "NextToken"
            case outpostArn = "OutpostArn"
            case outpostId = "OutpostId"
        }
    }

    public struct GetOutpostOutput: AWSDecodableShape {
        public let outpost: Outpost?

        public init(outpost: Outpost? = nil) {
            self.outpost = outpost
        }

        private enum CodingKeys: String, CodingKey {
            case outpost = "Outpost"
        }
    }

    public struct InstanceTypeItem: AWSDecodableShape {
        public let instanceType: String?

        public init(instanceType: String? = nil) {
            self.instanceType = instanceType
        }

        private enum CodingKeys: String, CodingKey {
            case instanceType = "InstanceType"
        }
    }

    public struct ListOutpostsInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "availabilityZoneFilter", location: .querystring(locationName: "AvailabilityZoneFilter")),
            AWSMemberEncoding(label: "availabilityZoneIdFilter", location: .querystring(locationName: "AvailabilityZoneIdFilter")),
            AWSMemberEncoding(label: "lifeCycleStatusFilter", location: .querystring(locationName: "LifeCycleStatusFilter")),
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "MaxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "NextToken"))
        ]

        ///  A filter for the Availibility Zone (us-east-1a) of the Outpost.   Filter values are case sensitive. If you specify multiple values for a filter, the values are joined with an OR, and the request returns all results that match any of the specified values.
        public let availabilityZoneFilter: [String]?
        ///  A filter for the AZ IDs (use1-az1) of the Outpost.   Filter values are case sensitive. If you specify multiple values for a filter, the values are joined with an OR, and the request returns all results that match any of the specified values.
        public let availabilityZoneIdFilter: [String]?
        ///  A filter for the lifecycle status of the Outpost.   Filter values are case sensitive. If you specify multiple values for a filter, the values are joined with an OR, and the request returns all results that match any of the specified values.
        public let lifeCycleStatusFilter: [String]?
        public let maxResults: Int?
        public let nextToken: String?

        public init(availabilityZoneFilter: [String]? = nil, availabilityZoneIdFilter: [String]? = nil, lifeCycleStatusFilter: [String]? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.availabilityZoneFilter = availabilityZoneFilter
            self.availabilityZoneIdFilter = availabilityZoneIdFilter
            self.lifeCycleStatusFilter = lifeCycleStatusFilter
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.availabilityZoneFilter?.forEach {
                try validate($0, name: "availabilityZoneFilter[]", parent: name, max: 1000)
                try validate($0, name: "availabilityZoneFilter[]", parent: name, min: 1)
                try validate($0, name: "availabilityZoneFilter[]", parent: name, pattern: "^([a-zA-Z]+-){1,3}([a-zA-Z]+)?(\\d+[a-zA-Z]?)?$")
            }
            try self.validate(self.availabilityZoneFilter, name: "availabilityZoneFilter", parent: name, max: 5)
            try self.validate(self.availabilityZoneFilter, name: "availabilityZoneFilter", parent: name, min: 1)
            try self.availabilityZoneIdFilter?.forEach {
                try validate($0, name: "availabilityZoneIdFilter[]", parent: name, max: 255)
                try validate($0, name: "availabilityZoneIdFilter[]", parent: name, min: 1)
                try validate($0, name: "availabilityZoneIdFilter[]", parent: name, pattern: "^[a-zA-Z]+\\d-[a-zA-Z]+\\d$")
            }
            try self.validate(self.availabilityZoneIdFilter, name: "availabilityZoneIdFilter", parent: name, max: 5)
            try self.validate(self.availabilityZoneIdFilter, name: "availabilityZoneIdFilter", parent: name, min: 1)
            try self.lifeCycleStatusFilter?.forEach {
                try validate($0, name: "lifeCycleStatusFilter[]", parent: name, max: 20)
                try validate($0, name: "lifeCycleStatusFilter[]", parent: name, min: 1)
                try validate($0, name: "lifeCycleStatusFilter[]", parent: name, pattern: "^[ A-Za-z]+$")
            }
            try self.validate(self.lifeCycleStatusFilter, name: "lifeCycleStatusFilter", parent: name, max: 5)
            try self.validate(self.lifeCycleStatusFilter, name: "lifeCycleStatusFilter", parent: name, min: 1)
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 1000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1005)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^(\\d+)##(\\S+)$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListOutpostsOutput: AWSDecodableShape {
        public let nextToken: String?
        public let outposts: [Outpost]?

        public init(nextToken: String? = nil, outposts: [Outpost]? = nil) {
            self.nextToken = nextToken
            self.outposts = outposts
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case outposts = "Outposts"
        }
    }

    public struct ListSitesInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "MaxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "NextToken"))
        ]

        public let maxResults: Int?
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 1000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1005)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^(\\d+)##(\\S+)$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListSitesOutput: AWSDecodableShape {
        public let nextToken: String?
        public let sites: [Site]?

        public init(nextToken: String? = nil, sites: [Site]? = nil) {
            self.nextToken = nextToken
            self.sites = sites
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case sites = "Sites"
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "ResourceArn"))
        ]

        /// The Amazon Resource Name (ARN) of the resource.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:([a-z\\d-]+)/)[a-z]{2,8}-[a-f0-9]{17}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {
        /// The resource tags.
        public let tags: [String: String]?

        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct Outpost: AWSDecodableShape {
        public let availabilityZone: String?
        public let availabilityZoneId: String?
        public let description: String?
        public let lifeCycleStatus: String?
        public let name: String?
        public let outpostArn: String?
        public let outpostId: String?
        public let ownerId: String?
        public let siteArn: String?
        public let siteId: String?
        /// The Outpost tags.
        public let tags: [String: String]?

        public init(availabilityZone: String? = nil, availabilityZoneId: String? = nil, description: String? = nil, lifeCycleStatus: String? = nil, name: String? = nil, outpostArn: String? = nil, outpostId: String? = nil, ownerId: String? = nil, siteArn: String? = nil, siteId: String? = nil, tags: [String: String]? = nil) {
            self.availabilityZone = availabilityZone
            self.availabilityZoneId = availabilityZoneId
            self.description = description
            self.lifeCycleStatus = lifeCycleStatus
            self.name = name
            self.outpostArn = outpostArn
            self.outpostId = outpostId
            self.ownerId = ownerId
            self.siteArn = siteArn
            self.siteId = siteId
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case availabilityZone = "AvailabilityZone"
            case availabilityZoneId = "AvailabilityZoneId"
            case description = "Description"
            case lifeCycleStatus = "LifeCycleStatus"
            case name = "Name"
            case outpostArn = "OutpostArn"
            case outpostId = "OutpostId"
            case ownerId = "OwnerId"
            case siteArn = "SiteArn"
            case siteId = "SiteId"
            case tags = "Tags"
        }
    }

    public struct Site: AWSDecodableShape {
        public let accountId: String?
        public let description: String?
        public let name: String?
        public let siteArn: String?
        public let siteId: String?
        /// The site tags.
        public let tags: [String: String]?

        public init(accountId: String? = nil, description: String? = nil, name: String? = nil, siteArn: String? = nil, siteId: String? = nil, tags: [String: String]? = nil) {
            self.accountId = accountId
            self.description = description
            self.name = name
            self.siteArn = siteArn
            self.siteId = siteId
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
            case description = "Description"
            case name = "Name"
            case siteArn = "SiteArn"
            case siteId = "SiteId"
            case tags = "Tags"
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "ResourceArn"))
        ]

        /// The Amazon Resource Name (ARN) of the resource.
        public let resourceArn: String
        /// The tags to add to the resource.
        public let tags: [String: String]

        public init(resourceArn: String, tags: [String: String]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:([a-z\\d-]+)/)[a-z]{2,8}-[a-f0-9]{17}$")
            try self.tags.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^(?!aws:)[a-zA-Z+-=._:/]+$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, pattern: "^[\\S \\n]+$")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 50)
            try self.validate(self.tags, name: "tags", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct TagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "ResourceArn")),
            AWSMemberEncoding(label: "tagKeys", location: .querystring(locationName: "tagKeys"))
        ]

        /// The Amazon Resource Name (ARN) of the resource.
        public let resourceArn: String
        /// The tag keys.
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^(arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:([a-z\\d-]+)/)[a-z]{2,8}-[a-f0-9]{17}$")
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
                try validate($0, name: "tagKeys[]", parent: name, pattern: "^(?!aws:)[a-zA-Z+-=._:/]+$")
            }
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, max: 50)
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UntagResourceResponse: AWSDecodableShape {
        public init() {}
    }
}
