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

    public let queryManager: XYQueryManager
    public var watcher: GraphQLQueryWatcher<GetNodeQuery>?
    public var listeners: [String : (GraphQLResult<GetNodeQuery.Data>?, Error?) -> ()] = [:]

    public init(with authToken: String) {
        self.queryManager = XYApolloQueryManager.auth(token: authToken)
        self.watcher = self.queryManager.watch(for: GetNodeQuery(), then: self.processResponse)
        self.queryData.setConvertor { queryData in
            guard let data = queryData.data?.node?.lastGps else { return [] }
            return [QueryModel(latitude: data.latitude, longitude: data.longitude)]
        }
    }
}
