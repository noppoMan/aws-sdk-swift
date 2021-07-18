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

extension SageMakerRuntime {
    // MARK: Enums

    // MARK: Shapes

    public struct InvokeEndpointInput: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "body"
        public static let _payloadOptions: AWSShapePayloadOptions = [.raw]
        public static var _encoding = [
            AWSMemberEncoding(label: "accept", location: .header(locationName: "Accept")), 
            AWSMemberEncoding(label: "contentType", location: .header(locationName: "Content-Type")), 
            AWSMemberEncoding(label: "customAttributes", location: .header(locationName: "X-Amzn-SageMaker-Custom-Attributes")), 
            AWSMemberEncoding(label: "endpointName", location: .uri(locationName: "EndpointName")), 
            AWSMemberEncoding(label: "inferenceId", location: .header(locationName: "X-Amzn-SageMaker-Inference-Id")), 
            AWSMemberEncoding(label: "targetContainerHostname", location: .header(locationName: "X-Amzn-SageMaker-Target-Container-Hostname")), 
            AWSMemberEncoding(label: "targetModel", location: .header(locationName: "X-Amzn-SageMaker-Target-Model")), 
            AWSMemberEncoding(label: "targetVariant", location: .header(locationName: "X-Amzn-SageMaker-Target-Variant"))
        ]

        /// The desired MIME type of the inference in the response.
        public let accept: String?
        /// Provides input data, in the format specified in the ContentType request header. Amazon SageMaker passes all of the data in the body to the model.  For information about the format of the request body, see Common Data Formats-Inference.
        public let body: AWSPayload
        /// The MIME type of the input data in the request body.
        public let contentType: String?
        /// Provides additional information about a request for an inference submitted to a model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is forwarded verbatim. You could use this value, for example, to provide an ID that you can use to track a request or to provide other metadata that a service endpoint was programmed to process. The value must consist of no more than 1024 visible US-ASCII characters as specified in Section 3.3.6. Field Value Components of the Hypertext Transfer Protocol (HTTP/1.1).  The code in your model is responsible for setting or updating any custom attributes in the response. If your code does not set this value in the response, an empty value is returned. For example, if a custom attribute represents the trace ID, your model can prepend the custom attribute with Trace ID: in your post-processing function.
        ///  This feature is currently supported in the AWS SDKs but not in the Amazon SageMaker Python SDK.
        public let customAttributes: String?
        /// The name of the endpoint that you specified when you created the endpoint using the CreateEndpoint API. 
        public let endpointName: String
        /// If you provide a value, it is added to the captured data when you enable data capture on the endpoint. For information about data capture, see Capture Data.
        public let inferenceId: String?
        /// If the endpoint hosts multiple containers and is configured to use direct invocation, this parameter specifies the host name of the container to invoke.
        public let targetContainerHostname: String?
        /// The model to request for inference when invoking a multi-model endpoint.
        public let targetModel: String?
        /// Specify the production variant to send the inference request to when invoking an endpoint that is running two or more variants. Note that this parameter overrides the default behavior for the endpoint, which is to distribute the invocation traffic based on the variant weights. For information about how to use variant targeting to perform a/b testing, see Test models in production 
        public let targetVariant: String?

        public init(accept: String? = nil, body: AWSPayload, contentType: String? = nil, customAttributes: String? = nil, endpointName: String, inferenceId: String? = nil, targetContainerHostname: String? = nil, targetModel: String? = nil, targetVariant: String? = nil) {
            self.accept = accept
            self.body = body
            self.contentType = contentType
            self.customAttributes = customAttributes
            self.endpointName = endpointName
            self.inferenceId = inferenceId
            self.targetContainerHostname = targetContainerHostname
            self.targetModel = targetModel
            self.targetVariant = targetVariant
        }

