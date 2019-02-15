//  This file was automatically generated and should not be edited.

import Apollo

public final class TotalXyoTokensQuery: GraphQLQuery {
  public let operationDefinition =
    "query TotalXyoTokens($ethAddress: String) {\n  totalXyoTokens(ethAddress: $ethAddress)\n  historicalXyoTokensEarned(ethAddress: $ethAddress, from: 1548115722712)\n}"

  public var ethAddress: String?

  public init(ethAddress: String? = nil) {
    self.ethAddress = ethAddress
  }

  public var variables: GraphQLMap? {
    return ["ethAddress": ethAddress]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("totalXyoTokens", arguments: ["ethAddress": GraphQLVariable("ethAddress")], type: .scalar(Double.self)),
      GraphQLField("historicalXyoTokensEarned", arguments: ["ethAddress": GraphQLVariable("ethAddress"), "from": 1548115722712], type: .list(.list(.scalar(Double.self)))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(totalXyoTokens: Double? = nil, historicalXyoTokensEarned: [[Double?]?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "totalXyoTokens": totalXyoTokens, "historicalXyoTokensEarned": historicalXyoTokensEarned])
    }

    public var totalXyoTokens: Double? {
      get {
        return resultMap["totalXyoTokens"] as? Double
      }
      set {
        resultMap.updateValue(newValue, forKey: "totalXyoTokens")
      }
    }

    public var historicalXyoTokensEarned: [[Double?]?]? {
      get {
        return resultMap["historicalXyoTokensEarned"] as? [[Double?]?]
      }
      set {
        resultMap.updateValue(newValue, forKey: "historicalXyoTokensEarned")
      }
    }
  }
}

public final class MyDevicesQuery: GraphQLQuery {
  public let operationDefinition =
    "query MyDevices {\n  mySentinels {\n    __typename\n    meta {\n      __typename\n      totalCount\n    }\n    items {\n      __typename\n      name\n      photoUrl\n      publicKey\n    }\n  }\n  myBridges {\n    __typename\n    meta {\n      __typename\n      totalCount\n    }\n    items {\n      __typename\n      name\n      photoUrl\n      publicKey\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("mySentinels", type: .object(MySentinel.selections)),
      GraphQLField("myBridges", type: .object(MyBridge.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(mySentinels: MySentinel? = nil, myBridges: MyBridge? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "mySentinels": mySentinels.flatMap { (value: MySentinel) -> ResultMap in value.resultMap }, "myBridges": myBridges.flatMap { (value: MyBridge) -> ResultMap in value.resultMap }])
    }

