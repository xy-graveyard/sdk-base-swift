//
//  XYQuery.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 3/18/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo
import Promises

public typealias CommitResult = (Error?) -> Void
public typealias CommitResultWithId = (String?, Error?) -> Void

public enum XYQueryError: Error {
    case timedOut
    case validationFailure
    case error(Error)

    static func fromPromiseError(_ error: Error) -> XYQueryError {
        guard let promiseError = error as? PromiseError else { return .error(error) }
        switch promiseError {
        case .timedOut: return .timedOut
        case .validationFailure: return .validationFailure
        }
    }

}

public protocol XYQuery: class {
    associatedtype QueryType: GraphQLQuery
    associatedtype QueryModel: GraphQLSelectionSet

    var queryData: XYQueryData<QueryType, QueryModel> { get set }

    var queryManager: XYQueryManager { get }
    var watcher: GraphQLQueryWatcher<QueryType>? { get }
    var listeners: [String: (_ result: GraphQLResult<QueryType.Data>?, _ error: Error?) -> ()] { get set }

    init(with authToken: String)

    func listen(for key: String, listener: @escaping (_ result: GraphQLResult<QueryType.Data>?, _ error: Error?) -> ())
    func processResponse(_ result: GraphQLResult<QueryType.Data>?, error: Error?)
}

public extension XYQuery {
    // Enables listening for this query
    func listen(for key: String, listener: @escaping (_ result: GraphQLResult<QueryType.Data>?, _ error: Error?) -> ()) {
        guard self.listeners[key] == nil else { return }
        self.listeners[key] = listener
    }

    // Processes the response for a query request, notifying the listeners and setting the response data
    func processResponse(_ result: GraphQLResult<QueryType.Data>?, error: Error?) {
        self.queryData.setData(result)
        self.listeners.forEach { $0.value(result, error) }
    }

    // Preloads the data for any query that supports watching, allowing the UI to be ready when the user loads the app
    // Will timeout after 15 seconds
    func preload() -> Promises.Promise<Bool> {
        let preloadKey = "XYQuery.Preload"
        return Promises.Promise<Bool>(on: .global()) { fulfill, reject in
            self.listen(for: preloadKey) { _, _ in
                self.listeners[preloadKey] = nil
                fulfill(true)
            }
        }.timeout(15)
    }
}

internal extension XYQuery {

    // Run a mutation and then refresh the cache for the associate QueryType which will trigger any watch() queries in the view models
    func mutateAndAlterCache<Mutation: GraphQLMutation>(for mutation: Mutation, query: QueryType, with alteration: @escaping (inout QueryType.Data, GraphQLResult<Mutation.Data>?) -> Void, callback: @escaping CommitResult) {
        DispatchQueue.global().async {
            let result = self.queryManager.mutate(for: mutation).execute()
            guard result.error == nil else {
                callback(result.error)
                return
            }

            // Update the cache with the new value, sending back the result of this query if needed for the cache alteration
            _ = self.queryManager.cache.withinReadWriteTransaction { transaction in
                try transaction.update(query: query) { (data: inout QueryType.Data) in
                    alteration(&data, result.data)
                }

                // Re-read from the cache to trigger the watch (sigh)
                _ = try transaction.read(query: query)

                callback(nil)
            }
        }
    }

}