        public func validate(name: String) throws {
            try self.validate(self.accept, name: "accept", parent: name, max: 1024)
            try self.validate(self.accept, name: "accept", parent: name, pattern: "\\p{ASCII}*")
            try self.validate(self.body, name: "body", parent: name, max: 6291456)
            try self.validate(self.contentType, name: "contentType", parent: name, max: 1024)
            try self.validate(self.contentType, name: "contentType", parent: name, pattern: "\\p{ASCII}*")
            try self.validate(self.customAttributes, name: "customAttributes", parent: name, max: 1024)
            try self.validate(self.customAttributes, name: "customAttributes", parent: name, pattern: "\\p{ASCII}*")
            try self.validate(self.endpointName, name: "endpointName", parent: name, max: 63)
            try self.validate(self.endpointName, name: "endpointName", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")
            try self.validate(self.inferenceId, name: "inferenceId", parent: name, max: 64)
            try self.validate(self.inferenceId, name: "inferenceId", parent: name, min: 1)
            try self.validate(self.inferenceId, name: "inferenceId", parent: name, pattern: "\\A\\S[\\p{Print}]*\\z")
            try self.validate(self.targetContainerHostname, name: "targetContainerHostname", parent: name, max: 63)
            try self.validate(self.targetContainerHostname, name: "targetContainerHostname", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")
            try self.validate(self.targetModel, name: "targetModel", parent: name, max: 1024)
            try self.validate(self.targetModel, name: "targetModel", parent: name, min: 1)
            try self.validate(self.targetModel, name: "targetModel", parent: name, pattern: "\\A\\S[\\p{Print}]*\\z")
            try self.validate(self.targetVariant, name: "targetVariant", parent: name, max: 63)
            try self.validate(self.targetVariant, name: "targetVariant", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct InvokeEndpointOutput: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "body"
        public static let _payloadOptions: AWSShapePayloadOptions = [.raw]
        public static var _encoding = [
            AWSMemberEncoding(label: "body", location: .body(locationName: "Body")), 
            AWSMemberEncoding(label: "contentType", location: .header(locationName: "Content-Type")), 
            AWSMemberEncoding(label: "customAttributes", location: .header(locationName: "X-Amzn-SageMaker-Custom-Attributes")), 
            AWSMemberEncoding(label: "invokedProductionVariant", location: .header(locationName: "x-Amzn-Invoked-Production-Variant"))
        ]

        /// Includes the inference provided by the model. For information about the format of the response body, see Common Data Formats-Inference.
        public let body: AWSPayload
        /// The MIME type of the inference returned in the response body.
        public let contentType: String?
        /// Provides additional information in the response about the inference returned by a model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is forwarded verbatim. You could use this value, for example, to return an ID received in the CustomAttributes header of a request or other metadata that a service endpoint was programmed to produce. The value must consist of no more than 1024 visible US-ASCII characters as specified in Section 3.3.6. Field Value Components of the Hypertext Transfer Protocol (HTTP/1.1). If the customer wants the custom attribute returned, the model must set the custom attribute to be included on the way back.  The code in your model is responsible for setting or updating any custom attributes in the response. If your code does not set this value in the response, an empty value is returned. For example, if a custom attribute represents the trace ID, your model can prepend the custom attribute with Trace ID: in your post-processing function. This feature is currently supported in the AWS SDKs but not in the Amazon SageMaker Python SDK.
        public let customAttributes: String?
        /// Identifies the production variant that was invoked.
        public let invokedProductionVariant: String?

        public init(body: AWSPayload, contentType: String? = nil, customAttributes: String? = nil, invokedProductionVariant: String? = nil) {
            self.body = body
            self.contentType = contentType
            self.customAttributes = customAttributes
            self.invokedProductionVariant = invokedProductionVariant
        }

        private enum CodingKeys: String, CodingKey {
            case body = "Body"
            case contentType = "Content-Type"
            case customAttributes = "X-Amzn-SageMaker-Custom-Attributes"
            case invokedProductionVariant = "x-Amzn-Invoked-Production-Variant"
        }
    }
}
