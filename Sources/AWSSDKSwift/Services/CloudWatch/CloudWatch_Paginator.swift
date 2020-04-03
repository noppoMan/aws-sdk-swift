// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension CloudWatch {

    ///  Retrieves the history for the specified alarm. You can filter the results by date range or item type. If an alarm name is not specified, the histories for either all metric alarms or all composite alarms are returned. CloudWatch retains the history of an alarm even if you delete the alarm.
    public func describeAlarmHistoryPaginator(_ input: DescribeAlarmHistoryInput, onPage: @escaping (DescribeAlarmHistoryOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeAlarmHistory, tokenKey: \DescribeAlarmHistoryOutput.nextToken, onPage: onPage)
    }

    ///  Retrieves the specified alarms. You can filter the results by specifying a a prefix for the alarm name, the alarm state, or a prefix for any action.
    public func describeAlarmsPaginator(_ input: DescribeAlarmsInput, onPage: @escaping (DescribeAlarmsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeAlarms, tokenKey: \DescribeAlarmsOutput.nextToken, onPage: onPage)
    }

    ///  Returns a list of all the Contributor Insights rules in your account. All rules in your account are returned with a single operation. For more information about Contributor Insights, see Using Contributor Insights to Analyze High-Cardinality Data.
    public func describeInsightRulesPaginator(_ input: DescribeInsightRulesInput, onPage: @escaping (DescribeInsightRulesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeInsightRules, tokenKey: \DescribeInsightRulesOutput.nextToken, onPage: onPage)
    }

    ///  You can use the GetMetricData API to retrieve as many as 500 different metrics in a single request, with a total of as many as 100,800 data points. You can also optionally perform math expressions on the values of the returned statistics, to create new time series that represent new insights into your data. For example, using Lambda metrics, you could divide the Errors metric by the Invocations metric to get an error rate time series. For more information about metric math expressions, see Metric Math Syntax and Functions in the Amazon CloudWatch User Guide. Calls to the GetMetricData API have a different pricing structure than calls to GetMetricStatistics. For more information about pricing, see Amazon CloudWatch Pricing. Amazon CloudWatch retains metric data as follows:   Data points with a period of less than 60 seconds are available for 3 hours. These data points are high-resolution metrics and are available only for custom metrics that have been defined with a StorageResolution of 1.   Data points with a period of 60 seconds (1-minute) are available for 15 days.   Data points with a period of 300 seconds (5-minute) are available for 63 days.   Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months).   Data points that are initially published with a shorter period are aggregated together for long-term storage. For example, if you collect data using a period of 1 minute, the data remains available for 15 days with 1-minute resolution. After 15 days, this data is still available, but is aggregated and retrievable only with a resolution of 5 minutes. After 63 days, the data is further aggregated and is available with a resolution of 1 hour. If you omit Unit in your request, all data that was collected with any unit is returned, along with the corresponding units that were specified when the data was reported to CloudWatch. If you specify a unit, the operation returns only data data that was collected with that unit specified. If you specify a unit that does not match the data collected, the results of the operation are null. CloudWatch does not perform unit conversions.
    public func getMetricDataPaginator(_ input: GetMetricDataInput, onPage: @escaping (GetMetricDataOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getMetricData, tokenKey: \GetMetricDataOutput.nextToken, onPage: onPage)
    }

    ///  Returns a list of the dashboards for your account. If you include DashboardNamePrefix, only those dashboards with names starting with the prefix are listed. Otherwise, all dashboards in your account are listed.   ListDashboards returns up to 1000 results on one page. If there are more than 1000 dashboards, you can call ListDashboards again and include the value you received for NextToken in the first call, to receive the next 1000 results.
    public func listDashboardsPaginator(_ input: ListDashboardsInput, onPage: @escaping (ListDashboardsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDashboards, tokenKey: \ListDashboardsOutput.nextToken, onPage: onPage)
    }

    ///  List the specified metrics. You can use the returned metrics with GetMetricData or GetMetricStatistics to obtain statistical data. Up to 500 results are returned for any one call. To retrieve additional results, use the returned token with subsequent calls. After you create a metric, allow up to fifteen minutes before the metric appears. Statistics about the metric, however, are available sooner using GetMetricData or GetMetricStatistics.
    public func listMetricsPaginator(_ input: ListMetricsInput, onPage: @escaping (ListMetricsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listMetrics, tokenKey: \ListMetricsOutput.nextToken, onPage: onPage)
    }

}

extension CloudWatch.DescribeAlarmHistoryInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CloudWatch.DescribeAlarmHistoryInput {
        return .init(
            alarmName: self.alarmName, 
            alarmTypes: self.alarmTypes, 
            endDate: self.endDate, 
            historyItemType: self.historyItemType, 
            maxRecords: self.maxRecords, 
            nextToken: token, 
            scanBy: self.scanBy, 
            startDate: self.startDate
        )

    }
}

extension CloudWatch.DescribeAlarmsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CloudWatch.DescribeAlarmsInput {
        return .init(
            actionPrefix: self.actionPrefix, 
            alarmNamePrefix: self.alarmNamePrefix, 
            alarmNames: self.alarmNames, 
            alarmTypes: self.alarmTypes, 
            childrenOfAlarmName: self.childrenOfAlarmName, 
            maxRecords: self.maxRecords, 
            nextToken: token, 
            parentsOfAlarmName: self.parentsOfAlarmName, 
            stateValue: self.stateValue
        )

    }
}

extension CloudWatch.DescribeInsightRulesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CloudWatch.DescribeInsightRulesInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension CloudWatch.GetMetricDataInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CloudWatch.GetMetricDataInput {
        return .init(
            endTime: self.endTime, 
            maxDatapoints: self.maxDatapoints, 
            metricDataQueries: self.metricDataQueries, 
            nextToken: token, 
            scanBy: self.scanBy, 
            startTime: self.startTime
        )

    }
}

extension CloudWatch.ListDashboardsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CloudWatch.ListDashboardsInput {
        return .init(
            dashboardNamePrefix: self.dashboardNamePrefix, 
            nextToken: token
        )

    }
}

extension CloudWatch.ListMetricsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CloudWatch.ListMetricsInput {
        return .init(
            dimensions: self.dimensions, 
            metricName: self.metricName, 
            namespace: self.namespace, 
            nextToken: token
        )

    }
}


