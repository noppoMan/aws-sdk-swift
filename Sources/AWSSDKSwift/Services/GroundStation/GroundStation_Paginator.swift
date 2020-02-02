// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension GroundStation {

    ///  Returns a list of Config objects.
    public func listConfigsPaginator(_ input: ListConfigsRequest, onPage: @escaping (ListConfigsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listConfigs, tokenKey: \ListConfigsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of contacts.
    ///           If statusList contains AVAILABLE, the request must include
    ///        groundstation, missionprofileArn, and satelliteArn.
    ///        
    public func listContactsPaginator(_ input: ListContactsRequest, onPage: @escaping (ListContactsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listContacts, tokenKey: \ListContactsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of DataflowEndpoint groups.
    public func listDataflowEndpointGroupsPaginator(_ input: ListDataflowEndpointGroupsRequest, onPage: @escaping (ListDataflowEndpointGroupsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDataflowEndpointGroups, tokenKey: \ListDataflowEndpointGroupsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of ground stations. 
    public func listGroundStationsPaginator(_ input: ListGroundStationsRequest, onPage: @escaping (ListGroundStationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGroundStations, tokenKey: \ListGroundStationsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of mission profiles.
    public func listMissionProfilesPaginator(_ input: ListMissionProfilesRequest, onPage: @escaping (ListMissionProfilesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listMissionProfiles, tokenKey: \ListMissionProfilesResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of satellites.
    public func listSatellitesPaginator(_ input: ListSatellitesRequest, onPage: @escaping (ListSatellitesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSatellites, tokenKey: \ListSatellitesResponse.nextToken, onPage: onPage)
    }

}

extension GroundStation.ListConfigsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListConfigsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension GroundStation.ListContactsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListContactsRequest {
        return .init(
            endTime: self.endTime, 
            groundStation: self.groundStation, 
            maxResults: self.maxResults, 
            missionProfileArn: self.missionProfileArn, 
            nextToken: token, 
            satelliteArn: self.satelliteArn, 
            startTime: self.startTime, 
            statusList: self.statusList
        )

    }
}

extension GroundStation.ListDataflowEndpointGroupsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListDataflowEndpointGroupsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension GroundStation.ListGroundStationsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListGroundStationsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension GroundStation.ListMissionProfilesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListMissionProfilesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension GroundStation.ListSatellitesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListSatellitesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}


