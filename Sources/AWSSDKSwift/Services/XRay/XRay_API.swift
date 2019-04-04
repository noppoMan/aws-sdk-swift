// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS X-Ray provides APIs for managing debug traces and retrieving service maps and other data created by processing those traces.
*/
public struct XRay {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "xray",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2016-04-12",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [XRayErrorType.self]
        )
    }

    ///  Deletes a group resource.
    public func deleteGroup(_ input: DeleteGroupRequest) throws -> EventLoopFuture<DeleteGroupResult> {
        return try client.send(operation: "DeleteGroup", path: "/DeleteGroup", httpMethod: "POST", input: input)
    }

    ///  Deletes a sampling rule.
    public func deleteSamplingRule(_ input: DeleteSamplingRuleRequest) throws -> EventLoopFuture<DeleteSamplingRuleResult> {
        return try client.send(operation: "DeleteSamplingRule", path: "/DeleteSamplingRule", httpMethod: "POST", input: input)
    }

    ///  Retrieves a service graph for one or more specific trace IDs.
    public func getTraceGraph(_ input: GetTraceGraphRequest) throws -> EventLoopFuture<GetTraceGraphResult> {
        return try client.send(operation: "GetTraceGraph", path: "/TraceGraph", httpMethod: "POST", input: input)
    }

    ///  Requests a sampling quota for rules that the service is using to sample requests. 
    public func getSamplingTargets(_ input: GetSamplingTargetsRequest) throws -> EventLoopFuture<GetSamplingTargetsResult> {
        return try client.send(operation: "GetSamplingTargets", path: "/SamplingTargets", httpMethod: "POST", input: input)
    }

    ///  Creates a rule to control sampling behavior for instrumented applications. Services retrieve rules with GetSamplingRules, and evaluate each rule in ascending order of priority for each request. If a rule matches, the service records a trace, borrowing it from the reservoir size. After 10 seconds, the service reports back to X-Ray with GetSamplingTargets to get updated versions of each in-use rule. The updated rule contains a trace quota that the service can use instead of borrowing from the reservoir.
    public func createSamplingRule(_ input: CreateSamplingRuleRequest) throws -> EventLoopFuture<CreateSamplingRuleResult> {
        return try client.send(operation: "CreateSamplingRule", path: "/CreateSamplingRule", httpMethod: "POST", input: input)
    }

    ///  Creates a group resource with a name and a filter expression. 
    public func createGroup(_ input: CreateGroupRequest) throws -> EventLoopFuture<CreateGroupResult> {
        return try client.send(operation: "CreateGroup", path: "/CreateGroup", httpMethod: "POST", input: input)
    }

    ///  Retrieves group resource details.
    public func getGroup(_ input: GetGroupRequest) throws -> EventLoopFuture<GetGroupResult> {
        return try client.send(operation: "GetGroup", path: "/GetGroup", httpMethod: "POST", input: input)
    }

    ///  Retrieves IDs and metadata for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to BatchGetTraces. A filter expression can target traced requests that hit specific service nodes or edges, have errors, or come from a known user. For example, the following filter expression targets traces that pass through api.example.com:  service("api.example.com")  This filter expression finds traces that have an annotation named account with the value 12345:  annotation.account = "12345"  For a full list of indexed fields and keywords that you can use in filter expressions, see Using Filter Expressions in the AWS X-Ray Developer Guide.
    public func getTraceSummaries(_ input: GetTraceSummariesRequest) throws -> EventLoopFuture<GetTraceSummariesResult> {
        return try client.send(operation: "GetTraceSummaries", path: "/TraceSummaries", httpMethod: "POST", input: input)
    }

    ///  Modifies a sampling rule's configuration.
    public func updateSamplingRule(_ input: UpdateSamplingRuleRequest) throws -> EventLoopFuture<UpdateSamplingRuleResult> {
        return try client.send(operation: "UpdateSamplingRule", path: "/UpdateSamplingRule", httpMethod: "POST", input: input)
    }

    ///  Uploads segment documents to AWS X-Ray. The X-Ray SDK generates segment documents and sends them to the X-Ray daemon, which uploads them in batches. A segment document can be a completed segment, an in-progress segment, or an array of subsegments. Segments must include the following fields. For the full segment document schema, see AWS X-Ray Segment Documents in the AWS X-Ray Developer Guide.  Required Segment Document Fields     name - The name of the service that handled the request.    id - A 64-bit identifier for the segment, unique among segments in the same trace, in 16 hexadecimal digits.    trace_id - A unique identifier that connects all segments and subsegments originating from a single client request.    start_time - Time the segment or subsegment was created, in floating point seconds in epoch time, accurate to milliseconds. For example, 1480615200.010 or 1.480615200010E9.    end_time - Time the segment or subsegment was closed. For example, 1480615200.090 or 1.480615200090E9. Specify either an end_time or in_progress.    in_progress - Set to true instead of specifying an end_time to record that a segment has been started, but is not complete. Send an in progress segment when your application receives a request that will take a long time to serve, to trace the fact that the request was received. When the response is sent, send the complete segment to overwrite the in-progress segment.   A trace_id consists of three numbers separated by hyphens. For example, 1-58406520-a006649127e371903a2de979. This includes:  Trace ID Format    The version number, i.e. 1.   The time of the original request, in Unix epoch time, in 8 hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch time is 1480615200 seconds, or 58406520 in hexadecimal.   A 96-bit identifier for the trace, globally unique, in 24 hexadecimal digits.  
    public func putTraceSegments(_ input: PutTraceSegmentsRequest) throws -> EventLoopFuture<PutTraceSegmentsResult> {
        return try client.send(operation: "PutTraceSegments", path: "/TraceSegments", httpMethod: "POST", input: input)
    }

    ///  Retrieves information about recent sampling results for all sampling rules.
    public func getSamplingStatisticSummaries(_ input: GetSamplingStatisticSummariesRequest) throws -> EventLoopFuture<GetSamplingStatisticSummariesResult> {
        return try client.send(operation: "GetSamplingStatisticSummaries", path: "/SamplingStatisticSummaries", httpMethod: "POST", input: input)
    }

    ///  Retrieves the current encryption configuration for X-Ray data.
    public func getEncryptionConfig(_ input: GetEncryptionConfigRequest) throws -> EventLoopFuture<GetEncryptionConfigResult> {
        return try client.send(operation: "GetEncryptionConfig", path: "/EncryptionConfig", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use GetTraceSummaries to get a list of trace IDs.
    public func batchGetTraces(_ input: BatchGetTracesRequest) throws -> EventLoopFuture<BatchGetTracesResult> {
        return try client.send(operation: "BatchGetTraces", path: "/Traces", httpMethod: "POST", input: input)
    }

    ///  Retrieves all active group details.
    public func getGroups(_ input: GetGroupsRequest) throws -> EventLoopFuture<GetGroupsResult> {
        return try client.send(operation: "GetGroups", path: "/Groups", httpMethod: "POST", input: input)
    }

    ///  Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the AWS X-Ray SDK. Downstream services can be other applications, AWS resources, HTTP web APIs, or SQL databases.
    public func getServiceGraph(_ input: GetServiceGraphRequest) throws -> EventLoopFuture<GetServiceGraphResult> {
        return try client.send(operation: "GetServiceGraph", path: "/ServiceGraph", httpMethod: "POST", input: input)
    }

    ///  Updates the encryption configuration for X-Ray data.
    public func putEncryptionConfig(_ input: PutEncryptionConfigRequest) throws -> EventLoopFuture<PutEncryptionConfigResult> {
        return try client.send(operation: "PutEncryptionConfig", path: "/PutEncryptionConfig", httpMethod: "POST", input: input)
    }

    ///  Used by the AWS X-Ray daemon to upload telemetry.
    public func putTelemetryRecords(_ input: PutTelemetryRecordsRequest) throws -> EventLoopFuture<PutTelemetryRecordsResult> {
        return try client.send(operation: "PutTelemetryRecords", path: "/TelemetryRecords", httpMethod: "POST", input: input)
    }

    ///  Updates a group resource.
    public func updateGroup(_ input: UpdateGroupRequest) throws -> EventLoopFuture<UpdateGroupResult> {
        return try client.send(operation: "UpdateGroup", path: "/UpdateGroup", httpMethod: "POST", input: input)
    }

    ///  Retrieves all sampling rules.
    public func getSamplingRules(_ input: GetSamplingRulesRequest) throws -> EventLoopFuture<GetSamplingRulesResult> {
        return try client.send(operation: "GetSamplingRules", path: "/GetSamplingRules", httpMethod: "POST", input: input)
    }


}