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
    "query MyDevices {\n  mySentinels {\n    __typename\n    meta {\n      __typename\n      totalCount\n    }\n    items {\n      __typename\n      id\n      name\n      photoUrl\n      publicKey\n      uuid\n      major\n      minor\n    }\n  }\n  myBridges {\n    __typename\n    meta {\n      __typename\n      totalCount\n    }\n    items {\n      __typename\n      id\n      name\n      photoUrl\n      publicKey\n      uuid\n      major\n      minor\n    }\n  }\n}"

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
          GraphQLField("id", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("photoUrl", type: .scalar(String.self)),
          GraphQLField("publicKey", type: .scalar(String.self)),
          GraphQLField("uuid", type: .scalar(String.self)),
          GraphQLField("major", type: .scalar(Int.self)),
          GraphQLField("minor", type: .scalar(Int.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String? = nil, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Sentinel", "id": id, "name": name, "photoUrl": photoUrl, "publicKey": publicKey, "uuid": uuid, "major": major, "minor": minor])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String? {
          get {
            return resultMap["id"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
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
          GraphQLField("id", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("photoUrl", type: .scalar(String.self)),
          GraphQLField("publicKey", type: .scalar(String.self)),
          GraphQLField("uuid", type: .scalar(String.self)),
          GraphQLField("major", type: .scalar(Int.self)),
          GraphQLField("minor", type: .scalar(Int.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String? = nil, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Bridge", "id": id, "name": name, "photoUrl": photoUrl, "publicKey": publicKey, "uuid": uuid, "major": major, "minor": minor])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String? {
          get {
            return resultMap["id"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
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

public final class AddSentinelMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation AddSentinel($id: String!, $name: String, $photoUrl: String, $publicKey: String, $uuid: String, $major: Int, $minor: Int) {\n  addSentinel(address: {id: $id, publicKey: $publicKey, name: $name, photoUrl: $photoUrl}, sentinel: {uuid: $uuid, major: $major, minor: $minor}) {\n    __typename\n    id\n    name\n    photoUrl\n    publicKey\n    uuid\n    major\n    minor\n  }\n}"

  public var id: String
  public var name: String?
  public var photoUrl: String?
  public var publicKey: String?
  public var uuid: String?
  public var major: Int?
  public var minor: Int?

  public init(id: String, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil) {
    self.id = id
    self.name = name
    self.photoUrl = photoUrl
    self.publicKey = publicKey
    self.uuid = uuid
    self.major = major
    self.minor = minor
  }

  public var variables: GraphQLMap? {
    return ["id": id, "name": name, "photoUrl": photoUrl, "publicKey": publicKey, "uuid": uuid, "major": major, "minor": minor]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addSentinel", arguments: ["address": ["id": GraphQLVariable("id"), "publicKey": GraphQLVariable("publicKey"), "name": GraphQLVariable("name"), "photoUrl": GraphQLVariable("photoUrl")], "sentinel": ["uuid": GraphQLVariable("uuid"), "major": GraphQLVariable("major"), "minor": GraphQLVariable("minor")]], type: .object(AddSentinel.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addSentinel: AddSentinel? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addSentinel": addSentinel.flatMap { (value: AddSentinel) -> ResultMap in value.resultMap }])
    }

    public var addSentinel: AddSentinel? {
      get {
        return (resultMap["addSentinel"] as? ResultMap).flatMap { AddSentinel(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "addSentinel")
      }
    }

    public struct AddSentinel: GraphQLSelectionSet {
      public static let possibleTypes = ["Sentinel"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(String.self)),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("photoUrl", type: .scalar(String.self)),
        GraphQLField("publicKey", type: .scalar(String.self)),
        GraphQLField("uuid", type: .scalar(String.self)),
        GraphQLField("major", type: .scalar(Int.self)),
        GraphQLField("minor", type: .scalar(Int.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "Sentinel", "id": id, "name": name, "photoUrl": photoUrl, "publicKey": publicKey, "uuid": uuid, "major": major, "minor": minor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String? {
        get {
          return resultMap["id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
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

public final class UpdateSentinelMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation UpdateSentinel($id: String!, $name: String, $photoUrl: String, $publicKey: String, $uuid: String, $major: Int, $minor: Int) {\n  updateSentinel(address: {id: $id, publicKey: $publicKey, name: $name, photoUrl: $photoUrl}, sentinel: {uuid: $uuid, major: $major, minor: $minor}) {\n    __typename\n    id\n    name\n    photoUrl\n    publicKey\n    uuid\n    major\n    minor\n  }\n}"

  public var id: String
  public var name: String?
  public var photoUrl: String?
  public var publicKey: String?
  public var uuid: String?
  public var major: Int?
  public var minor: Int?

  public init(id: String, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil) {
    self.id = id
    self.name = name
    self.photoUrl = photoUrl
    self.publicKey = publicKey
    self.uuid = uuid
    self.major = major
    self.minor = minor
  }

  public var variables: GraphQLMap? {
    return ["id": id, "name": name, "photoUrl": photoUrl, "publicKey": publicKey, "uuid": uuid, "major": major, "minor": minor]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateSentinel", arguments: ["address": ["id": GraphQLVariable("id"), "publicKey": GraphQLVariable("publicKey"), "name": GraphQLVariable("name"), "photoUrl": GraphQLVariable("photoUrl")], "sentinel": ["uuid": GraphQLVariable("uuid"), "major": GraphQLVariable("major"), "minor": GraphQLVariable("minor")]], type: .object(UpdateSentinel.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateSentinel: UpdateSentinel? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateSentinel": updateSentinel.flatMap { (value: UpdateSentinel) -> ResultMap in value.resultMap }])
    }

    public var updateSentinel: UpdateSentinel? {
      get {
        return (resultMap["updateSentinel"] as? ResultMap).flatMap { UpdateSentinel(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateSentinel")
      }
    }

    public struct UpdateSentinel: GraphQLSelectionSet {
      public static let possibleTypes = ["Sentinel"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(String.self)),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("photoUrl", type: .scalar(String.self)),
        GraphQLField("publicKey", type: .scalar(String.self)),
        GraphQLField("uuid", type: .scalar(String.self)),
        GraphQLField("major", type: .scalar(Int.self)),
        GraphQLField("minor", type: .scalar(Int.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "Sentinel", "id": id, "name": name, "photoUrl": photoUrl, "publicKey": publicKey, "uuid": uuid, "major": major, "minor": minor])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String? {
        get {
          return resultMap["id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
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

public final class DeleteSentinelMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation DeleteSentinel($publicKey: String!) {\n  deleteSentinel(publicKey: $publicKey) {\n    __typename\n    name\n    publicKey\n    photoUrl\n  }\n}"

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
      GraphQLField("deleteSentinel", arguments: ["publicKey": GraphQLVariable("publicKey")], type: .object(DeleteSentinel.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteSentinel: DeleteSentinel? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteSentinel": deleteSentinel.flatMap { (value: DeleteSentinel) -> ResultMap in value.resultMap }])
    }

    public var deleteSentinel: DeleteSentinel? {
      get {
        return (resultMap["deleteSentinel"] as? ResultMap).flatMap { DeleteSentinel(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "deleteSentinel")
      }
    }

    public struct DeleteSentinel: GraphQLSelectionSet {
      public static let possibleTypes = ["Sentinel"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("publicKey", type: .scalar(String.self)),
        GraphQLField("photoUrl", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, publicKey: String? = nil, photoUrl: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Sentinel", "name": name, "publicKey": publicKey, "photoUrl": photoUrl])
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

      public var publicKey: String? {
        get {
          return resultMap["publicKey"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "publicKey")
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
    "query MyUserInfo {\n  myUserInfo {\n    __typename\n    displayName\n    email\n    photoURL\n    publicKey\n    isAnonymous\n  }\n}"

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
        GraphQLField("displayName", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("photoURL", type: .scalar(String.self)),
        GraphQLField("publicKey", type: .scalar(String.self)),
        GraphQLField("isAnonymous", type: .scalar(Bool.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(displayName: String? = nil, email: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, isAnonymous: Bool? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserInfo", "displayName": displayName, "email": email, "photoURL": photoUrl, "publicKey": publicKey, "isAnonymous": isAnonymous])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var displayName: String? {
        get {
          return resultMap["displayName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "displayName")
        }
      }

      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var photoUrl: String? {
        get {
          return resultMap["photoURL"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photoURL")
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
    "mutation UpdateMyUserInfo($displayName: String, $photoURL: String, $publicKey: String, $isAnonymous: Boolean) {\n  updateMyUserInfo(info: {displayName: $displayName, photoURL: $photoURL, publicKey: $publicKey, isAnonymous: $isAnonymous}) {\n    __typename\n    displayName\n    photoURL\n    email\n    publicKey\n    isAnonymous\n  }\n}"

  public var displayName: String?
  public var photoURL: String?
  public var publicKey: String?
  public var isAnonymous: Bool?

  public init(displayName: String? = nil, photoURL: String? = nil, publicKey: String? = nil, isAnonymous: Bool? = nil) {
    self.displayName = displayName
    self.photoURL = photoURL
    self.publicKey = publicKey
    self.isAnonymous = isAnonymous
  }

  public var variables: GraphQLMap? {
    return ["displayName": displayName, "photoURL": photoURL, "publicKey": publicKey, "isAnonymous": isAnonymous]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMyUserInfo", arguments: ["info": ["displayName": GraphQLVariable("displayName"), "photoURL": GraphQLVariable("photoURL"), "publicKey": GraphQLVariable("publicKey"), "isAnonymous": GraphQLVariable("isAnonymous")]], type: .object(UpdateMyUserInfo.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateMyUserInfo: UpdateMyUserInfo? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateMyUserInfo": updateMyUserInfo.flatMap { (value: UpdateMyUserInfo) -> ResultMap in value.resultMap }])
    }

    public var updateMyUserInfo: UpdateMyUserInfo? {
      get {
        return (resultMap["updateMyUserInfo"] as? ResultMap).flatMap { UpdateMyUserInfo(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateMyUserInfo")
      }
    }

    public struct UpdateMyUserInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["UserInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("displayName", type: .scalar(String.self)),
        GraphQLField("photoURL", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("publicKey", type: .scalar(String.self)),
        GraphQLField("isAnonymous", type: .scalar(Bool.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(displayName: String? = nil, photoUrl: String? = nil, email: String? = nil, publicKey: String? = nil, isAnonymous: Bool? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserInfo", "displayName": displayName, "photoURL": photoUrl, "email": email, "publicKey": publicKey, "isAnonymous": isAnonymous])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var displayName: String? {
        get {
          return resultMap["displayName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "displayName")
        }
      }

      public var photoUrl: String? {
        get {
          return resultMap["photoURL"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photoURL")
        }
      }

      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
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