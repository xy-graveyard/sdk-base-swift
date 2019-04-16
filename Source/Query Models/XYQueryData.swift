//
//  XYQueryData.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 3/19/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo

/// A container for the results of a query, encapsulates the Apollo auto-gen models in one interface
public struct XYQueryData<QueryType: GraphQLQuery, QueryModel: GraphQLSelectionSet> {
    typealias ModelConvertor = (GraphQLResult<QueryType.Data>) -> [QueryModel]?

    private var modelConvertor: ModelConvertor?

    private var queryData: GraphQLResult<QueryType.Data>?
    public fileprivate(set) var queryModels: [QueryModel] = []

    mutating func setConvertor(_ convertor: @escaping ModelConvertor) {
        self.modelConvertor = convertor
    }

    mutating func setData(_ data: GraphQLResult<QueryType.Data>?) {
        self.queryData = data
        if let queryData = self.queryData {
            self.queryModels = self.modelConvertor?(queryData) ?? []
        }
    }
}
