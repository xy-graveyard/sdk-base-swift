//
//  XYMyUserInfoQuery.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 3/18/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo

final public class XYMyUserInfoQuery: XYQuery {
    public typealias QueryModel = QueryType.Data.MyUserInfo
    public typealias QueryType = MyUserInfoQuery

    public var queryData = XYQueryData<QueryType, QueryModel>()

    fileprivate var newToken: String?

    public fileprivate(set) var watcher: GraphQLQueryWatcher<QueryType>?
    public var listeners: [String: (GraphQLResult<QueryType.Data>?, Error?) -> Void] = [:]

    public init() {
        self.watcher = XYApolloQueryManager.queryManager?.watch(for: QueryType(), then: self.processResponse)
        self.queryData.setConvertor { queryData in
            return [queryData.data?.myUserInfo] as? [QueryModel]
        }
    }
}

public extension XYMyUserInfoQuery {

    func getUser() -> (model: QueryModel?, error: Error?) {
        let result = XYApolloQueryManager.queryManager?.fetch(for: QueryType()).execute()
        if let data = result?.data {
            return (data.data?.myUserInfo, nil)
        }

        return (nil, result?.error)
    }

    func updateUser(displayName: String? = nil, photoURL: String? = nil, publicKey: String? = nil, isAnonymous: Bool? = nil, defaultArchivistId: String? = nil, complete: @escaping CommitResult) {
        let mutation = UpdateMyUserInfoMutation(displayName: displayName, photoURL: photoURL, publicKey: publicKey, isAnonymous: isAnonymous, defaultArchivistId: defaultArchivistId)
        self.mutateAndAlterCache(for: mutation, query: QueryType(), with: { data, _ in
            data.myUserInfo?.displayName = displayName
            data.myUserInfo?.photoUrl = photoURL
            data.myUserInfo?.publicKey = publicKey
            data.myUserInfo?.isAnonymous = isAnonymous
            data.myUserInfo?.defaultArchivistId = defaultArchivistId
        }, callback: complete)
    }

}
