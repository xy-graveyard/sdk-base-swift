//
//  XYTotalInNetwork.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 3/27/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo

final public class XYTotalInNetworkQuery: XYQuery {
    public typealias QueryModel = GetTotalInNetworkQuery.Data.Block.Pagination

    public var queryData = XYQueryData<GetTotalInNetworkQuery, QueryModel>()

    public fileprivate(set) var watcher: GraphQLQueryWatcher<GetTotalInNetworkQuery>?
    public var listeners: [String : (GraphQLResult<GetTotalInNetworkQuery.Data>?, Error?) -> ()] = [:]

    public init() {
        self.watcher = XYApolloQueryManager.queryManager?.watch(for: GetTotalInNetworkQuery(), then: self.processResponse)
        self.queryData.setConvertor { queryData in
            return queryData.data?.blocks?.pagination?.count != nil ?
            [QueryModel(count: (queryData.data?.blocks?.pagination?.count)!)] : []
        }
    }
}
