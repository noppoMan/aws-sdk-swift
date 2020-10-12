//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import SotoCore

extension SimpleDB {
    // MARK: Enums

    // MARK: Shapes

    public struct Attribute: AWSDecodableShape {

        public let alternateNameEncoding: String?
        public let alternateValueEncoding: String?
        /// The name of the attribute.
        public let name: String
        /// The value of the attribute.
        public let value: String

        public init(alternateNameEncoding: String? = nil, alternateValueEncoding: String? = nil, name: String, value: String) {
            self.alternateNameEncoding = alternateNameEncoding
            self.alternateValueEncoding = alternateValueEncoding
            self.name = name
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case alternateNameEncoding = "AlternateNameEncoding"
            case alternateValueEncoding = "AlternateValueEncoding"
            case name = "Name"
            case value = "Value"
        }
    }

    public struct BatchDeleteAttributesRequest: AWSEncodableShape {

        /// The name of the domain in which the attributes are being deleted.
        public let domainName: String
        /// A list of items on which to perform the operation.
        public let items: [DeletableItem]

        public init(domainName: String, items: [DeletableItem]) {
            self.domainName = domainName
            self.items = items
        }

        private enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case items = "Item"
        }
    }

    public struct BatchPutAttributesRequest: AWSEncodableShape {

        /// The name of the domain in which the attributes are being stored.
        public let domainName: String
        /// A list of items on which to perform the operation.
        public let items: [ReplaceableItem]

        public init(domainName: String, items: [ReplaceableItem]) {
            self.domainName = domainName
            self.items = items
        }

        private enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case items = "Item"
        }
    }

    public struct CreateDomainRequest: AWSEncodableShape {

        /// The name of the domain to create. The name can range between 3 and 255 characters and can contain the following characters: a-z, A-Z, 0-9, '_', '-', and '.'.
        public let domainName: String

        public init(domainName: String) {
            self.domainName = domainName
        }

        private enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
        }
    }

    public struct DeletableAttribute: AWSEncodableShape {

        /// The name of the attribute.
        public let name: String
        /// The value of the attribute.
        public let value: String?

        public init(name: String, value: String? = nil) {
            self.name = name
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
        }
    }

    public struct DeletableItem: AWSEncodableShape {

        public let attributes: [DeletableAttribute]?
        public let name: String

        public init(attributes: [DeletableAttribute]? = nil, name: String) {
            self.attributes = attributes
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "Attribute"
            case name = "ItemName"
        }
    }

    public struct DeleteAttributesRequest: AWSEncodableShape {

        /// A list of Attributes. Similar to columns on a spreadsheet, attributes represent categories of data that can be assigned to items.
        public let attributes: [DeletableAttribute]?
        /// The name of the domain in which to perform the operation.
        public let domainName: String
        /// The update condition which, if specified, determines whether the specified attributes will be deleted or not. The update condition must be satisfied in order for this request to be processed and the attributes to be deleted.
        public let expected: UpdateCondition?
        /// The name of the item. Similar to rows on a spreadsheet, items represent individual objects that contain one or more value-attribute pairs.
        public let itemName: String

        public init(attributes: [DeletableAttribute]? = nil, domainName: String, expected: UpdateCondition? = nil, itemName: String) {
            self.attributes = attributes
            self.domainName = domainName
            self.expected = expected
            self.itemName = itemName
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "Attribute"
            case domainName = "DomainName"
            case expected = "Expected"
            case itemName = "ItemName"
        }
    }

    public struct DeleteDomainRequest: AWSEncodableShape {

        /// The name of the domain to delete.
        public let domainName: String

        public init(domainName: String) {
            self.domainName = domainName
        }

        private enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
        }
    }

    public struct DomainMetadataRequest: AWSEncodableShape {

        /// The name of the domain for which to display the metadata of.
        public let domainName: String

        public init(domainName: String) {
            self.domainName = domainName
        }

        private enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
        }
    }

    public struct DomainMetadataResult: AWSDecodableShape {

        /// The number of unique attribute names in the domain.
        public let attributeNameCount: Int?
        /// The total size of all unique attribute names in the domain, in bytes.
        public let attributeNamesSizeBytes: Int64?
        /// The number of all attribute name/value pairs in the domain.
        public let attributeValueCount: Int?
        /// The total size of all attribute values in the domain, in bytes.
        public let attributeValuesSizeBytes: Int64?
        /// The number of all items in the domain.
        public let itemCount: Int?
        /// The total size of all item names in the domain, in bytes.
        public let itemNamesSizeBytes: Int64?
        /// The data and time when metadata was calculated, in Epoch (UNIX) seconds.
        public let timestamp: Int?

        public init(attributeNameCount: Int? = nil, attributeNamesSizeBytes: Int64? = nil, attributeValueCount: Int? = nil, attributeValuesSizeBytes: Int64? = nil, itemCount: Int? = nil, itemNamesSizeBytes: Int64? = nil, timestamp: Int? = nil) {
            self.attributeNameCount = attributeNameCount
            self.attributeNamesSizeBytes = attributeNamesSizeBytes
            self.attributeValueCount = attributeValueCount
            self.attributeValuesSizeBytes = attributeValuesSizeBytes
            self.itemCount = itemCount
            self.itemNamesSizeBytes = itemNamesSizeBytes
            self.timestamp = timestamp
        }

        private enum CodingKeys: String, CodingKey {
            case attributeNameCount = "AttributeNameCount"
            case attributeNamesSizeBytes = "AttributeNamesSizeBytes"
            case attributeValueCount = "AttributeValueCount"
            case attributeValuesSizeBytes = "AttributeValuesSizeBytes"
            case itemCount = "ItemCount"
            case itemNamesSizeBytes = "ItemNamesSizeBytes"
            case timestamp = "Timestamp"
        }
    }

    public struct GetAttributesRequest: AWSEncodableShape {

        /// The names of the attributes.
        public let attributeNames: [String]?
        /// Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If true, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
        public let consistentRead: Bool?
        /// The name of the domain in which to perform the operation.
        public let domainName: String
        /// The name of the item.
        public let itemName: String

        public init(attributeNames: [String]? = nil, consistentRead: Bool? = nil, domainName: String, itemName: String) {
            self.attributeNames = attributeNames
            self.consistentRead = consistentRead
            self.domainName = domainName
            self.itemName = itemName
        }

        private enum CodingKeys: String, CodingKey {
            case attributeNames = "AttributeName"
            case consistentRead = "ConsistentRead"
            case domainName = "DomainName"
            case itemName = "ItemName"
        }
    }

    public struct GetAttributesResult: AWSDecodableShape {

        /// The list of attributes returned by the operation.
        public let attributes: [Attribute]?

        public init(attributes: [Attribute]? = nil) {
            self.attributes = attributes
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "Attribute"
        }
    }

    public struct Item: AWSDecodableShape {

        public let alternateNameEncoding: String?
        /// A list of attributes.
        public let attributes: [Attribute]
        /// The name of the item.
        public let name: String

        public init(alternateNameEncoding: String? = nil, attributes: [Attribute], name: String) {
            self.alternateNameEncoding = alternateNameEncoding
            self.attributes = attributes
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case alternateNameEncoding = "AlternateNameEncoding"
            case attributes = "Attribute"
            case name = "Name"
        }
    }

    public struct ListDomainsRequest: AWSEncodableShape {

        /// The maximum number of domain names you want returned. The range is 1 to 100. The default setting is 100.
        public let maxNumberOfDomains: Int?
        /// A string informing Amazon SimpleDB where to start the next list of domain names.
        public let nextToken: String?

        public init(maxNumberOfDomains: Int? = nil, nextToken: String? = nil) {
            self.maxNumberOfDomains = maxNumberOfDomains
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxNumberOfDomains = "MaxNumberOfDomains"
            case nextToken = "NextToken"
        }
    }

    public struct ListDomainsResult: AWSDecodableShape {

        /// A list of domain names that match the expression.
        public let domainNames: [String]?
        /// An opaque token indicating that there are more domains than the specified MaxNumberOfDomains still available.
        public let nextToken: String?

        public init(domainNames: [String]? = nil, nextToken: String? = nil) {
            self.domainNames = domainNames
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case domainNames = "DomainName"
            case nextToken = "NextToken"
        }
    }

    public struct PutAttributesRequest: AWSEncodableShape {

        /// The list of attributes.
        public let attributes: [ReplaceableAttribute]
        /// The name of the domain in which to perform the operation.
        public let domainName: String
        /// The update condition which, if specified, determines whether the specified attributes will be updated or not. The update condition must be satisfied in order for this request to be processed and the attributes to be updated.
        public let expected: UpdateCondition?
        /// The name of the item.
        public let itemName: String

        public init(attributes: [ReplaceableAttribute], domainName: String, expected: UpdateCondition? = nil, itemName: String) {
            self.attributes = attributes
            self.domainName = domainName
            self.expected = expected
            self.itemName = itemName
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "Attribute"
            case domainName = "DomainName"
            case expected = "Expected"
            case itemName = "ItemName"
        }
    }

    public struct ReplaceableAttribute: AWSEncodableShape {

        /// The name of the replaceable attribute.
        public let name: String
        /// A flag specifying whether or not to replace the attribute/value pair or to add a new attribute/value pair. The default setting is false.
        public let replace: Bool?
        /// The value of the replaceable attribute.
        public let value: String

        public init(name: String, replace: Bool? = nil, value: String) {
            self.name = name
            self.replace = replace
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case replace = "Replace"
            case value = "Value"
        }
    }

    public struct ReplaceableItem: AWSEncodableShape {

        /// The list of attributes for a replaceable item.
        public let attributes: [ReplaceableAttribute]
        /// The name of the replaceable item.
        public let name: String

        public init(attributes: [ReplaceableAttribute], name: String) {
            self.attributes = attributes
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "Attribute"
            case name = "ItemName"
        }
    }

    public struct SelectRequest: AWSEncodableShape {

        /// Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If true, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
        public let consistentRead: Bool?
        /// A string informing Amazon SimpleDB where to start the next list of ItemNames.
        public let nextToken: String?
        /// The expression used to query the domain.
        public let selectExpression: String

        public init(consistentRead: Bool? = nil, nextToken: String? = nil, selectExpression: String) {
            self.consistentRead = consistentRead
            self.nextToken = nextToken
            self.selectExpression = selectExpression
        }

        private enum CodingKeys: String, CodingKey {
            case consistentRead = "ConsistentRead"
            case nextToken = "NextToken"
            case selectExpression = "SelectExpression"
        }
    }

    public struct SelectResult: AWSDecodableShape {

        /// A list of items that match the select expression.
        public let items: [Item]?
        /// An opaque token indicating that more items than MaxNumberOfItems were matched, the response size exceeded 1 megabyte, or the execution time exceeded 5 seconds.
        public let nextToken: String?

        public init(items: [Item]? = nil, nextToken: String? = nil) {
            self.items = items
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case items = "Item"
            case nextToken = "NextToken"
        }
    }

    public struct UpdateCondition: AWSEncodableShape {

        /// A value specifying whether or not the specified attribute must exist with the specified value in order for the update condition to be satisfied. Specify true if the attribute must exist for the update condition to be satisfied. Specify false if the attribute should not exist in order for the update condition to be satisfied.
        public let exists: Bool?
        /// The name of the attribute involved in the condition.
        public let name: String?
        /// The value of an attribute. This value can only be specified when the Exists parameter is equal to true.
        public let value: String?

        public init(exists: Bool? = nil, name: String? = nil, value: String? = nil) {
            self.exists = exists
            self.name = name
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case exists = "Exists"
            case name = "Name"
            case value = "Value"
        }
    }
}
