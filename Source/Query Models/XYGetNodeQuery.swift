//
//  XYGetNodeQuery.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 3/29/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo

final public class XYGetNodeQuery: XYQuery {
    public typealias QueryModel = GetNodeQuery.Data.Node.LastGp

    public var queryData = XYQueryData<GetNodeQuery, QueryModel>()

    public fileprivate(set) var watcher: GraphQLQueryWatcher<GetNodeQuery>?
    public var listeners: [String : (GraphQLResult<GetNodeQuery.Data>?, Error?) -> ()] = [:]

    public init() {
        self.watcher = XYApolloQueryManager.queryManager?.watch(for: GetNodeQuery(), then: self.processResponse)
        self.queryData.setConvertor { queryData in
            guard let data = queryData.data?.node?.lastGps else { return [] }
            return [QueryModel(latitude: data.latitude, longitude: data.longitude)]
        }
    }
}
