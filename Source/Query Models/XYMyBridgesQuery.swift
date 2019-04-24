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
    public typealias QueryType = MyDevicesQuery

    public typealias LastBridgeGps = QueryType.Data.MyBridge.Item.LastGp

    public var queryData = XYQueryData<QueryType, QueryModel>()

    public fileprivate(set) var watcher: GraphQLQueryWatcher<QueryType>?
    public var listeners: [String : (GraphQLResult<QueryType.Data>?, Error?) -> ()] = [:]

    public init() {
        self.watcher = XYApolloQueryManager.queryManager?.watch(for: QueryType(), then: self.processResponse)
        self.queryData.setConvertor { queryData in
            return queryData.data?.myBridges?.items as? [QueryModel]
        }
    }
}

public extension XYMyBridgesQuery {

    func getBridges() -> (models: [QueryModel], error: Error?) {
        let result = XYApolloQueryManager.queryManager?.fetch(for: QueryType()).execute()
        if let data = result?.data {
            return (data.data?.myBridges?.items?.compactMap { $0 } ?? [], nil)
        }

        return ([], result?.error)
    }

    func addBridge(id: String, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil, complete: @escaping CommitResult) {
        let mutation = AddBridgeMutation(id: id, name: name, photoUrl: photoUrl, publicKey: publicKey, uuid: uuid, major: major, minor: minor)
        self.mutateAndAlterCache(for: mutation, query: QueryType(), with: { data, response in
            let update = QueryModel(id: id, name: name, photoUrl: photoUrl, publicKey: publicKey, uuid: uuid, major: major, minor: minor)
            data.myBridges?.items?.append(update)
        }, callback: complete)
    }

    func updateBridge(id: String, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil, complete: @escaping CommitResult) {
        let mutation = UpdateBridgeMutation(id: id, name: name, photoUrl: photoUrl, publicKey: publicKey, uuid: uuid, major: major, minor: minor)
        self.mutateAndAlterCache(for: mutation, query: QueryType(), with: { data, response in
            let gps = LastBridgeGps(latitude: response?.data?.updateBridge?.lastGps?.latitude, longitude: response?.data?.updateBridge?.lastGps?.longitude)
            let update = QueryModel(id: id, name: name, photoUrl: photoUrl, publicKey: publicKey, uuid: uuid, major: major, minor: minor, lastGps: gps)
            if let updateIndex = data.myBridges?.items?.index(where: { $0?.id == id }) {
                data.myBridges?.items?[updateIndex] = update
            }
        }, callback: complete)
    }

    func deleteBridge(id: String, complete: @escaping CommitResult) {
        let mutation = DeleteBridgeMutation(id: id)
        self.mutateAndAlterCache(for: mutation, query: MyDevicesQuery(), with: { data, response in
            data.myBridges?.items?.removeAll(where: { $0?.id == id })
        }, callback: complete)
    }

    func detachBridge(id: String, complete: @escaping CommitResult) {
        let mutation = DetachFromBridgeMutation(id: id)
        self.mutateAndAlterCache(for: mutation, query: MyDevicesQuery(), with: { data, response in
            data.myBridges?.items?.removeAll(where: { $0?.id == id })
        }, callback: complete)
    }

}
