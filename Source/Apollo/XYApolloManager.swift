//
//  XYApolloManager.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 2/4/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo
import Foundation

public class XYApolloManager {

    fileprivate static let endpointUrl = "https://cmsltk3yhg.execute-api.us-east-1.amazonaws.com/dev/graphql"

    fileprivate let queue: DispatchQueue

    public let client: ApolloClient

    public init?(queue: DispatchQueue = DispatchQueue.main) {
        guard let validUrl = URL(string: XYApolloManager.endpointUrl) else { return nil }
        self.client = ApolloClient(url: validUrl)
        self.queue = queue
    }

    public func fetch<Query: GraphQLQuery>(for query: Query, then callback: OperationResultHandler<Query>?) {
        self.client.fetch(query: query, resultHandler: callback)
    }

}
