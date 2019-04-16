//
//  XYMyBridgesQuery.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 3/20/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo

final public class XYMyBridgesQuery: XYQuery {
    public typealias QueryModel = MyDevicesQuery.Data.MyBridge.Item

    public var queryData = XYQueryData<MyDevicesQuery, QueryModel>()

    public let queryManager: XYQueryManager
    public var watcher: GraphQLQueryWatcher<MyDevicesQuery>?
    public var listeners: [String : (GraphQLResult<MyDevicesQuery.Data>?, Error?) -> ()] = [:]

    public init(with authToken: String) {
        self.queryManager = XYApolloQueryManager.auth(token: authToken)
        self.watcher = self.queryManager.watch(for: MyDevicesQuery(), then: self.processResponse)
        self.queryData.setConvertor { queryData in
            return queryData.data?.myBridges?.items as? [QueryModel]
        }
    }
}

public extension XYMyBridgesQuery {

    func addBridge(id: String, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil, complete: @escaping CommitResult) {
        let mutation = AddBridgeMutation(id: id, name: name, photoUrl: photoUrl, publicKey: publicKey, uuid: uuid, major: major, minor: minor)
        self.mutateAndAlterCache(for: mutation, query: MyDevicesQuery(), with: { data, response in
            let update = MyDevicesQuery.Data.MyBridge.Item(id: id, name: name, photoUrl: photoUrl, publicKey: publicKey, uuid: uuid, major: major, minor: minor)
            data.myBridges?.items?.append(update)
        }, callback: complete)
    }

    func updateBridge(id: String, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil, complete: @escaping CommitResult) {
        let mutation = UpdateBridgeMutation(id: id, name: name, photoUrl: photoUrl, publicKey: publicKey, uuid: uuid, major: major, minor: minor)
        self.mutateAndAlterCache(for: mutation, query: MyDevicesQuery(), with: { data, response in
            let update = MyDevicesQuery.Data.MyBridge.Item(id: id, name: name, photoUrl: photoUrl, publicKey: publicKey, uuid: uuid, major: major, minor: minor)
            if let updateIndex = data.myBridges?.items?.index(where: { $0?.id == id }) {
                data.myBridges?.items?[updateIndex] = update
            }
        }, callback: complete)
    }

    func deleteBridge(id: String, complete: @escaping CommitResult) {
        let mutation = DeleteSentinelMutation(id: id)
        self.mutateAndAlterCache(for: mutation, query: MyDevicesQuery(), with: { data, response in
            data.mySentinels?.items?.removeAll(where: { $0?.id == id })
        }, callback: complete)
    }

}
