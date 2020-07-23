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
Client object for interacting with AWS Lambda service.

AWS Lambda  Overview  This is the AWS Lambda API Reference. The AWS Lambda Developer Guide provides additional information. For the service overview, see What is AWS Lambda, and for information about how the service works, see AWS Lambda: How it Works in the AWS Lambda Developer Guide.
*/
public struct Lambda {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the Lambda client
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
            service: "lambda",
            serviceProtocol: .restjson,
            apiVersion: "2015-03-31",
            endpoint: endpoint,
            possibleErrorTypes: [LambdaErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Adds permissions to the resource-based policy of a version of an AWS Lambda layer. Use this action to grant layer usage permission to other accounts. You can grant permission to a single account, all AWS accounts, or all accounts in an organization. To revoke permission, call RemoveLayerVersionPermission with the statement ID that you specified when you added it.
    public func addLayerVersionPermission(_ input: AddLayerVersionPermissionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AddLayerVersionPermissionResponse> {
        return client.execute(operation: "AddLayerVersionPermission", path: "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Grants an AWS service or another account permission to use a function. You can apply the policy at the function level, or specify a qualifier to restrict access to a single version or alias. If you use a qualifier, the invoker must use the full Amazon Resource Name (ARN) of that version or alias to invoke the function. To grant permission to another account, specify the account ID as the Principal. For AWS services, the principal is a domain-style identifier defined by the service, like s3.amazonaws.com or sns.amazonaws.com. For AWS services, you can also specify the ARN of the associated resource as the SourceArn. If you grant permission to a service principal without specifying the source, other accounts could potentially configure resources in their account to invoke your Lambda function. This action adds a statement to a resource-based permissions policy for the function. For more information about function policies, see Lambda Function Policies. 
    public func addPermission(_ input: AddPermissionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AddPermissionResponse> {
        return client.execute(operation: "AddPermission", path: "/2015-03-31/functions/{FunctionName}/policy", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an alias for a Lambda function version. Use aliases to provide clients with a function identifier that you can update to invoke a different version. You can also map an alias to split invocation requests between two versions. Use the RoutingConfig parameter to specify a second version and the percentage of invocation requests that it receives.
    public func createAlias(_ input: CreateAliasRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AliasConfiguration> {
        return client.execute(operation: "CreateAlias", path: "/2015-03-31/functions/{FunctionName}/aliases", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a mapping between an event source and an AWS Lambda function. Lambda reads items from the event source and triggers the function. For details about each event source type, see the following topics.    Using AWS Lambda with Amazon DynamoDB     Using AWS Lambda with Amazon Kinesis     Using AWS Lambda with Amazon SQS    The following error handling options are only available for stream sources (DynamoDB and Kinesis):    BisectBatchOnFunctionError - If the function returns an error, split the batch in two and retry.    DestinationConfig - Send discarded records to an Amazon SQS queue or Amazon SNS topic.    MaximumRecordAgeInSeconds - Discard records older than the specified age.    MaximumRetryAttempts - Discard records after the specified number of retries.    ParallelizationFactor - Process multiple batches from each shard concurrently.  
    public func createEventSourceMapping(_ input: CreateEventSourceMappingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<EventSourceMappingConfiguration> {
        return client.execute(operation: "CreateEventSourceMapping", path: "/2015-03-31/event-source-mappings/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a Lambda function. To create a function, you need a deployment package and an execution role. The deployment package contains your function code. The execution role grants the function permission to use AWS services, such as Amazon CloudWatch Logs for log streaming and AWS X-Ray for request tracing. When you create a function, Lambda provisions an instance of the function and its supporting resources. If your function connects to a VPC, this process can take a minute or so. During this time, you can't invoke or modify the function. The State, StateReason, and StateReasonCode fields in the response from GetFunctionConfiguration indicate when the function is ready to invoke. For more information, see Function States. A function has an unpublished version, and can have published versions and aliases. The unpublished version changes when you update your function's code and configuration. A published version is a snapshot of your function code and configuration that can't be changed. An alias is a named resource that maps to a version, and can be changed to map to a different version. Use the Publish parameter to create version 1 of your function from its initial configuration. The other parameters let you configure version-specific and function-level settings. You can modify version-specific settings later with UpdateFunctionConfiguration. Function-level settings apply to both the unpublished and published versions of the function, and include tags (TagResource) and per-function concurrency limits (PutFunctionConcurrency). If another account or an AWS service invokes your function, use AddPermission to grant permission by creating a resource-based IAM policy. You can grant permissions at the function level, on a version, or on an alias. To invoke your function directly, use Invoke. To invoke your function in response to events in other AWS services, create an event source mapping (CreateEventSourceMapping), or configure a function trigger in the other service. For more information, see Invoking Functions.
    public func createFunction(_ input: CreateFunctionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<FunctionConfiguration> {
        return client.execute(operation: "CreateFunction", path: "/2015-03-31/functions", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a Lambda function alias.
    @discardableResult public func deleteAlias(_ input: DeleteAliasRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteAlias", path: "/2015-03-31/functions/{FunctionName}/aliases/{Name}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an event source mapping. You can get the identifier of a mapping from the output of ListEventSourceMappings. When you delete an event source mapping, it enters a Deleting state and might not be completely deleted for several seconds.
    public func deleteEventSourceMapping(_ input: DeleteEventSourceMappingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<EventSourceMappingConfiguration> {
        return client.execute(operation: "DeleteEventSourceMapping", path: "/2015-03-31/event-source-mappings/{UUID}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a Lambda function. To delete a specific function version, use the Qualifier parameter. Otherwise, all versions and aliases are deleted. To delete Lambda event source mappings that invoke a function, use DeleteEventSourceMapping. For AWS services and resources that invoke your function directly, delete the trigger in the service where you originally configured it.
    @discardableResult public func deleteFunction(_ input: DeleteFunctionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteFunction", path: "/2015-03-31/functions/{FunctionName}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes a concurrent execution limit from a function.
    @discardableResult public func deleteFunctionConcurrency(_ input: DeleteFunctionConcurrencyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteFunctionConcurrency", path: "/2017-10-31/functions/{FunctionName}/concurrency", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the configuration for asynchronous invocation for a function, version, or alias. To configure options for asynchronous invocation, use PutFunctionEventInvokeConfig.
    @discardableResult public func deleteFunctionEventInvokeConfig(_ input: DeleteFunctionEventInvokeConfigRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteFunctionEventInvokeConfig", path: "/2019-09-25/functions/{FunctionName}/event-invoke-config", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a version of an AWS Lambda layer. Deleted versions can no longer be viewed or added to functions. To avoid breaking functions, a copy of the version remains in Lambda until no functions refer to it.
    @discardableResult public func deleteLayerVersion(_ input: DeleteLayerVersionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteLayerVersion", path: "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the provisioned concurrency configuration for a function.
    @discardableResult public func deleteProvisionedConcurrencyConfig(_ input: DeleteProvisionedConcurrencyConfigRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteProvisionedConcurrencyConfig", path: "/2019-09-30/functions/{FunctionName}/provisioned-concurrency", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves details about your account's limits and usage in an AWS Region.
    public func getAccountSettings(_ input: GetAccountSettingsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAccountSettingsResponse> {
        return client.execute(operation: "GetAccountSettings", path: "/2016-08-19/account-settings/", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns details about a Lambda function alias.
    public func getAlias(_ input: GetAliasRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AliasConfiguration> {
        return client.execute(operation: "GetAlias", path: "/2015-03-31/functions/{FunctionName}/aliases/{Name}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns details about an event source mapping. You can get the identifier of a mapping from the output of ListEventSourceMappings.
    public func getEventSourceMapping(_ input: GetEventSourceMappingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<EventSourceMappingConfiguration> {
        return client.execute(operation: "GetEventSourceMapping", path: "/2015-03-31/event-source-mappings/{UUID}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about the function or function version, with a link to download the deployment package that's valid for 10 minutes. If you specify a function version, only details that are specific to that version are returned.
    public func getFunction(_ input: GetFunctionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetFunctionResponse> {
        return client.execute(operation: "GetFunction", path: "/2015-03-31/functions/{FunctionName}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns details about the reserved concurrency configuration for a function. To set a concurrency limit for a function, use PutFunctionConcurrency.
    public func getFunctionConcurrency(_ input: GetFunctionConcurrencyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetFunctionConcurrencyResponse> {
        return client.execute(operation: "GetFunctionConcurrency", path: "/2019-09-30/functions/{FunctionName}/concurrency", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the version-specific settings of a Lambda function or version. The output includes only options that can vary between versions of a function. To modify these settings, use UpdateFunctionConfiguration. To get all of a function's details, including function-level settings, use GetFunction.
    public func getFunctionConfiguration(_ input: GetFunctionConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<FunctionConfiguration> {
        return client.execute(operation: "GetFunctionConfiguration", path: "/2015-03-31/functions/{FunctionName}/configuration", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the configuration for asynchronous invocation for a function, version, or alias. To configure options for asynchronous invocation, use PutFunctionEventInvokeConfig.
    public func getFunctionEventInvokeConfig(_ input: GetFunctionEventInvokeConfigRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<FunctionEventInvokeConfig> {
        return client.execute(operation: "GetFunctionEventInvokeConfig", path: "/2019-09-25/functions/{FunctionName}/event-invoke-config", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about a version of an AWS Lambda layer, with a link to download the layer archive that's valid for 10 minutes.
    public func getLayerVersion(_ input: GetLayerVersionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetLayerVersionResponse> {
        return client.execute(operation: "GetLayerVersion", path: "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about a version of an AWS Lambda layer, with a link to download the layer archive that's valid for 10 minutes.
    public func getLayerVersionByArn(_ input: GetLayerVersionByArnRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetLayerVersionResponse> {
        return client.execute(operation: "GetLayerVersionByArn", path: "/2018-10-31/layers?find=LayerVersion", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the permission policy for a version of an AWS Lambda layer. For more information, see AddLayerVersionPermission.
    public func getLayerVersionPolicy(_ input: GetLayerVersionPolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetLayerVersionPolicyResponse> {
        return client.execute(operation: "GetLayerVersionPolicy", path: "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the resource-based IAM policy for a function, version, or alias.
    public func getPolicy(_ input: GetPolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetPolicyResponse> {
        return client.execute(operation: "GetPolicy", path: "/2015-03-31/functions/{FunctionName}/policy", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the provisioned concurrency configuration for a function's alias or version.
    public func getProvisionedConcurrencyConfig(_ input: GetProvisionedConcurrencyConfigRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetProvisionedConcurrencyConfigResponse> {
        return client.execute(operation: "GetProvisionedConcurrencyConfig", path: "/2019-09-30/functions/{FunctionName}/provisioned-concurrency", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Invokes a Lambda function. You can invoke a function synchronously (and wait for the response), or asynchronously. To invoke a function asynchronously, set InvocationType to Event. For synchronous invocation, details about the function response, including errors, are included in the response body and headers. For either invocation type, you can find more information in the execution log and trace. When an error occurs, your function may be invoked multiple times. Retry behavior varies by error type, client, event source, and invocation type. For example, if you invoke a function asynchronously and it returns an error, Lambda executes the function up to two more times. For more information, see Retry Behavior. For asynchronous invocation, Lambda adds events to a queue before sending them to your function. If your function does not have enough capacity to keep up with the queue, events may be lost. Occasionally, your function may receive the same event multiple times, even if no error occurs. To retain events that were not processed, configure your function with a dead-letter queue. The status code in the API response doesn't reflect function errors. Error codes are reserved for errors that prevent your function from executing, such as permissions errors, limit errors, or issues with your function's code and configuration. For example, Lambda returns TooManyRequestsException if executing the function would cause you to exceed a concurrency limit at either the account level (ConcurrentInvocationLimitExceeded) or function level (ReservedFunctionConcurrentInvocationLimitExceeded). For functions with a long timeout, your client might be disconnected during synchronous invocation while it waits for a response. Configure your HTTP client, SDK, firewall, proxy, or operating system to allow for long connections with timeout or keep-alive settings. This operation requires permission for the lambda:InvokeFunction action.
    public func invoke(_ input: InvocationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<InvocationResponse> {
        return client.execute(operation: "Invoke", path: "/2015-03-31/functions/{FunctionName}/invocations", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   For asynchronous function invocation, use Invoke.  Invokes a function asynchronously.
    @available(*, deprecated, message:"InvokeAsync is deprecated.")
    public func invokeAsync(_ input: InvokeAsyncRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<InvokeAsyncResponse> {
        return client.execute(operation: "InvokeAsync", path: "/2014-11-13/functions/{FunctionName}/invoke-async/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of aliases for a Lambda function.
    public func listAliases(_ input: ListAliasesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListAliasesResponse> {
        return client.execute(operation: "ListAliases", path: "/2015-03-31/functions/{FunctionName}/aliases", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists event source mappings. Specify an EventSourceArn to only show event source mappings for a single event source.
    public func listEventSourceMappings(_ input: ListEventSourceMappingsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListEventSourceMappingsResponse> {
        return client.execute(operation: "ListEventSourceMappings", path: "/2015-03-31/event-source-mappings/", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a list of configurations for asynchronous invocation for a function. To configure options for asynchronous invocation, use PutFunctionEventInvokeConfig.
    public func listFunctionEventInvokeConfigs(_ input: ListFunctionEventInvokeConfigsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListFunctionEventInvokeConfigsResponse> {
        return client.execute(operation: "ListFunctionEventInvokeConfigs", path: "/2019-09-25/functions/{FunctionName}/event-invoke-config/list", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of Lambda functions, with the version-specific configuration of each. Lambda returns up to 50 functions per call. Set FunctionVersion to ALL to include all published versions of each function in addition to the unpublished version. To get more information about a function or version, use GetFunction.
    public func listFunctions(_ input: ListFunctionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListFunctionsResponse> {
        return client.execute(operation: "ListFunctions", path: "/2015-03-31/functions/", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the versions of an AWS Lambda layer. Versions that have been deleted aren't listed. Specify a runtime identifier to list only versions that indicate that they're compatible with that runtime.
    public func listLayerVersions(_ input: ListLayerVersionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListLayerVersionsResponse> {
        return client.execute(operation: "ListLayerVersions", path: "/2018-10-31/layers/{LayerName}/versions", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists AWS Lambda layers and shows information about the latest version of each. Specify a runtime identifier to list only layers that indicate that they're compatible with that runtime.
    public func listLayers(_ input: ListLayersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListLayersResponse> {
        return client.execute(operation: "ListLayers", path: "/2018-10-31/layers", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a list of provisioned concurrency configurations for a function.
    public func listProvisionedConcurrencyConfigs(_ input: ListProvisionedConcurrencyConfigsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListProvisionedConcurrencyConfigsResponse> {
        return client.execute(operation: "ListProvisionedConcurrencyConfigs", path: "/2019-09-30/functions/{FunctionName}/provisioned-concurrency?List=ALL", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a function's tags. You can also view tags with GetFunction.
    public func listTags(_ input: ListTagsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsResponse> {
        return client.execute(operation: "ListTags", path: "/2017-03-31/tags/{ARN}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of versions, with the version-specific configuration of each. Lambda returns up to 50 versions per call.
    public func listVersionsByFunction(_ input: ListVersionsByFunctionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListVersionsByFunctionResponse> {
        return client.execute(operation: "ListVersionsByFunction", path: "/2015-03-31/functions/{FunctionName}/versions", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an AWS Lambda layer from a ZIP archive. Each time you call PublishLayerVersion with the same layer name, a new version is created. Add layers to your function with CreateFunction or UpdateFunctionConfiguration.
    public func publishLayerVersion(_ input: PublishLayerVersionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PublishLayerVersionResponse> {
        return client.execute(operation: "PublishLayerVersion", path: "/2018-10-31/layers/{LayerName}/versions", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a version from the current code and configuration of a function. Use versions to create a snapshot of your function code and configuration that doesn't change. AWS Lambda doesn't publish a version if the function's configuration and code haven't changed since the last version. Use UpdateFunctionCode or UpdateFunctionConfiguration to update the function before publishing a version. Clients can invoke versions directly or with an alias. To create an alias, use CreateAlias.
    public func publishVersion(_ input: PublishVersionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<FunctionConfiguration> {
        return client.execute(operation: "PublishVersion", path: "/2015-03-31/functions/{FunctionName}/versions", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Sets the maximum number of simultaneous executions for a function, and reserves capacity for that concurrency level. Concurrency settings apply to the function as a whole, including all published versions and the unpublished version. Reserving concurrency both ensures that your function has capacity to process the specified number of events simultaneously, and prevents it from scaling beyond that level. Use GetFunction to see the current setting for a function. Use GetAccountSettings to see your Regional concurrency limit. You can reserve concurrency for as many functions as you like, as long as you leave at least 100 simultaneous executions unreserved for functions that aren't configured with a per-function limit. For more information, see Managing Concurrency.
    public func putFunctionConcurrency(_ input: PutFunctionConcurrencyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Concurrency> {
        return client.execute(operation: "PutFunctionConcurrency", path: "/2017-10-31/functions/{FunctionName}/concurrency", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Configures options for asynchronous invocation on a function, version, or alias. If a configuration already exists for a function, version, or alias, this operation overwrites it. If you exclude any settings, they are removed. To set one option without affecting existing settings for other options, use UpdateFunctionEventInvokeConfig. By default, Lambda retries an asynchronous invocation twice if the function returns an error. It retains events in a queue for up to six hours. When an event fails all processing attempts or stays in the asynchronous invocation queue for too long, Lambda discards it. To retain discarded events, configure a dead-letter queue with UpdateFunctionConfiguration. To send an invocation record to a queue, topic, function, or event bus, specify a destination. You can configure separate destinations for successful invocations (on-success) and events that fail all processing attempts (on-failure). You can configure destinations in addition to or instead of a dead-letter queue.
    public func putFunctionEventInvokeConfig(_ input: PutFunctionEventInvokeConfigRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<FunctionEventInvokeConfig> {
        return client.execute(operation: "PutFunctionEventInvokeConfig", path: "/2019-09-25/functions/{FunctionName}/event-invoke-config", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds a provisioned concurrency configuration to a function's alias or version.
    public func putProvisionedConcurrencyConfig(_ input: PutProvisionedConcurrencyConfigRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutProvisionedConcurrencyConfigResponse> {
        return client.execute(operation: "PutProvisionedConcurrencyConfig", path: "/2019-09-30/functions/{FunctionName}/provisioned-concurrency", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes a statement from the permissions policy for a version of an AWS Lambda layer. For more information, see AddLayerVersionPermission.
    @discardableResult public func removeLayerVersionPermission(_ input: RemoveLayerVersionPermissionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "RemoveLayerVersionPermission", path: "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy/{StatementId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Revokes function-use permission from an AWS service or another account. You can get the ID of the statement from the output of GetPolicy.
    @discardableResult public func removePermission(_ input: RemovePermissionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "RemovePermission", path: "/2015-03-31/functions/{FunctionName}/policy/{StatementId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds tags to a function.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "TagResource", path: "/2017-03-31/tags/{ARN}", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes tags from a function.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "UntagResource", path: "/2017-03-31/tags/{ARN}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the configuration of a Lambda function alias.
    public func updateAlias(_ input: UpdateAliasRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AliasConfiguration> {
        return client.execute(operation: "UpdateAlias", path: "/2015-03-31/functions/{FunctionName}/aliases/{Name}", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an event source mapping. You can change the function that AWS Lambda invokes, or pause invocation and resume later from the same location. The following error handling options are only available for stream sources (DynamoDB and Kinesis):    BisectBatchOnFunctionError - If the function returns an error, split the batch in two and retry.    DestinationConfig - Send discarded records to an Amazon SQS queue or Amazon SNS topic.    MaximumRecordAgeInSeconds - Discard records older than the specified age.    MaximumRetryAttempts - Discard records after the specified number of retries.    ParallelizationFactor - Process multiple batches from each shard concurrently.  
    public func updateEventSourceMapping(_ input: UpdateEventSourceMappingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<EventSourceMappingConfiguration> {
        return client.execute(operation: "UpdateEventSourceMapping", path: "/2015-03-31/event-source-mappings/{UUID}", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a Lambda function's code. The function's code is locked when you publish a version. You can't modify the code of a published version, only the unpublished version.
    public func updateFunctionCode(_ input: UpdateFunctionCodeRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<FunctionConfiguration> {
        return client.execute(operation: "UpdateFunctionCode", path: "/2015-03-31/functions/{FunctionName}/code", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Modify the version-specific settings of a Lambda function. When you update a function, Lambda provisions an instance of the function and its supporting resources. If your function connects to a VPC, this process can take a minute. During this time, you can't modify the function, but you can still invoke it. The LastUpdateStatus, LastUpdateStatusReason, and LastUpdateStatusReasonCode fields in the response from GetFunctionConfiguration indicate when the update is complete and the function is processing events with the new configuration. For more information, see Function States. These settings can vary between versions of a function and are locked when you publish a version. You can't modify the configuration of a published version, only the unpublished version. To configure function concurrency, use PutFunctionConcurrency. To grant invoke permissions to an account or AWS service, use AddPermission.
    public func updateFunctionConfiguration(_ input: UpdateFunctionConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<FunctionConfiguration> {
        return client.execute(operation: "UpdateFunctionConfiguration", path: "/2015-03-31/functions/{FunctionName}/configuration", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the configuration for asynchronous invocation for a function, version, or alias. To configure options for asynchronous invocation, use PutFunctionEventInvokeConfig.
    public func updateFunctionEventInvokeConfig(_ input: UpdateFunctionEventInvokeConfigRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<FunctionEventInvokeConfig> {
        return client.execute(operation: "UpdateFunctionEventInvokeConfig", path: "/2019-09-25/functions/{FunctionName}/event-invoke-config", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