    public var mySentinels: MySentinel? {
      get {
        return (resultMap["mySentinels"] as? ResultMap).flatMap { MySentinel(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "mySentinels")
      }
    }

    public var myBridges: MyBridge? {
      get {
        return (resultMap["myBridges"] as? ResultMap).flatMap { MyBridge(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "myBridges")
      }
    }

    public struct MySentinel: GraphQLSelectionSet {
      public static let possibleTypes = ["SentinelPage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("meta", type: .object(Metum.selections)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(meta: Metum? = nil, items: [Item?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "SentinelPage", "meta": meta.flatMap { (value: Metum) -> ResultMap in value.resultMap }, "items": items.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var meta: Metum? {
        get {
          return (resultMap["meta"] as? ResultMap).flatMap { Metum(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "meta")
        }
      }

      public var items: [Item?]? {
        get {
          return (resultMap["items"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Item?] in value.map { (value: ResultMap?) -> Item? in value.flatMap { (value: ResultMap) -> Item in Item(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }, forKey: "items")
        }
      }

      public struct Metum: GraphQLSelectionSet {
        public static let possibleTypes = ["PageMeta"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("totalCount", type: .scalar(Double.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(totalCount: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "PageMeta", "totalCount": totalCount])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var totalCount: Double? {
          get {
            return resultMap["totalCount"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalCount")
          }
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Sentinel"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("photoUrl", type: .scalar(String.self)),
          GraphQLField("publicKey", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Sentinel", "name": name, "photoUrl": photoUrl, "publicKey": publicKey])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var photoUrl: String? {
          get {
            return resultMap["photoUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "photoUrl")
          }
        }

        public var publicKey: String? {
          get {
            return resultMap["publicKey"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "publicKey")
          }
        }
      }
    }

    public struct MyBridge: GraphQLSelectionSet {
      public static let possibleTypes = ["BridgePage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("meta", type: .object(Metum.selections)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(meta: Metum? = nil, items: [Item?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "BridgePage", "meta": meta.flatMap { (value: Metum) -> ResultMap in value.resultMap }, "items": items.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var meta: Metum? {
        get {
          return (resultMap["meta"] as? ResultMap).flatMap { Metum(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "meta")
        }
      }

      public var items: [Item?]? {
        get {
          return (resultMap["items"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Item?] in value.map { (value: ResultMap?) -> Item? in value.flatMap { (value: ResultMap) -> Item in Item(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }, forKey: "items")
        }
      }

      public struct Metum: GraphQLSelectionSet {
        public static let possibleTypes = ["PageMeta"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("totalCount", type: .scalar(Double.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(totalCount: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "PageMeta", "totalCount": totalCount])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var totalCount: Double? {
          get {
            return resultMap["totalCount"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalCount")
          }
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Bridge"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("photoUrl", type: .scalar(String.self)),
          GraphQLField("publicKey", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Bridge", "name": name, "photoUrl": photoUrl, "publicKey": publicKey])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var photoUrl: String? {
          get {
            return resultMap["photoUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "photoUrl")
          }
        }

        public var publicKey: String? {
          get {
            return resultMap["publicKey"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "publicKey")
          }
        }
      }
    }
  }
}

public final class AddSentinelMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation AddSentinel($publicKey: String!, $name: String, $photoUrl: String) {\n  addSentinel(sentinel: {publicKey: $publicKey, name: $name, photoUrl: $photoUrl})\n}"

  public var publicKey: String
  public var name: String?
  public var photoUrl: String?

  public init(publicKey: String, name: String? = nil, photoUrl: String? = nil) {
    self.publicKey = publicKey
    self.name = name
    self.photoUrl = photoUrl
  }

  public var variables: GraphQLMap? {
    return ["publicKey": publicKey, "name": name, "photoUrl": photoUrl]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addSentinel", arguments: ["sentinel": ["publicKey": GraphQLVariable("publicKey"), "name": GraphQLVariable("name"), "photoUrl": GraphQLVariable("photoUrl")]], type: .scalar(Bool.self)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addSentinel: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addSentinel": addSentinel])
    }

    public var addSentinel: Bool? {
      get {
        return resultMap["addSentinel"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "addSentinel")
      }
    }
  }
}

public final class UpdateSentinelMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation UpdateSentinel($publicKey: String!, $name: String, $photoUrl: String) {\n  updateSentinel(sentinel: {photoUrl: $photoUrl, publicKey: $publicKey, name: $name})\n}"

  public var publicKey: String
  public var name: String?
  public var photoUrl: String?

  public init(publicKey: String, name: String? = nil, photoUrl: String? = nil) {
    self.publicKey = publicKey
    self.name = name
    self.photoUrl = photoUrl
  }

  public var variables: GraphQLMap? {
    return ["publicKey": publicKey, "name": name, "photoUrl": photoUrl]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateSentinel", arguments: ["sentinel": ["photoUrl": GraphQLVariable("photoUrl"), "publicKey": GraphQLVariable("publicKey"), "name": GraphQLVariable("name")]], type: .scalar(Bool.self)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateSentinel: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateSentinel": updateSentinel])
    }

    public var updateSentinel: Bool? {
      get {
        return resultMap["updateSentinel"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "updateSentinel")
      }
    }
  }
}

public final class DeleteSentinelMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation DeleteSentinel($publicKey: String!) {\n  deleteSentinel(publicKey: $publicKey)\n}"

  public var publicKey: String

  public init(publicKey: String) {
    self.publicKey = publicKey
  }

  public var variables: GraphQLMap? {
    return ["publicKey": publicKey]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteSentinel", arguments: ["publicKey": GraphQLVariable("publicKey")], type: .scalar(Bool.self)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteSentinel: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteSentinel": deleteSentinel])
    }

    public var deleteSentinel: Bool? {
      get {
        return resultMap["deleteSentinel"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "deleteSentinel")
      }
    }
  }
}

public final class AddBridgeMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation AddBridge($publicKey: String!, $name: String, $photoUrl: String) {\n  addBridge(bridge: {publicKey: $publicKey, name: $name, photoUrl: $photoUrl})\n}"

  public var publicKey: String
  public var name: String?
  public var photoUrl: String?

  public init(publicKey: String, name: String? = nil, photoUrl: String? = nil) {
    self.publicKey = publicKey
    self.name = name
    self.photoUrl = photoUrl
  }

  public var variables: GraphQLMap? {
    return ["publicKey": publicKey, "name": name, "photoUrl": photoUrl]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addBridge", arguments: ["bridge": ["publicKey": GraphQLVariable("publicKey"), "name": GraphQLVariable("name"), "photoUrl": GraphQLVariable("photoUrl")]], type: .scalar(Bool.self)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addBridge: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addBridge": addBridge])
    }

    public var addBridge: Bool? {
      get {
        return resultMap["addBridge"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "addBridge")
      }
    }
  }
}

public final class UpdateBridgeMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation UpdateBridge($publicKey: String!, $name: String, $photoUrl: String) {\n  updateBridge(bridge: {photoUrl: $photoUrl, publicKey: $publicKey, name: $name})\n}"

