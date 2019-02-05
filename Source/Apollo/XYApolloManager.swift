//
//  XYApolloManager.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 2/4/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo
import Foundation

public protocol XYQueryManager: class {
    var cache: ApolloStore { get }

    func fetch<Query: GraphQLQuery>(for query: Query, then callback: OperationResultHandler<Query>?)
    func watch<Query: GraphQLQuery>(for query: Query, then callback: @escaping OperationResultHandler<Query>) -> GraphQLQueryWatcher<Query>
    func mutate<Mutation: GraphQLMutation>(for mutation: Mutation, then callback: @escaping OperationResultHandler<Mutation>)
}

public class XYApolloQueryManager {

    private let client: ApolloClient
    private let queue: DispatchQueue

    fileprivate static let store = ApolloStore(cache: InMemoryNormalizedCache())

    private static let xyAuthHeader = "X-Auth-Token"
    private static let endpointUrl = "https://cmsltk3yhg.execute-api.us-east-1.amazonaws.com/dev/graphql"

    private static var serverUrl: URL = {
        guard let url = URL(string: endpointUrl) else {
            fatalError("Invalid GraphQL connection URL")
        }
        return url
    }()

    fileprivate init(client: ApolloClient, queue: DispatchQueue = .main) {
        self.client = client
        self.queue = queue
    }
}

public extension XYApolloQueryManager {

    public class func nonAuth(on queue: DispatchQueue = .main) -> XYApolloQueryManager {
        let client = ApolloClient(networkTransport: HTTPNetworkTransport(url: serverUrl), store: store)
        client.cacheKeyForObject = { $0["id"] }
        return XYApolloQueryManager(client: client, queue: queue)
    }

    public class func auth(token: String, on queue: DispatchQueue = .main) -> XYApolloQueryManager {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = [xyAuthHeader: token]

        let client = ApolloClient(networkTransport: HTTPNetworkTransport(url: serverUrl, configuration: configuration), store: store)
        client.cacheKeyForObject = { $0["id"] }
        return XYApolloQueryManager(client: client, queue: queue)
    }

}

extension XYApolloQueryManager: XYQueryManager {

    public var cache: ApolloStore {
        return XYApolloQueryManager.store
    }

    public func fetch<Query: GraphQLQuery>(for query: Query, then callback: OperationResultHandler<Query>?) {
        self.client.fetch(query: query, queue: self.queue, resultHandler: callback)
    }

    public func watch<Query: GraphQLQuery>(for query: Query, then callback: @escaping OperationResultHandler<Query>) -> GraphQLQueryWatcher<Query> {
        return self.client.watch(query: query, queue: self.queue, resultHandler: callback)
    }

    public func mutate<Mutation: GraphQLMutation>(for mutation: Mutation, then callback: @escaping OperationResultHandler<Mutation>) {
        self.client.perform(mutation: mutation, queue: self.queue, resultHandler: callback)
    }

}
