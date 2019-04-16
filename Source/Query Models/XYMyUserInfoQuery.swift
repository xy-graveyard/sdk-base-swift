//
//  XYMyUserInfoQuery.swift
//  XyCoreiOS
//
//  Created by Darren Sutherland on 3/18/19.
//  Copyright © 2019 XYO Network. All rights reserved.
//

import Apollo

final public class XYMyUserInfoQuery: XYQuery {
    public typealias QueryModel = MyUserInfoQuery.Data.MyUserInfo

    public var queryData = XYQueryData<MyUserInfoQuery, QueryModel>()

    public let queryManager: XYQueryManager
    public var watcher: GraphQLQueryWatcher<MyUserInfoQuery>?
    public var listeners: [String : (GraphQLResult<MyUserInfoQuery.Data>?, Error?) -> ()] = [:]

    public init(with authToken: String) {
        self.queryManager = XYApolloQueryManager.auth(token: authToken)
        self.watcher = self.queryManager.watch(for: MyUserInfoQuery(), then: self.processResponse)
        self.queryData.setConvertor { queryData in
            return [queryData.data?.myUserInfo] as? [QueryModel]
        }
    }
}

public extension XYMyUserInfoQuery {

    func updateUser(displayName: String? = nil, photoURL: String? = nil, publicKey: String? = nil, isAnonymous: Bool? = nil, defaultArchivistId: String? = nil, complete: @escaping CommitResult) {
        let mutation = UpdateMyUserInfoMutation(displayName: displayName, photoURL: photoURL, publicKey: publicKey, isAnonymous: isAnonymous, defaultArchivistId: defaultArchivistId)
        self.mutateAndAlterCache(for: mutation, query: MyUserInfoQuery(), with: { data, response in
            data.myUserInfo?.displayName = displayName
            data.myUserInfo?.photoUrl = photoURL
            data.myUserInfo?.publicKey = publicKey
            data.myUserInfo?.isAnonymous = isAnonymous
            data.myUserInfo?.defaultArchivistId = defaultArchivistId
        }, callback: complete)
    }

}
