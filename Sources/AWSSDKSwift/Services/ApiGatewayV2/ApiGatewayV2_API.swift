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
Client object for interacting with AWS ApiGatewayV2 service.

Amazon API Gateway V2
*/
public struct ApiGatewayV2 {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the ApiGatewayV2 client
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
            service: "apigateway",
            serviceProtocol: .restjson,
            apiVersion: "2018-11-29",
            endpoint: endpoint,
            possibleErrorTypes: [ApiGatewayV2ErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Creates an Api resource.
    public func createApi(_ input: CreateApiRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateApiResponse> {
        return client.execute(operation: "CreateApi", path: "/v2/apis", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an API mapping.
    public func createApiMapping(_ input: CreateApiMappingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateApiMappingResponse> {
        return client.execute(operation: "CreateApiMapping", path: "/v2/domainnames/{domainName}/apimappings", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an Authorizer for an API.
    public func createAuthorizer(_ input: CreateAuthorizerRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateAuthorizerResponse> {
        return client.execute(operation: "CreateAuthorizer", path: "/v2/apis/{apiId}/authorizers", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a Deployment for an API.
    public func createDeployment(_ input: CreateDeploymentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateDeploymentResponse> {
        return client.execute(operation: "CreateDeployment", path: "/v2/apis/{apiId}/deployments", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a domain name.
    public func createDomainName(_ input: CreateDomainNameRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateDomainNameResponse> {
        return client.execute(operation: "CreateDomainName", path: "/v2/domainnames", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an Integration.
    public func createIntegration(_ input: CreateIntegrationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateIntegrationResult> {
        return client.execute(operation: "CreateIntegration", path: "/v2/apis/{apiId}/integrations", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an IntegrationResponses.
    public func createIntegrationResponse(_ input: CreateIntegrationResponseRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateIntegrationResponseResponse> {
        return client.execute(operation: "CreateIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a Model for an API.
    public func createModel(_ input: CreateModelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateModelResponse> {
        return client.execute(operation: "CreateModel", path: "/v2/apis/{apiId}/models", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a Route for an API.
    public func createRoute(_ input: CreateRouteRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateRouteResult> {
        return client.execute(operation: "CreateRoute", path: "/v2/apis/{apiId}/routes", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a RouteResponse for a Route.
    public func createRouteResponse(_ input: CreateRouteResponseRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateRouteResponseResponse> {
        return client.execute(operation: "CreateRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a Stage for an API.
    public func createStage(_ input: CreateStageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateStageResponse> {
        return client.execute(operation: "CreateStage", path: "/v2/apis/{apiId}/stages", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a VPC link.
    public func createVpcLink(_ input: CreateVpcLinkRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateVpcLinkResponse> {
        return client.execute(operation: "CreateVpcLink", path: "/v2/vpclinks", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the AccessLogSettings for a Stage. To disable access logging for a Stage, delete its AccessLogSettings.
    @discardableResult public func deleteAccessLogSettings(_ input: DeleteAccessLogSettingsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteAccessLogSettings", path: "/v2/apis/{apiId}/stages/{stageName}/accesslogsettings", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an Api resource.
    @discardableResult public func deleteApi(_ input: DeleteApiRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteApi", path: "/v2/apis/{apiId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an API mapping.
    @discardableResult public func deleteApiMapping(_ input: DeleteApiMappingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteApiMapping", path: "/v2/domainnames/{domainName}/apimappings/{apiMappingId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an Authorizer.
    @discardableResult public func deleteAuthorizer(_ input: DeleteAuthorizerRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteAuthorizer", path: "/v2/apis/{apiId}/authorizers/{authorizerId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a CORS configuration.
    @discardableResult public func deleteCorsConfiguration(_ input: DeleteCorsConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteCorsConfiguration", path: "/v2/apis/{apiId}/cors", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a Deployment.
    @discardableResult public func deleteDeployment(_ input: DeleteDeploymentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteDeployment", path: "/v2/apis/{apiId}/deployments/{deploymentId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a domain name.
    @discardableResult public func deleteDomainName(_ input: DeleteDomainNameRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteDomainName", path: "/v2/domainnames/{domainName}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an Integration.
    @discardableResult public func deleteIntegration(_ input: DeleteIntegrationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteIntegration", path: "/v2/apis/{apiId}/integrations/{integrationId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an IntegrationResponses.
    @discardableResult public func deleteIntegrationResponse(_ input: DeleteIntegrationResponseRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a Model.
    @discardableResult public func deleteModel(_ input: DeleteModelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteModel", path: "/v2/apis/{apiId}/models/{modelId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a Route.
    @discardableResult public func deleteRoute(_ input: DeleteRouteRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteRoute", path: "/v2/apis/{apiId}/routes/{routeId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a route request parameter.
    @discardableResult public func deleteRouteRequestParameter(_ input: DeleteRouteRequestParameterRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteRouteRequestParameter", path: "/v2/apis/{apiId}/routes/{routeId}/requestparameters/{requestParameterKey}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a RouteResponse.
    @discardableResult public func deleteRouteResponse(_ input: DeleteRouteResponseRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the RouteSettings for a stage.
    @discardableResult public func deleteRouteSettings(_ input: DeleteRouteSettingsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteRouteSettings", path: "/v2/apis/{apiId}/stages/{stageName}/routesettings/{routeKey}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a Stage.
    @discardableResult public func deleteStage(_ input: DeleteStageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteStage", path: "/v2/apis/{apiId}/stages/{stageName}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a VPC link.
    public func deleteVpcLink(_ input: DeleteVpcLinkRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteVpcLinkResponse> {
        return client.execute(operation: "DeleteVpcLink", path: "/v2/vpclinks/{vpcLinkId}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Exports a definition of an API in a particular output format and specification.
    public func exportApi(_ input: ExportApiRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ExportApiResponse> {
        return client.execute(operation: "ExportApi", path: "/v2/apis/{apiId}/exports/{specification}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets an Api resource.
    public func getApi(_ input: GetApiRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetApiResponse> {
        return client.execute(operation: "GetApi", path: "/v2/apis/{apiId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets an API mapping.
    public func getApiMapping(_ input: GetApiMappingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetApiMappingResponse> {
        return client.execute(operation: "GetApiMapping", path: "/v2/domainnames/{domainName}/apimappings/{apiMappingId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets API mappings.
    public func getApiMappings(_ input: GetApiMappingsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetApiMappingsResponse> {
        return client.execute(operation: "GetApiMappings", path: "/v2/domainnames/{domainName}/apimappings", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a collection of Api resources.
    public func getApis(_ input: GetApisRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetApisResponse> {
        return client.execute(operation: "GetApis", path: "/v2/apis", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets an Authorizer.
    public func getAuthorizer(_ input: GetAuthorizerRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAuthorizerResponse> {
        return client.execute(operation: "GetAuthorizer", path: "/v2/apis/{apiId}/authorizers/{authorizerId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the Authorizers for an API.
    public func getAuthorizers(_ input: GetAuthorizersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAuthorizersResponse> {
        return client.execute(operation: "GetAuthorizers", path: "/v2/apis/{apiId}/authorizers", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a Deployment.
    public func getDeployment(_ input: GetDeploymentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDeploymentResponse> {
        return client.execute(operation: "GetDeployment", path: "/v2/apis/{apiId}/deployments/{deploymentId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the Deployments for an API.
    public func getDeployments(_ input: GetDeploymentsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDeploymentsResponse> {
        return client.execute(operation: "GetDeployments", path: "/v2/apis/{apiId}/deployments", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a domain name.
    public func getDomainName(_ input: GetDomainNameRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDomainNameResponse> {
        return client.execute(operation: "GetDomainName", path: "/v2/domainnames/{domainName}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the domain names for an AWS account.
    public func getDomainNames(_ input: GetDomainNamesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDomainNamesResponse> {
        return client.execute(operation: "GetDomainNames", path: "/v2/domainnames", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets an Integration.
    public func getIntegration(_ input: GetIntegrationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetIntegrationResult> {
        return client.execute(operation: "GetIntegration", path: "/v2/apis/{apiId}/integrations/{integrationId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets an IntegrationResponses.
    public func getIntegrationResponse(_ input: GetIntegrationResponseRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetIntegrationResponseResponse> {
        return client.execute(operation: "GetIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the IntegrationResponses for an Integration.
    public func getIntegrationResponses(_ input: GetIntegrationResponsesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetIntegrationResponsesResponse> {
        return client.execute(operation: "GetIntegrationResponses", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the Integrations for an API.
    public func getIntegrations(_ input: GetIntegrationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetIntegrationsResponse> {
        return client.execute(operation: "GetIntegrations", path: "/v2/apis/{apiId}/integrations", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a Model.
    public func getModel(_ input: GetModelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetModelResponse> {
        return client.execute(operation: "GetModel", path: "/v2/apis/{apiId}/models/{modelId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a model template.
    public func getModelTemplate(_ input: GetModelTemplateRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetModelTemplateResponse> {
        return client.execute(operation: "GetModelTemplate", path: "/v2/apis/{apiId}/models/{modelId}/template", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the Models for an API.
    public func getModels(_ input: GetModelsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetModelsResponse> {
        return client.execute(operation: "GetModels", path: "/v2/apis/{apiId}/models", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a Route.
    public func getRoute(_ input: GetRouteRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetRouteResult> {
        return client.execute(operation: "GetRoute", path: "/v2/apis/{apiId}/routes/{routeId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a RouteResponse.
    public func getRouteResponse(_ input: GetRouteResponseRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetRouteResponseResponse> {
        return client.execute(operation: "GetRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the RouteResponses for a Route.
    public func getRouteResponses(_ input: GetRouteResponsesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetRouteResponsesResponse> {
        return client.execute(operation: "GetRouteResponses", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the Routes for an API.
    public func getRoutes(_ input: GetRoutesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetRoutesResponse> {
        return client.execute(operation: "GetRoutes", path: "/v2/apis/{apiId}/routes", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a Stage.
    public func getStage(_ input: GetStageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetStageResponse> {
        return client.execute(operation: "GetStage", path: "/v2/apis/{apiId}/stages/{stageName}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the Stages for an API.
    public func getStages(_ input: GetStagesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetStagesResponse> {
        return client.execute(operation: "GetStages", path: "/v2/apis/{apiId}/stages", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a collection of Tag resources.
    public func getTags(_ input: GetTagsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetTagsResponse> {
        return client.execute(operation: "GetTags", path: "/v2/tags/{resource-arn}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a VPC link.
    public func getVpcLink(_ input: GetVpcLinkRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetVpcLinkResponse> {
        return client.execute(operation: "GetVpcLink", path: "/v2/vpclinks/{vpcLinkId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a collection of VPC links.
    public func getVpcLinks(_ input: GetVpcLinksRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetVpcLinksResponse> {
        return client.execute(operation: "GetVpcLinks", path: "/v2/vpclinks", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Imports an API.
    public func importApi(_ input: ImportApiRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ImportApiResponse> {
        return client.execute(operation: "ImportApi", path: "/v2/apis", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Puts an Api resource.
    public func reimportApi(_ input: ReimportApiRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ReimportApiResponse> {
        return client.execute(operation: "ReimportApi", path: "/v2/apis/{apiId}", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new Tag resource to represent a tag.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/v2/tags/{resource-arn}", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a Tag.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return client.execute(operation: "UntagResource", path: "/v2/tags/{resource-arn}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an Api resource.
    public func updateApi(_ input: UpdateApiRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateApiResponse> {
        return client.execute(operation: "UpdateApi", path: "/v2/apis/{apiId}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  The API mapping.
    public func updateApiMapping(_ input: UpdateApiMappingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateApiMappingResponse> {
        return client.execute(operation: "UpdateApiMapping", path: "/v2/domainnames/{domainName}/apimappings/{apiMappingId}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an Authorizer.
    public func updateAuthorizer(_ input: UpdateAuthorizerRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateAuthorizerResponse> {
        return client.execute(operation: "UpdateAuthorizer", path: "/v2/apis/{apiId}/authorizers/{authorizerId}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a Deployment.
    public func updateDeployment(_ input: UpdateDeploymentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateDeploymentResponse> {
        return client.execute(operation: "UpdateDeployment", path: "/v2/apis/{apiId}/deployments/{deploymentId}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a domain name.
    public func updateDomainName(_ input: UpdateDomainNameRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateDomainNameResponse> {
        return client.execute(operation: "UpdateDomainName", path: "/v2/domainnames/{domainName}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an Integration.
    public func updateIntegration(_ input: UpdateIntegrationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateIntegrationResult> {
        return client.execute(operation: "UpdateIntegration", path: "/v2/apis/{apiId}/integrations/{integrationId}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an IntegrationResponses.
    public func updateIntegrationResponse(_ input: UpdateIntegrationResponseRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateIntegrationResponseResponse> {
        return client.execute(operation: "UpdateIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a Model.
    public func updateModel(_ input: UpdateModelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateModelResponse> {
        return client.execute(operation: "UpdateModel", path: "/v2/apis/{apiId}/models/{modelId}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a Route.
    public func updateRoute(_ input: UpdateRouteRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateRouteResult> {
        return client.execute(operation: "UpdateRoute", path: "/v2/apis/{apiId}/routes/{routeId}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a RouteResponse.
    public func updateRouteResponse(_ input: UpdateRouteResponseRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateRouteResponseResponse> {
        return client.execute(operation: "UpdateRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a Stage.
    public func updateStage(_ input: UpdateStageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateStageResponse> {
        return client.execute(operation: "UpdateStage", path: "/v2/apis/{apiId}/stages/{stageName}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a VPC link.
    public func updateVpcLink(_ input: UpdateVpcLinkRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateVpcLinkResponse> {
        return client.execute(operation: "UpdateVpcLink", path: "/v2/vpclinks/{vpcLinkId}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
