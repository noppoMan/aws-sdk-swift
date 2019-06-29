// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**

*/
public struct PersonalizeRuntime {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "personalize-runtime",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-05-22",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [PersonalizeRuntimeErrorType.self]
        )
    }

    ///  Re-ranks a list of recommended items for the given user. The first item in the list is deemed the most likely item to be of interest to the user.  The solution backing the campaign must have been created using a recipe of type PERSONALIZED_RANKING. 
    public func getPersonalizedRanking(_ input: GetPersonalizedRankingRequest) throws -> Future<GetPersonalizedRankingResponse> {
        return try client.send(operation: "GetPersonalizedRanking", path: "/personalize-ranking", httpMethod: "POST", input: input)
    }

    ///  Returns a list of recommended items. The required input depends on the recipe type used to create the solution backing the campaign, as follows:   RELATED_ITEMS - itemId required, userId not used   USER_PERSONALIZATION - itemId optional, userId required    Campaigns that are backed by a solution created using a recipe of type PERSONALIZED_RANKING use the API. 
    public func getRecommendations(_ input: GetRecommendationsRequest) throws -> Future<GetRecommendationsResponse> {
        return try client.send(operation: "GetRecommendations", path: "/recommendations", httpMethod: "POST", input: input)
    }


}