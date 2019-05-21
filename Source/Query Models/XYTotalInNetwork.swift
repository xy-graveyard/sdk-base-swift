//
//  XYTotalInNetwork.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 3/27/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo

final public class XYTotalInNetworkQuery: XYQuery {
    public typealias QueryModel = TotalWitnessesQuery.Data.CountWitness

    public var queryData = XYQueryData<TotalWitnessesQuery, QueryModel>()

    public fileprivate(set) var watcher: GraphQLQueryWatcher<TotalWitnessesQuery>?
    public var listeners: [String: (GraphQLResult<TotalWitnessesQuery.Data>?, Error?) -> Void] = [:]

    public init() {
        self.watcher = XYApolloQueryManager.queryManager?.watch(for: TotalWitnessesQuery(), then: self.processResponse)
        self.queryData.setConvertor { queryData in
            return queryData.data?.countWitnesses?.count != nil ?
            [QueryModel(count: queryData.data?.countWitnesses?.count)] : []
        }
    }
}