  public var publicKey: String
  public var name: String?
  public var photoUrl: String?

  public init(publicKey: String, name: String? = nil, photoUrl: String? = nil) {
    self.publicKey = publicKey
    self.name = name
    self.photoUrl = photoUrl
  }

  public var variables: GraphQLMap? {
    return ["publicKey": publicKey, "name": name, "photoUrl": photoUrl]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateBridge", arguments: ["bridge": ["photoUrl": GraphQLVariable("photoUrl"), "publicKey": GraphQLVariable("publicKey"), "name": GraphQLVariable("name")]], type: .scalar(Bool.self)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateBridge: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateBridge": updateBridge])
    }

    public var updateBridge: Bool? {
      get {
        return resultMap["updateBridge"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "updateBridge")
      }
    }
  }
}

public final class DeleteBridgeMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation DeleteBridge($publicKey: String!) {\n  deleteBridge(publicKey: $publicKey)\n}"

  public var publicKey: String

  public init(publicKey: String) {
    self.publicKey = publicKey
  }

  public var variables: GraphQLMap? {
    return ["publicKey": publicKey]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteBridge", arguments: ["publicKey": GraphQLVariable("publicKey")], type: .scalar(Bool.self)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteBridge: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteBridge": deleteBridge])
    }

    public var deleteBridge: Bool? {
      get {
        return resultMap["deleteBridge"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "deleteBridge")
      }
    }
  }
}

public final class AllBridgesQuery: GraphQLQuery {
  public let operationDefinition =
    "query AllBridges($limit: Int, $cursor: String) {\n  bridges(paginate: {limit: $limit, cursor: $cursor}) {\n    __typename\n    meta {\n      __typename\n      totalCount\n      cursor\n    }\n    items {\n      __typename\n      publicKey\n      name\n      photoUrl\n      owner\n    }\n  }\n}"

  public var limit: Int?
  public var cursor: String?

  public init(limit: Int? = nil, cursor: String? = nil) {
    self.limit = limit
    self.cursor = cursor
  }

