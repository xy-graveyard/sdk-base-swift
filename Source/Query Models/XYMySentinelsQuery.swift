//
//  XYMyDevicesQuery.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 3/18/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo

final public class XYMySentinelsQuery: XYQuery {
    public typealias QueryModel = MyDevicesQuery.Data.MySentinel.Item

    public typealias LastSentinelGps = MyDevicesQuery.Data.MySentinel.Item.LastGp

    public var queryData = XYQueryData<MyDevicesQuery, QueryModel>()

    public fileprivate(set) var watcher: GraphQLQueryWatcher<MyDevicesQuery>?
    public var listeners: [String: (GraphQLResult<MyDevicesQuery.Data>?, Error?) -> Void] = [:]

    public init() {
        self.watcher = XYApolloQueryManager.queryManager?.watch(for: MyDevicesQuery(), then: self.processResponse)
        self.queryData.setConvertor { queryData in
            return queryData.data?.mySentinels?.items as? [QueryModel]
        }
    }

}

public extension XYMySentinelsQuery {

    func addSentinel(id: String, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil, complete: @escaping CommitResult) {
        let mutation = AddSentinelMutation(id: id, name: name, photoUrl: photoUrl, publicKey: publicKey, uuid: uuid, major: major, minor: minor)
        self.mutateAndAlterCache(for: mutation, query: MyDevicesQuery(), with: { data, _ in
            let update = MyDevicesQuery.Data.MySentinel.Item(id: id, name: name, photoUrl: photoUrl, publicKey: publicKey, uuid: uuid, major: major, minor: minor)
            data.mySentinels?.items?.append(update)
        }, callback: complete)
    }

    func updateSentinel(id: String, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil, complete: @escaping CommitResult) {
        let mutation = UpdateSentinelMutation(id: id, name: name, photoUrl: photoUrl, publicKey: publicKey, uuid: uuid, major: major, minor: minor)
        self.mutateAndAlterCache(for: mutation, query: MyDevicesQuery(), with: { data, response in
            // Grab the last GPS from the response to re-populate the cache properly
            let gps = LastSentinelGps(latitude: response?.data?.updateSentinel?.lastGps?.latitude, longitude: response?.data?.updateSentinel?.lastGps?.longitude)
            let update = MyDevicesQuery.Data.MySentinel.Item(id: id, name: name, photoUrl: photoUrl, publicKey: publicKey, uuid: uuid, major: major, minor: minor, lastGps: gps)
            if let updateIndex = data.mySentinels?.items?.index(where: { $0?.id == id }) {
                data.mySentinels?.items?[updateIndex] = update
            }
        }, callback: complete)
    }

    func deleteSentinel(id: String, complete: @escaping CommitResult) {
        let mutation = DeleteSentinelMutation(id: id)
        self.mutateAndAlterCache(for: mutation, query: MyDevicesQuery(), with: { data, _ in
            data.mySentinels?.items?.removeAll(where: { $0?.id == id })
        }, callback: complete)
    }

    func detachSentinel(id: String, complete: @escaping CommitResult) {
        let mutation = DetachFromSentinelMutation(id: id)
        self.mutateAndAlterCache(for: mutation, query: MyDevicesQuery(), with: { data, _ in
            data.mySentinels?.items?.removeAll(where: { $0?.id == id })
        }, callback: complete)
    }

}
