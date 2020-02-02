// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension CostandUsageReportService {

    ///  Lists the AWS Cost and Usage reports available to this account.
    public func describeReportDefinitionsPaginator(_ input: DescribeReportDefinitionsRequest, onPage: @escaping (DescribeReportDefinitionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeReportDefinitions, tokenKey: \DescribeReportDefinitionsResponse.nextToken, onPage: onPage)
    }

}

extension CostandUsageReportService.DescribeReportDefinitionsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CostandUsageReportService.DescribeReportDefinitionsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}


