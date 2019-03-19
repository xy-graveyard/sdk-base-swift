//
//  XYTotalArchivistsQuery.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 3/18/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo

final public class XYTotalArchivistsQuery: XYQuery {
    public typealias QueryModel = TotalArchivistsQuery.Data.Archivist

    public var queryData = XYQueryData<TotalArchivistsQuery, QueryModel>()

    public let queryManager: XYQueryManager
    public var watcher: GraphQLQueryWatcher<TotalArchivistsQuery>?
    public var listeners: [String : (GraphQLResult<TotalArchivistsQuery.Data>?, Error?) -> ()] = [:]

    public init(with authToken: String) {
        self.queryManager = XYApolloQueryManager.auth(token: authToken)
        self.watcher = self.queryManager.watch(for: TotalArchivistsQuery(), then: self.processResponse)
    }
}