  public var variables: GraphQLMap? {
    return ["limit": limit, "cursor": cursor]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("bridges", arguments: ["paginate": ["limit": GraphQLVariable("limit"), "cursor": GraphQLVariable("cursor")]], type: .object(Bridge.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(bridges: Bridge? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "bridges": bridges.flatMap { (value: Bridge) -> ResultMap in value.resultMap }])
    }

    public var bridges: Bridge? {
      get {
        return (resultMap["bridges"] as? ResultMap).flatMap { Bridge(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "bridges")
      }
    }

    public struct Bridge: GraphQLSelectionSet {
      public static let possibleTypes = ["BridgePage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("meta", type: .object(Metum.selections)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(meta: Metum? = nil, items: [Item?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "BridgePage", "meta": meta.flatMap { (value: Metum) -> ResultMap in value.resultMap }, "items": items.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var meta: Metum? {
        get {
          return (resultMap["meta"] as? ResultMap).flatMap { Metum(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "meta")
        }
      }

      public var items: [Item?]? {
        get {
          return (resultMap["items"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Item?] in value.map { (value: ResultMap?) -> Item? in value.flatMap { (value: ResultMap) -> Item in Item(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }, forKey: "items")
        }
      }

      public struct Metum: GraphQLSelectionSet {
        public static let possibleTypes = ["PageMeta"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("totalCount", type: .scalar(Double.self)),
          GraphQLField("cursor", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(totalCount: Double? = nil, cursor: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "PageMeta", "totalCount": totalCount, "cursor": cursor])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var totalCount: Double? {
          get {
            return resultMap["totalCount"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalCount")
          }
        }

        public var cursor: String? {
          get {
            return resultMap["cursor"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cursor")
          }
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Bridge"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("publicKey", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("photoUrl", type: .scalar(String.self)),
          GraphQLField("owner", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(publicKey: String? = nil, name: String? = nil, photoUrl: String? = nil, owner: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Bridge", "publicKey": publicKey, "name": name, "photoUrl": photoUrl, "owner": owner])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var publicKey: String? {
          get {
            return resultMap["publicKey"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "publicKey")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var photoUrl: String? {
          get {
            return resultMap["photoUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "photoUrl")
          }
        }

        public var owner: String? {
          get {
            return resultMap["owner"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "owner")
          }
        }
      }
    }
  }
}

public final class AllSentinelsQuery: GraphQLQuery {
  public let operationDefinition =
    "query AllSentinels($limit: Int, $cursor: String) {\n  sentinels(paginate: {limit: $limit, cursor: $cursor}) {\n    __typename\n    meta {\n      __typename\n      totalCount\n      cursor\n    }\n    items {\n      __typename\n      publicKey\n      name\n      photoUrl\n      owner\n    }\n  }\n}"

  public var limit: Int?
  public var cursor: String?

  public init(limit: Int? = nil, cursor: String? = nil) {
    self.limit = limit
    self.cursor = cursor
  }

  public var variables: GraphQLMap? {
    return ["limit": limit, "cursor": cursor]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("sentinels", arguments: ["paginate": ["limit": GraphQLVariable("limit"), "cursor": GraphQLVariable("cursor")]], type: .object(Sentinel.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(sentinels: Sentinel? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "sentinels": sentinels.flatMap { (value: Sentinel) -> ResultMap in value.resultMap }])
    }

    public var sentinels: Sentinel? {
      get {
        return (resultMap["sentinels"] as? ResultMap).flatMap { Sentinel(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "sentinels")
      }
    }

    public struct Sentinel: GraphQLSelectionSet {
      public static let possibleTypes = ["SentinelPage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("meta", type: .object(Metum.selections)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(meta: Metum? = nil, items: [Item?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "SentinelPage", "meta": meta.flatMap { (value: Metum) -> ResultMap in value.resultMap }, "items": items.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var meta: Metum? {
        get {
          return (resultMap["meta"] as? ResultMap).flatMap { Metum(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "meta")
        }
      }

      public var items: [Item?]? {
        get {
          return (resultMap["items"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Item?] in value.map { (value: ResultMap?) -> Item? in value.flatMap { (value: ResultMap) -> Item in Item(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }, forKey: "items")
        }
      }

      public struct Metum: GraphQLSelectionSet {
        public static let possibleTypes = ["PageMeta"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("totalCount", type: .scalar(Double.self)),
          GraphQLField("cursor", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(totalCount: Double? = nil, cursor: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "PageMeta", "totalCount": totalCount, "cursor": cursor])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var totalCount: Double? {
          get {
            return resultMap["totalCount"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalCount")
          }
        }

        public var cursor: String? {
          get {
            return resultMap["cursor"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cursor")
          }
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Sentinel"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("publicKey", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("photoUrl", type: .scalar(String.self)),
          GraphQLField("owner", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(publicKey: String? = nil, name: String? = nil, photoUrl: String? = nil, owner: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Sentinel", "publicKey": publicKey, "name": name, "photoUrl": photoUrl, "owner": owner])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var publicKey: String? {
          get {
            return resultMap["publicKey"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "publicKey")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var photoUrl: String? {
          get {
            return resultMap["photoUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "photoUrl")
          }
        }

        public var owner: String? {
          get {
            return resultMap["owner"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "owner")
          }
        }
      }
    }
  }
}

public final class ListArchivistsQuery: GraphQLQuery {
  public let operationDefinition =
    "query ListArchivists($limit: Int, $cursor: String) {\n  archivists(paginate: {limit: $limit, cursor: $cursor}) {\n    __typename\n    meta {\n      __typename\n      totalCount\n      cursor\n    }\n    items {\n      __typename\n      url\n    }\n  }\n}"

  public var limit: Int?
  public var cursor: String?

  public init(limit: Int? = nil, cursor: String? = nil) {
    self.limit = limit
    self.cursor = cursor
  }

  public var variables: GraphQLMap? {
    return ["limit": limit, "cursor": cursor]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("archivists", arguments: ["paginate": ["limit": GraphQLVariable("limit"), "cursor": GraphQLVariable("cursor")]], type: .object(Archivist.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(archivists: Archivist? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "archivists": archivists.flatMap { (value: Archivist) -> ResultMap in value.resultMap }])
    }

    public var archivists: Archivist? {
      get {
        return (resultMap["archivists"] as? ResultMap).flatMap { Archivist(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "archivists")
      }
    }

    public struct Archivist: GraphQLSelectionSet {
      public static let possibleTypes = ["ArchivistPage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("meta", type: .nonNull(.object(Metum.selections))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(meta: Metum, items: [Item?]) {
        self.init(unsafeResultMap: ["__typename": "ArchivistPage", "meta": meta.resultMap, "items": items.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var meta: Metum {
        get {
          return Metum(unsafeResultMap: resultMap["meta"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "meta")
        }
      }

      public var items: [Item?] {
        get {
          return (resultMap["items"] as! [ResultMap?]).map { (value: ResultMap?) -> Item? in value.flatMap { (value: ResultMap) -> Item in Item(unsafeResultMap: value) } }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } }, forKey: "items")
        }
      }

      public struct Metum: GraphQLSelectionSet {
        public static let possibleTypes = ["PageMeta"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("totalCount", type: .scalar(Double.self)),
          GraphQLField("cursor", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(totalCount: Double? = nil, cursor: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "PageMeta", "totalCount": totalCount, "cursor": cursor])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var totalCount: Double? {
          get {
            return resultMap["totalCount"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalCount")
          }
        }

        public var cursor: String? {
          get {
            return resultMap["cursor"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "cursor")
          }
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Archivist"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("url", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(url: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Archivist", "url": url])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var url: String? {
          get {
            return resultMap["url"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "url")
          }
        }
      }
    }
  }
}

public final class AddArchivistMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation AddArchivist($multiaddr: String) {\n  addArchivist(multiaddr: $multiaddr) {\n    __typename\n    url\n  }\n}"

  public var multiaddr: String?

  public init(multiaddr: String? = nil) {
    self.multiaddr = multiaddr
  }

  public var variables: GraphQLMap? {
    return ["multiaddr": multiaddr]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addArchivist", arguments: ["multiaddr": GraphQLVariable("multiaddr")], type: .object(AddArchivist.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addArchivist: AddArchivist? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addArchivist": addArchivist.flatMap { (value: AddArchivist) -> ResultMap in value.resultMap }])
    }

    public var addArchivist: AddArchivist? {
      get {
        return (resultMap["addArchivist"] as? ResultMap).flatMap { AddArchivist(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "addArchivist")
      }
    }

    public struct AddArchivist: GraphQLSelectionSet {
      public static let possibleTypes = ["Archivist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("url", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(url: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Archivist", "url": url])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var url: String? {
        get {
          return resultMap["url"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "url")
        }
      }
    }
  }
}

public final class MyUserInfoQuery: GraphQLQuery {
  public let operationDefinition =
    "query MyUserInfo {\n  myUserInfo {\n    __typename\n    publicKey\n    isAnonymous\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("myUserInfo", type: .object(MyUserInfo.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(myUserInfo: MyUserInfo? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "myUserInfo": myUserInfo.flatMap { (value: MyUserInfo) -> ResultMap in value.resultMap }])
    }

    public var myUserInfo: MyUserInfo? {
      get {
        return (resultMap["myUserInfo"] as? ResultMap).flatMap { MyUserInfo(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "myUserInfo")
      }
    }

    public struct MyUserInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["UserInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("publicKey", type: .scalar(String.self)),
        GraphQLField("isAnonymous", type: .scalar(Bool.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(publicKey: String? = nil, isAnonymous: Bool? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserInfo", "publicKey": publicKey, "isAnonymous": isAnonymous])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var publicKey: String? {
        get {
          return resultMap["publicKey"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "publicKey")
        }
      }

      public var isAnonymous: Bool? {
        get {
          return resultMap["isAnonymous"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isAnonymous")
        }
      }
    }
  }
}

public final class UpdateMyUserInfoMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation UpdateMyUserInfo($publicKey: String, $isAnonymous: Boolean) {\n  updateMyUserInfo(info: {publicKey: $publicKey, isAnonymous: $isAnonymous})\n}"

  public var publicKey: String?
  public var isAnonymous: Bool?

  public init(publicKey: String? = nil, isAnonymous: Bool? = nil) {
    self.publicKey = publicKey
    self.isAnonymous = isAnonymous
  }

  public var variables: GraphQLMap? {
    return ["publicKey": publicKey, "isAnonymous": isAnonymous]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMyUserInfo", arguments: ["info": ["publicKey": GraphQLVariable("publicKey"), "isAnonymous": GraphQLVariable("isAnonymous")]], type: .scalar(Bool.self)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateMyUserInfo: Bool? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateMyUserInfo": updateMyUserInfo])
    }

    public var updateMyUserInfo: Bool? {
      get {
        return resultMap["updateMyUserInfo"] as? Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "updateMyUserInfo")
      }
    }
  }
}

public final class GetInfoQuery: GraphQLQuery {
  public let operationDefinition =
    "query getInfo {\n  totalXyoTokens(ethAddress: \"\")\n  historicalXyoTokensEarned(ethAddress: \"\", from: 1548115722712)\n  blocks(paginate: {limit: 2}) {\n    __typename\n    meta {\n      __typename\n      totalCount\n    }\n    items {\n      __typename\n      signedHash\n    }\n  }\n  bridges {\n    __typename\n    meta {\n      __typename\n      totalCount\n    }\n    items {\n      __typename\n      photoUrl\n      name\n      uuid\n      major\n      minor\n    }\n  }\n  sentinels {\n    __typename\n    meta {\n      __typename\n      totalCount\n    }\n    items {\n      __typename\n      photoUrl\n      name\n      uuid\n      major\n      minor\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("totalXyoTokens", arguments: ["ethAddress": ""], type: .scalar(Double.self)),
      GraphQLField("historicalXyoTokensEarned", arguments: ["ethAddress": "", "from": 1548115722712], type: .list(.list(.scalar(Double.self)))),
      GraphQLField("blocks", arguments: ["paginate": ["limit": 2]], type: .object(Block.selections)),
      GraphQLField("bridges", type: .object(Bridge.selections)),
      GraphQLField("sentinels", type: .object(Sentinel.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(totalXyoTokens: Double? = nil, historicalXyoTokensEarned: [[Double?]?]? = nil, blocks: Block? = nil, bridges: Bridge? = nil, sentinels: Sentinel? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "totalXyoTokens": totalXyoTokens, "historicalXyoTokensEarned": historicalXyoTokensEarned, "blocks": blocks.flatMap { (value: Block) -> ResultMap in value.resultMap }, "bridges": bridges.flatMap { (value: Bridge) -> ResultMap in value.resultMap }, "sentinels": sentinels.flatMap { (value: Sentinel) -> ResultMap in value.resultMap }])
    }

    public var totalXyoTokens: Double? {
      get {
        return resultMap["totalXyoTokens"] as? Double
      }
      set {
        resultMap.updateValue(newValue, forKey: "totalXyoTokens")
      }
    }

    public var historicalXyoTokensEarned: [[Double?]?]? {
      get {
        return resultMap["historicalXyoTokensEarned"] as? [[Double?]?]
      }
      set {
        resultMap.updateValue(newValue, forKey: "historicalXyoTokensEarned")
      }
    }

    public var blocks: Block? {
      get {
        return (resultMap["blocks"] as? ResultMap).flatMap { Block(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "blocks")
      }
    }

    public var bridges: Bridge? {
      get {
        return (resultMap["bridges"] as? ResultMap).flatMap { Bridge(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "bridges")
      }
    }

    public var sentinels: Sentinel? {
      get {
        return (resultMap["sentinels"] as? ResultMap).flatMap { Sentinel(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "sentinels")
      }
    }

    public struct Block: GraphQLSelectionSet {
      public static let possibleTypes = ["BlockPage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("meta", type: .object(Metum.selections)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(meta: Metum? = nil, items: [Item?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "BlockPage", "meta": meta.flatMap { (value: Metum) -> ResultMap in value.resultMap }, "items": items.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var meta: Metum? {
        get {
          return (resultMap["meta"] as? ResultMap).flatMap { Metum(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "meta")
        }
      }

      public var items: [Item?]? {
        get {
          return (resultMap["items"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Item?] in value.map { (value: ResultMap?) -> Item? in value.flatMap { (value: ResultMap) -> Item in Item(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }, forKey: "items")
        }
      }

      public struct Metum: GraphQLSelectionSet {
        public static let possibleTypes = ["PageMeta"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("totalCount", type: .scalar(Double.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(totalCount: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "PageMeta", "totalCount": totalCount])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var totalCount: Double? {
          get {
            return resultMap["totalCount"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalCount")
          }
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Block"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("signedHash", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(signedHash: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Block", "signedHash": signedHash])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var signedHash: String? {
          get {
            return resultMap["signedHash"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "signedHash")
          }
        }
      }
    }

    public struct Bridge: GraphQLSelectionSet {
      public static let possibleTypes = ["BridgePage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("meta", type: .object(Metum.selections)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(meta: Metum? = nil, items: [Item?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "BridgePage", "meta": meta.flatMap { (value: Metum) -> ResultMap in value.resultMap }, "items": items.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var meta: Metum? {
        get {
          return (resultMap["meta"] as? ResultMap).flatMap { Metum(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "meta")
        }
      }

      public var items: [Item?]? {
        get {
          return (resultMap["items"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Item?] in value.map { (value: ResultMap?) -> Item? in value.flatMap { (value: ResultMap) -> Item in Item(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }, forKey: "items")
        }
      }

      public struct Metum: GraphQLSelectionSet {
        public static let possibleTypes = ["PageMeta"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("totalCount", type: .scalar(Double.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(totalCount: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "PageMeta", "totalCount": totalCount])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var totalCount: Double? {
          get {
            return resultMap["totalCount"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalCount")
          }
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Bridge"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("photoUrl", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("uuid", type: .scalar(String.self)),
          GraphQLField("major", type: .scalar(Int.self)),
          GraphQLField("minor", type: .scalar(Int.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(photoUrl: String? = nil, name: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Bridge", "photoUrl": photoUrl, "name": name, "uuid": uuid, "major": major, "minor": minor])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var photoUrl: String? {
          get {
            return resultMap["photoUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "photoUrl")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var uuid: String? {
          get {
            return resultMap["uuid"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "uuid")
          }
        }

        public var major: Int? {
          get {
            return resultMap["major"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "major")
          }
        }

        public var minor: Int? {
          get {
            return resultMap["minor"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "minor")
          }
        }
      }
    }

    public struct Sentinel: GraphQLSelectionSet {
      public static let possibleTypes = ["SentinelPage"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("meta", type: .object(Metum.selections)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(meta: Metum? = nil, items: [Item?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "SentinelPage", "meta": meta.flatMap { (value: Metum) -> ResultMap in value.resultMap }, "items": items.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var meta: Metum? {
        get {
          return (resultMap["meta"] as? ResultMap).flatMap { Metum(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "meta")
        }
      }

      public var items: [Item?]? {
        get {
          return (resultMap["items"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Item?] in value.map { (value: ResultMap?) -> Item? in value.flatMap { (value: ResultMap) -> Item in Item(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }, forKey: "items")
        }
      }

      public struct Metum: GraphQLSelectionSet {
        public static let possibleTypes = ["PageMeta"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("totalCount", type: .scalar(Double.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(totalCount: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "PageMeta", "totalCount": totalCount])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var totalCount: Double? {
          get {
            return resultMap["totalCount"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalCount")
          }
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Sentinel"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("photoUrl", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("uuid", type: .scalar(String.self)),
          GraphQLField("major", type: .scalar(Int.self)),
          GraphQLField("minor", type: .scalar(Int.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(photoUrl: String? = nil, name: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Sentinel", "photoUrl": photoUrl, "name": name, "uuid": uuid, "major": major, "minor": minor])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var photoUrl: String? {
          get {
            return resultMap["photoUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "photoUrl")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var uuid: String? {
          get {
            return resultMap["uuid"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "uuid")
          }
        }

        public var major: Int? {
          get {
            return resultMap["major"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "major")
          }
        }

        public var minor: Int? {
          get {
            return resultMap["minor"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "minor")
          }
        }
      }
    }
  }
}