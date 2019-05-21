//
//  XYGetNodeQuery.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 3/29/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo

final public class XYTotalNodesQuery: XYQuery {
    public typealias QueryModel = TotalNodeCountQuery.Data.Node.Pagination

    public var queryData = XYQueryData<TotalNodeCountQuery, QueryModel>()

    public fileprivate(set) var watcher: GraphQLQueryWatcher<TotalNodeCountQuery>?
    public var listeners: [String: (GraphQLResult<TotalNodeCountQuery.Data>?, Error?) -> Void] = [:]

    public init() {
        self.watcher = XYApolloQueryManager.queryManager?.watch(for: TotalNodeCountQuery(), then: self.processResponse)
        self.queryData.setConvertor { queryData in
            return queryData.data?.nodes?.pagination?.count != nil ?
                [QueryModel(count: (queryData.data?.nodes?.pagination?.count)!)] : []
        }
    }
}
