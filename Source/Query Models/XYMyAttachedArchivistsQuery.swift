//
//  XYMyAttachedArchivistsQuery.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 3/18/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo

final public class XYMyAttachedArchivistsQuery: XYQuery {
    public typealias QueryModel = MyAttachedArchivistsQuery.Data.MyAttachedArchivist

    public var queryData = XYQueryData<MyAttachedArchivistsQuery, QueryModel>()

    public fileprivate(set) var watcher: GraphQLQueryWatcher<MyAttachedArchivistsQuery>?
    public var listeners: [String: (GraphQLResult<MyAttachedArchivistsQuery.Data>?, Error?) -> Void] = [:]

    public init() {
        self.watcher = XYApolloQueryManager.queryManager?.watch(for: MyAttachedArchivistsQuery(), then: self.processResponse)
        self.queryData.setConvertor { queryData in
            return queryData.data?.myAttachedArchivists as? [QueryModel]
        }
    }

}

public extension XYMyAttachedArchivistsQuery {

    func setDefault(for id: String, with alteration: @escaping (inout QueryType.Data, GraphQLResult<SetDefaultArchivistMutation.Data>?) -> Void, complete: @escaping CommitResult) {
        let mutation = SetDefaultArchivistMutation(defaultArchivistId: id)
        self.mutateAndAlterCache(for: mutation, query: MyAttachedArchivistsQuery(), with: alteration, callback: complete)
    }

    func attach(ownerId: String, multiaddr: String? = nil, dns: String? = nil, ip: String? = nil, port: Int? = nil, complete: @escaping CommitResultWithId) {
        guard let dns = dns, let port = port else {
            // TODO error
            complete(nil, nil)
            return
        }

        var newId: String?

        let mutation = AttachToArchivistClientMutation(multiaddr: nil, dns: dns, ip: nil, port: port)
        self.mutateAndAlterCache(for: mutation, query: MyAttachedArchivistsQuery(), with: { data, response in
            let update = MyAttachedArchivistsQuery.Data.MyAttachedArchivist(
                id: response?.data?.attachToArchivistClient?.id,
                name: nil,
                owner: ownerId,
                photoUrl: nil,
                dns: dns,
                publicKey: nil,
                multiaddr: nil,
                port: port,
                ip: nil)

            newId = response?.data?.attachToArchivistClient?.id

            data.myAttachedArchivists?.append(update)

        }, callback: { error in
            complete(newId, error)
        })
    }

    func detach(for id: String, complete: @escaping CommitResult) {
        let mutation = DetachFromArchivistClientMutation(id: id)
        self.mutateAndAlterCache(for: mutation, query: MyAttachedArchivistsQuery(), with: { data, _ in
            data.myAttachedArchivists?.removeAll(where: { $0?.id == id })
        }, callback: { error in
            complete(error)
        })
    }

}
