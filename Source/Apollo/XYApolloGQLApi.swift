//  This file was automatically generated and should not be edited.

import Apollo

public final class MyDevicesQuery: GraphQLQuery {
  public let operationDefinition =
    "query MyDevices {\n  mySentinels {\n    __typename\n    meta {\n      __typename\n      totalCount\n    }\n    items {\n      __typename\n      id\n      name\n      photoUrl\n      publicKey\n      uuid\n      major\n      minor\n      lastGps {\n        __typename\n        latitude\n        longitude\n      }\n    }\n  }\n  myBridges {\n    __typename\n    meta {\n      __typename\n      totalCount\n    }\n    items {\n      __typename\n      id\n      name\n      photoUrl\n      publicKey\n      uuid\n      major\n      minor\n      lastGps {\n        __typename\n        latitude\n        longitude\n      }\n    }\n  }\n}"

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
          GraphQLField("lastGps", type: .object(LastGp.selections)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String? = nil, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil, lastGps: LastGp? = nil) {
          self.init(unsafeResultMap: ["__typename": "Sentinel", "id": id, "name": name, "photoUrl": photoUrl, "publicKey": publicKey, "uuid": uuid, "major": major, "minor": minor, "lastGps": lastGps.flatMap { (value: LastGp) -> ResultMap in value.resultMap }])
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

        public var lastGps: LastGp? {
          get {
            return (resultMap["lastGps"] as? ResultMap).flatMap { LastGp(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "lastGps")
          }
        }

        public struct LastGp: GraphQLSelectionSet {
          public static let possibleTypes = ["Location"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("latitude", type: .scalar(Double.self)),
            GraphQLField("longitude", type: .scalar(Double.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(latitude: Double? = nil, longitude: Double? = nil) {
            self.init(unsafeResultMap: ["__typename": "Location", "latitude": latitude, "longitude": longitude])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var latitude: Double? {
            get {
              return resultMap["latitude"] as? Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "latitude")
            }
          }

          public var longitude: Double? {
            get {
              return resultMap["longitude"] as? Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "longitude")
            }
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
          GraphQLField("lastGps", type: .object(LastGp.selections)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String? = nil, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil, lastGps: LastGp? = nil) {
          self.init(unsafeResultMap: ["__typename": "Bridge", "id": id, "name": name, "photoUrl": photoUrl, "publicKey": publicKey, "uuid": uuid, "major": major, "minor": minor, "lastGps": lastGps.flatMap { (value: LastGp) -> ResultMap in value.resultMap }])
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

        public var lastGps: LastGp? {
          get {
            return (resultMap["lastGps"] as? ResultMap).flatMap { LastGp(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "lastGps")
          }
        }

        public struct LastGp: GraphQLSelectionSet {
          public static let possibleTypes = ["Location"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("latitude", type: .scalar(Double.self)),
            GraphQLField("longitude", type: .scalar(Double.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(latitude: Double? = nil, longitude: Double? = nil) {
            self.init(unsafeResultMap: ["__typename": "Location", "latitude": latitude, "longitude": longitude])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var latitude: Double? {
            get {
              return resultMap["latitude"] as? Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "latitude")
            }
          }

          public var longitude: Double? {
            get {
              return resultMap["longitude"] as? Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "longitude")
            }
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
    "mutation UpdateSentinel($id: String!, $name: String, $photoUrl: String, $publicKey: String, $uuid: String, $major: Int, $minor: Int) {\n  updateSentinel(address: {id: $id, publicKey: $publicKey, name: $name, photoUrl: $photoUrl}, sentinel: {uuid: $uuid, major: $major, minor: $minor}) {\n    __typename\n    id\n    name\n    photoUrl\n    publicKey\n    uuid\n    major\n    minor\n    lastGps {\n      __typename\n      latitude\n      longitude\n    }\n  }\n}"

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
        GraphQLField("lastGps", type: .object(LastGp.selections)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil, lastGps: LastGp? = nil) {
        self.init(unsafeResultMap: ["__typename": "Sentinel", "id": id, "name": name, "photoUrl": photoUrl, "publicKey": publicKey, "uuid": uuid, "major": major, "minor": minor, "lastGps": lastGps.flatMap { (value: LastGp) -> ResultMap in value.resultMap }])
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

      public var lastGps: LastGp? {
        get {
          return (resultMap["lastGps"] as? ResultMap).flatMap { LastGp(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "lastGps")
        }
      }

      public struct LastGp: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("latitude", type: .scalar(Double.self)),
          GraphQLField("longitude", type: .scalar(Double.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(latitude: Double? = nil, longitude: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "Location", "latitude": latitude, "longitude": longitude])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var latitude: Double? {
          get {
            return resultMap["latitude"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "latitude")
          }
        }

        public var longitude: Double? {
          get {
            return resultMap["longitude"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "longitude")
          }
        }
      }
    }
  }
}

public final class DeleteSentinelMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation DeleteSentinel($id: String!) {\n  deleteSentinel(id: $id) {\n    __typename\n    name\n    publicKey\n    photoUrl\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteSentinel", arguments: ["id": GraphQLVariable("id")], type: .object(DeleteSentinel.selections)),
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

public final class DeleteBridgeMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation DeleteBridge($id: String!) {\n  deleteBridge(id: $id) {\n    __typename\n    name\n    id\n    photoUrl\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteBridge", arguments: ["id": GraphQLVariable("id")], type: .object(DeleteBridge.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteBridge: DeleteBridge? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteBridge": deleteBridge.flatMap { (value: DeleteBridge) -> ResultMap in value.resultMap }])
    }

    public var deleteBridge: DeleteBridge? {
      get {
        return (resultMap["deleteBridge"] as? ResultMap).flatMap { DeleteBridge(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "deleteBridge")
      }
    }

    public struct DeleteBridge: GraphQLSelectionSet {
      public static let possibleTypes = ["Bridge"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("id", type: .scalar(String.self)),
        GraphQLField("photoUrl", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, id: String? = nil, photoUrl: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Bridge", "name": name, "id": id, "photoUrl": photoUrl])
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

      public var id: String? {
        get {
          return resultMap["id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
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

public final class UpdateBridgeMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation UpdateBridge($id: String!, $name: String, $photoUrl: String, $publicKey: String, $uuid: String, $major: Int, $minor: Int) {\n  updateBridge(address: {id: $id, publicKey: $publicKey, name: $name, photoUrl: $photoUrl}, bridge: {uuid: $uuid, major: $major, minor: $minor}) {\n    __typename\n    id\n    name\n    photoUrl\n    publicKey\n    uuid\n    major\n    minor\n    lastGps {\n      __typename\n      latitude\n      longitude\n    }\n  }\n}"

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
      GraphQLField("updateBridge", arguments: ["address": ["id": GraphQLVariable("id"), "publicKey": GraphQLVariable("publicKey"), "name": GraphQLVariable("name"), "photoUrl": GraphQLVariable("photoUrl")], "bridge": ["uuid": GraphQLVariable("uuid"), "major": GraphQLVariable("major"), "minor": GraphQLVariable("minor")]], type: .object(UpdateBridge.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateBridge: UpdateBridge? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateBridge": updateBridge.flatMap { (value: UpdateBridge) -> ResultMap in value.resultMap }])
    }

    public var updateBridge: UpdateBridge? {
      get {
        return (resultMap["updateBridge"] as? ResultMap).flatMap { UpdateBridge(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateBridge")
      }
    }

    public struct UpdateBridge: GraphQLSelectionSet {
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
        GraphQLField("lastGps", type: .object(LastGp.selections)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil, lastGps: LastGp? = nil) {
        self.init(unsafeResultMap: ["__typename": "Bridge", "id": id, "name": name, "photoUrl": photoUrl, "publicKey": publicKey, "uuid": uuid, "major": major, "minor": minor, "lastGps": lastGps.flatMap { (value: LastGp) -> ResultMap in value.resultMap }])
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

      public var lastGps: LastGp? {
        get {
          return (resultMap["lastGps"] as? ResultMap).flatMap { LastGp(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "lastGps")
        }
      }

      public struct LastGp: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("latitude", type: .scalar(Double.self)),
          GraphQLField("longitude", type: .scalar(Double.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(latitude: Double? = nil, longitude: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "Location", "latitude": latitude, "longitude": longitude])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var latitude: Double? {
          get {
            return resultMap["latitude"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "latitude")
          }
        }

        public var longitude: Double? {
          get {
            return resultMap["longitude"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "longitude")
          }
        }
      }
    }
  }
}

public final class DetachFromSentinelMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation DetachFromSentinel($id: String!) {\n  detachFromSentinel(id: $id) {\n    __typename\n    id\n    name\n    photoUrl\n    publicKey\n    uuid\n    major\n    minor\n    lastGps {\n      __typename\n      latitude\n      longitude\n    }\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("detachFromSentinel", arguments: ["id": GraphQLVariable("id")], type: .object(DetachFromSentinel.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(detachFromSentinel: DetachFromSentinel? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "detachFromSentinel": detachFromSentinel.flatMap { (value: DetachFromSentinel) -> ResultMap in value.resultMap }])
    }

    public var detachFromSentinel: DetachFromSentinel? {
      get {
        return (resultMap["detachFromSentinel"] as? ResultMap).flatMap { DetachFromSentinel(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "detachFromSentinel")
      }
    }

    public struct DetachFromSentinel: GraphQLSelectionSet {
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
        GraphQLField("lastGps", type: .object(LastGp.selections)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil, lastGps: LastGp? = nil) {
        self.init(unsafeResultMap: ["__typename": "Sentinel", "id": id, "name": name, "photoUrl": photoUrl, "publicKey": publicKey, "uuid": uuid, "major": major, "minor": minor, "lastGps": lastGps.flatMap { (value: LastGp) -> ResultMap in value.resultMap }])
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

      public var lastGps: LastGp? {
        get {
          return (resultMap["lastGps"] as? ResultMap).flatMap { LastGp(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "lastGps")
        }
      }

      public struct LastGp: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("latitude", type: .scalar(Double.self)),
          GraphQLField("longitude", type: .scalar(Double.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(latitude: Double? = nil, longitude: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "Location", "latitude": latitude, "longitude": longitude])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var latitude: Double? {
          get {
            return resultMap["latitude"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "latitude")
          }
        }

        public var longitude: Double? {
          get {
            return resultMap["longitude"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "longitude")
          }
        }
      }
    }
  }
}

public final class DetachFromBridgeMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation DetachFromBridge($id: String!) {\n  detachFromBridge(id: $id) {\n    __typename\n    id\n    name\n    photoUrl\n    publicKey\n    uuid\n    major\n    minor\n    lastGps {\n      __typename\n      latitude\n      longitude\n    }\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("detachFromBridge", arguments: ["id": GraphQLVariable("id")], type: .object(DetachFromBridge.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(detachFromBridge: DetachFromBridge? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "detachFromBridge": detachFromBridge.flatMap { (value: DetachFromBridge) -> ResultMap in value.resultMap }])
    }

    public var detachFromBridge: DetachFromBridge? {
      get {
        return (resultMap["detachFromBridge"] as? ResultMap).flatMap { DetachFromBridge(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "detachFromBridge")
      }
    }

    public struct DetachFromBridge: GraphQLSelectionSet {
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
        GraphQLField("lastGps", type: .object(LastGp.selections)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, name: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, uuid: String? = nil, major: Int? = nil, minor: Int? = nil, lastGps: LastGp? = nil) {
        self.init(unsafeResultMap: ["__typename": "Bridge", "id": id, "name": name, "photoUrl": photoUrl, "publicKey": publicKey, "uuid": uuid, "major": major, "minor": minor, "lastGps": lastGps.flatMap { (value: LastGp) -> ResultMap in value.resultMap }])
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

      public var lastGps: LastGp? {
        get {
          return (resultMap["lastGps"] as? ResultMap).flatMap { LastGp(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "lastGps")
        }
      }

      public struct LastGp: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("latitude", type: .scalar(Double.self)),
          GraphQLField("longitude", type: .scalar(Double.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(latitude: Double? = nil, longitude: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "Location", "latitude": latitude, "longitude": longitude])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var latitude: Double? {
          get {
            return resultMap["latitude"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "latitude")
          }
        }

        public var longitude: Double? {
          get {
            return resultMap["longitude"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "longitude")
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

public final class MyUserInfoQuery: GraphQLQuery {
  public let operationDefinition =
    "query MyUserInfo {\n  myUserInfo {\n    __typename\n    id\n    displayName\n    email\n    photoURL\n    publicKey\n    isAnonymous\n    defaultArchivistId\n    archivists {\n      __typename\n      id\n      name\n      publicKey\n      multiaddr\n      graphqlPort\n      boundWitnessServerPort\n    }\n  }\n}"

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
        GraphQLField("id", type: .scalar(String.self)),
        GraphQLField("displayName", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("photoURL", type: .scalar(String.self)),
        GraphQLField("publicKey", type: .scalar(String.self)),
        GraphQLField("isAnonymous", type: .scalar(Bool.self)),
        GraphQLField("defaultArchivistId", type: .scalar(String.self)),
        GraphQLField("archivists", type: .list(.object(Archivist.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, displayName: String? = nil, email: String? = nil, photoUrl: String? = nil, publicKey: String? = nil, isAnonymous: Bool? = nil, defaultArchivistId: String? = nil, archivists: [Archivist?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserInfo", "id": id, "displayName": displayName, "email": email, "photoURL": photoUrl, "publicKey": publicKey, "isAnonymous": isAnonymous, "defaultArchivistId": defaultArchivistId, "archivists": archivists.flatMap { (value: [Archivist?]) -> [ResultMap?] in value.map { (value: Archivist?) -> ResultMap? in value.flatMap { (value: Archivist) -> ResultMap in value.resultMap } } }])
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

      public var defaultArchivistId: String? {
        get {
          return resultMap["defaultArchivistId"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "defaultArchivistId")
        }
      }

      public var archivists: [Archivist?]? {
        get {
          return (resultMap["archivists"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Archivist?] in value.map { (value: ResultMap?) -> Archivist? in value.flatMap { (value: ResultMap) -> Archivist in Archivist(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Archivist?]) -> [ResultMap?] in value.map { (value: Archivist?) -> ResultMap? in value.flatMap { (value: Archivist) -> ResultMap in value.resultMap } } }, forKey: "archivists")
        }
      }

      public struct Archivist: GraphQLSelectionSet {
        public static let possibleTypes = ["Archivist"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("publicKey", type: .scalar(String.self)),
          GraphQLField("multiaddr", type: .scalar(String.self)),
          GraphQLField("graphqlPort", type: .scalar(Int.self)),
          GraphQLField("boundWitnessServerPort", type: .scalar(Int.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String? = nil, name: String? = nil, publicKey: String? = nil, multiaddr: String? = nil, graphqlPort: Int? = nil, boundWitnessServerPort: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Archivist", "id": id, "name": name, "publicKey": publicKey, "multiaddr": multiaddr, "graphqlPort": graphqlPort, "boundWitnessServerPort": boundWitnessServerPort])
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

        public var publicKey: String? {
          get {
            return resultMap["publicKey"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "publicKey")
          }
        }

        public var multiaddr: String? {
          get {
            return resultMap["multiaddr"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "multiaddr")
          }
        }

        public var graphqlPort: Int? {
          get {
            return resultMap["graphqlPort"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "graphqlPort")
          }
        }

        public var boundWitnessServerPort: Int? {
          get {
            return resultMap["boundWitnessServerPort"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "boundWitnessServerPort")
          }
        }
      }
    }
  }
}

public final class UpdateMyUserInfoMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation UpdateMyUserInfo($displayName: String, $photoURL: String, $publicKey: String, $isAnonymous: Boolean, $defaultArchivistId: String) {\n  updateMyUserInfo(info: {displayName: $displayName, photoURL: $photoURL, publicKey: $publicKey, isAnonymous: $isAnonymous, defaultArchivistId: $defaultArchivistId}) {\n    __typename\n    id\n    displayName\n    photoURL\n    email\n    publicKey\n    isAnonymous\n    defaultArchivistId\n  }\n}"

  public var displayName: String?
  public var photoURL: String?
  public var publicKey: String?
  public var isAnonymous: Bool?
  public var defaultArchivistId: String?

  public init(displayName: String? = nil, photoURL: String? = nil, publicKey: String? = nil, isAnonymous: Bool? = nil, defaultArchivistId: String? = nil) {
    self.displayName = displayName
    self.photoURL = photoURL
    self.publicKey = publicKey
    self.isAnonymous = isAnonymous
    self.defaultArchivistId = defaultArchivistId
  }

  public var variables: GraphQLMap? {
    return ["displayName": displayName, "photoURL": photoURL, "publicKey": publicKey, "isAnonymous": isAnonymous, "defaultArchivistId": defaultArchivistId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMyUserInfo", arguments: ["info": ["displayName": GraphQLVariable("displayName"), "photoURL": GraphQLVariable("photoURL"), "publicKey": GraphQLVariable("publicKey"), "isAnonymous": GraphQLVariable("isAnonymous"), "defaultArchivistId": GraphQLVariable("defaultArchivistId")]], type: .object(UpdateMyUserInfo.selections)),
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
        GraphQLField("id", type: .scalar(String.self)),
        GraphQLField("displayName", type: .scalar(String.self)),
        GraphQLField("photoURL", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("publicKey", type: .scalar(String.self)),
        GraphQLField("isAnonymous", type: .scalar(Bool.self)),
        GraphQLField("defaultArchivistId", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, displayName: String? = nil, photoUrl: String? = nil, email: String? = nil, publicKey: String? = nil, isAnonymous: Bool? = nil, defaultArchivistId: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserInfo", "id": id, "displayName": displayName, "photoURL": photoUrl, "email": email, "publicKey": publicKey, "isAnonymous": isAnonymous, "defaultArchivistId": defaultArchivistId])
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

      public var defaultArchivistId: String? {
        get {
          return resultMap["defaultArchivistId"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "defaultArchivistId")
        }
      }
    }
  }
}

public final class AddBridgeMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation AddBridge($id: String!, $name: String, $photoUrl: String, $publicKey: String, $uuid: String, $major: Int, $minor: Int) {\n  addBridge(address: {id: $id, publicKey: $publicKey, name: $name, photoUrl: $photoUrl}, bridge: {uuid: $uuid, major: $major, minor: $minor}) {\n    __typename\n    id\n    name\n    photoUrl\n    publicKey\n    uuid\n    major\n    minor\n  }\n}"

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
      GraphQLField("addBridge", arguments: ["address": ["id": GraphQLVariable("id"), "publicKey": GraphQLVariable("publicKey"), "name": GraphQLVariable("name"), "photoUrl": GraphQLVariable("photoUrl")], "bridge": ["uuid": GraphQLVariable("uuid"), "major": GraphQLVariable("major"), "minor": GraphQLVariable("minor")]], type: .object(AddBridge.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addBridge: AddBridge? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addBridge": addBridge.flatMap { (value: AddBridge) -> ResultMap in value.resultMap }])
    }

    public var addBridge: AddBridge? {
      get {
        return (resultMap["addBridge"] as? ResultMap).flatMap { AddBridge(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "addBridge")
      }
    }

    public struct AddBridge: GraphQLSelectionSet {
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

public final class AttachToArchivistClientMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation AttachToArchivistClient($multiaddr: String, $dns: String, $ip: String, $port: Int) {\n  attachToArchivistClient(archivist: {multiaddr: $multiaddr, port: $port, dns: $dns, ip: $ip}) {\n    __typename\n    id\n  }\n}"

  public var multiaddr: String?
  public var dns: String?
  public var ip: String?
  public var port: Int?

  public init(multiaddr: String? = nil, dns: String? = nil, ip: String? = nil, port: Int? = nil) {
    self.multiaddr = multiaddr
    self.dns = dns
    self.ip = ip
    self.port = port
  }

  public var variables: GraphQLMap? {
    return ["multiaddr": multiaddr, "dns": dns, "ip": ip, "port": port]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("attachToArchivistClient", arguments: ["archivist": ["multiaddr": GraphQLVariable("multiaddr"), "port": GraphQLVariable("port"), "dns": GraphQLVariable("dns"), "ip": GraphQLVariable("ip")]], type: .object(AttachToArchivistClient.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(attachToArchivistClient: AttachToArchivistClient? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "attachToArchivistClient": attachToArchivistClient.flatMap { (value: AttachToArchivistClient) -> ResultMap in value.resultMap }])
    }

    public var attachToArchivistClient: AttachToArchivistClient? {
      get {
        return (resultMap["attachToArchivistClient"] as? ResultMap).flatMap { AttachToArchivistClient(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "attachToArchivistClient")
      }
    }

    public struct AttachToArchivistClient: GraphQLSelectionSet {
      public static let possibleTypes = ["Archivist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Archivist", "id": id])
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
    }
  }
}

public final class DetachFromArchivistClientMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation DetachFromArchivistClient($id: String!) {\n  detachFromArchivistClient(id: $id) {\n    __typename\n    id\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("detachFromArchivistClient", arguments: ["id": GraphQLVariable("id")], type: .object(DetachFromArchivistClient.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(detachFromArchivistClient: DetachFromArchivistClient? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "detachFromArchivistClient": detachFromArchivistClient.flatMap { (value: DetachFromArchivistClient) -> ResultMap in value.resultMap }])
    }

    public var detachFromArchivistClient: DetachFromArchivistClient? {
      get {
        return (resultMap["detachFromArchivistClient"] as? ResultMap).flatMap { DetachFromArchivistClient(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "detachFromArchivistClient")
      }
    }

    public struct DetachFromArchivistClient: GraphQLSelectionSet {
      public static let possibleTypes = ["Archivist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Archivist", "id": id])
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
    }
  }
}

public final class MyAttachedArchivistsQuery: GraphQLQuery {
  public let operationDefinition =
    "query MyAttachedArchivists {\n  myAttachedArchivists {\n    __typename\n    id\n    name\n    owner\n    photoUrl\n    dns\n    publicKey\n    multiaddr\n    port\n    ip\n    graphqlPort\n    boundWitnessServerPort\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("myAttachedArchivists", type: .list(.object(MyAttachedArchivist.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(myAttachedArchivists: [MyAttachedArchivist?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "myAttachedArchivists": myAttachedArchivists.flatMap { (value: [MyAttachedArchivist?]) -> [ResultMap?] in value.map { (value: MyAttachedArchivist?) -> ResultMap? in value.flatMap { (value: MyAttachedArchivist) -> ResultMap in value.resultMap } } }])
    }

    public var myAttachedArchivists: [MyAttachedArchivist?]? {
      get {
        return (resultMap["myAttachedArchivists"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [MyAttachedArchivist?] in value.map { (value: ResultMap?) -> MyAttachedArchivist? in value.flatMap { (value: ResultMap) -> MyAttachedArchivist in MyAttachedArchivist(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [MyAttachedArchivist?]) -> [ResultMap?] in value.map { (value: MyAttachedArchivist?) -> ResultMap? in value.flatMap { (value: MyAttachedArchivist) -> ResultMap in value.resultMap } } }, forKey: "myAttachedArchivists")
      }
    }

    public struct MyAttachedArchivist: GraphQLSelectionSet {
      public static let possibleTypes = ["Archivist"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(String.self)),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("owner", type: .scalar(String.self)),
        GraphQLField("photoUrl", type: .scalar(String.self)),
        GraphQLField("dns", type: .scalar(String.self)),
        GraphQLField("publicKey", type: .scalar(String.self)),
        GraphQLField("multiaddr", type: .scalar(String.self)),
        GraphQLField("port", type: .scalar(Int.self)),
        GraphQLField("ip", type: .scalar(String.self)),
        GraphQLField("graphqlPort", type: .scalar(Int.self)),
        GraphQLField("boundWitnessServerPort", type: .scalar(Int.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, name: String? = nil, owner: String? = nil, photoUrl: String? = nil, dns: String? = nil, publicKey: String? = nil, multiaddr: String? = nil, port: Int? = nil, ip: String? = nil, graphqlPort: Int? = nil, boundWitnessServerPort: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "Archivist", "id": id, "name": name, "owner": owner, "photoUrl": photoUrl, "dns": dns, "publicKey": publicKey, "multiaddr": multiaddr, "port": port, "ip": ip, "graphqlPort": graphqlPort, "boundWitnessServerPort": boundWitnessServerPort])
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

      public var owner: String? {
        get {
          return resultMap["owner"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "owner")
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

      public var dns: String? {
        get {
          return resultMap["dns"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dns")
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

      public var multiaddr: String? {
        get {
          return resultMap["multiaddr"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "multiaddr")
        }
      }

      public var port: Int? {
        get {
          return resultMap["port"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "port")
        }
      }

      @available(*, deprecated, message: "Use 'dns'.")
      public var ip: String? {
        get {
          return resultMap["ip"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "ip")
        }
      }

      public var graphqlPort: Int? {
        get {
          return resultMap["graphqlPort"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "graphqlPort")
        }
      }

      public var boundWitnessServerPort: Int? {
        get {
          return resultMap["boundWitnessServerPort"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "boundWitnessServerPort")
        }
      }
    }
  }
}

public final class AddFeedbackMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation AddFeedback($value: Int!, $text: String) {\n  addFeedback(value: $value, text: $text) {\n    __typename\n    id\n    owner\n    value\n    text\n    created\n    updated\n  }\n}"

  public var value: Int
  public var text: String?

  public init(value: Int, text: String? = nil) {
    self.value = value
    self.text = text
  }

  public var variables: GraphQLMap? {
    return ["value": value, "text": text]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addFeedback", arguments: ["value": GraphQLVariable("value"), "text": GraphQLVariable("text")], type: .object(AddFeedback.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addFeedback: AddFeedback? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addFeedback": addFeedback.flatMap { (value: AddFeedback) -> ResultMap in value.resultMap }])
    }

    public var addFeedback: AddFeedback? {
      get {
        return (resultMap["addFeedback"] as? ResultMap).flatMap { AddFeedback(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "addFeedback")
      }
    }

    public struct AddFeedback: GraphQLSelectionSet {
      public static let possibleTypes = ["Feedback"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(String.self)),
        GraphQLField("owner", type: .scalar(String.self)),
        GraphQLField("value", type: .scalar(Int.self)),
        GraphQLField("text", type: .scalar(String.self)),
        GraphQLField("created", type: .scalar(String.self)),
        GraphQLField("updated", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, owner: String? = nil, value: Int? = nil, text: String? = nil, created: String? = nil, updated: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Feedback", "id": id, "owner": owner, "value": value, "text": text, "created": created, "updated": updated])
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

      public var owner: String? {
        get {
          return resultMap["owner"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "owner")
        }
      }

      public var value: Int? {
        get {
          return resultMap["value"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "value")
        }
      }

      public var text: String? {
        get {
          return resultMap["text"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "text")
        }
      }

      public var created: String? {
        get {
          return resultMap["created"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "created")
        }
      }

      public var updated: String? {
        get {
          return resultMap["updated"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updated")
        }
      }
    }
  }
}

public final class UpdateFeedbackMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation UpdateFeedback($id: String!, $value: Int, $text: String) {\n  updateFeedback(id: $id, value: $value, text: $text) {\n    __typename\n    id\n    owner\n    value\n    text\n    created\n    updated\n  }\n}"

  public var id: String
  public var value: Int?
  public var text: String?

  public init(id: String, value: Int? = nil, text: String? = nil) {
    self.id = id
    self.value = value
    self.text = text
  }

  public var variables: GraphQLMap? {
    return ["id": id, "value": value, "text": text]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateFeedback", arguments: ["id": GraphQLVariable("id"), "value": GraphQLVariable("value"), "text": GraphQLVariable("text")], type: .object(UpdateFeedback.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateFeedback: UpdateFeedback? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateFeedback": updateFeedback.flatMap { (value: UpdateFeedback) -> ResultMap in value.resultMap }])
    }

    public var updateFeedback: UpdateFeedback? {
      get {
        return (resultMap["updateFeedback"] as? ResultMap).flatMap { UpdateFeedback(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateFeedback")
      }
    }

    public struct UpdateFeedback: GraphQLSelectionSet {
      public static let possibleTypes = ["Feedback"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(String.self)),
        GraphQLField("owner", type: .scalar(String.self)),
        GraphQLField("value", type: .scalar(Int.self)),
        GraphQLField("text", type: .scalar(String.self)),
        GraphQLField("created", type: .scalar(String.self)),
        GraphQLField("updated", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil, owner: String? = nil, value: Int? = nil, text: String? = nil, created: String? = nil, updated: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Feedback", "id": id, "owner": owner, "value": value, "text": text, "created": created, "updated": updated])
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

      public var owner: String? {
        get {
          return resultMap["owner"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "owner")
        }
      }

      public var value: Int? {
        get {
          return resultMap["value"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "value")
        }
      }

      public var text: String? {
        get {
          return resultMap["text"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "text")
        }
      }

      public var created: String? {
        get {
          return resultMap["created"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "created")
        }
      }

      public var updated: String? {
        get {
          return resultMap["updated"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updated")
        }
      }
    }
  }
}

public final class SetDefaultArchivistMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation SetDefaultArchivist($defaultArchivistId: String) {\n  updateMyUserInfo(info: {defaultArchivistId: $defaultArchivistId}) {\n    __typename\n    id\n  }\n}"

  public var defaultArchivistId: String?

  public init(defaultArchivistId: String? = nil) {
    self.defaultArchivistId = defaultArchivistId
  }

  public var variables: GraphQLMap? {
    return ["defaultArchivistId": defaultArchivistId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMyUserInfo", arguments: ["info": ["defaultArchivistId": GraphQLVariable("defaultArchivistId")]], type: .object(UpdateMyUserInfo.selections)),
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
        GraphQLField("id", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserInfo", "id": id])
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
    }
  }
}

public final class TotalArchivistsQuery: GraphQLQuery {
  public let operationDefinition =
    "query TotalArchivists {\n  archivists {\n    __typename\n    meta {\n      __typename\n      totalCount\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("archivists", type: .object(Archivist.selections)),
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
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(meta: Metum) {
        self.init(unsafeResultMap: ["__typename": "ArchivistPage", "meta": meta.resultMap])
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
    }
  }
}

public final class GetNodeQuery: GraphQLQuery {
  public let operationDefinition =
    "query GetNode($publicKey: String) {\n  node(publicKey: $publicKey) {\n    __typename\n    publicKey\n    displayName\n    lastGps {\n      __typename\n      latitude\n      longitude\n    }\n  }\n}"

  public var publicKey: String?

  public init(publicKey: String? = nil) {
    self.publicKey = publicKey
  }

  public var variables: GraphQLMap? {
    return ["publicKey": publicKey]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("node", arguments: ["publicKey": GraphQLVariable("publicKey")], type: .object(Node.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(node: Node? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
    }

    public var node: Node? {
      get {
        return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "node")
      }
    }

    public struct Node: GraphQLSelectionSet {
      public static let possibleTypes = ["Node"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("publicKey", type: .scalar(String.self)),
        GraphQLField("displayName", type: .scalar(String.self)),
        GraphQLField("lastGps", type: .object(LastGp.selections)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(publicKey: String? = nil, displayName: String? = nil, lastGps: LastGp? = nil) {
        self.init(unsafeResultMap: ["__typename": "Node", "publicKey": publicKey, "displayName": displayName, "lastGps": lastGps.flatMap { (value: LastGp) -> ResultMap in value.resultMap }])
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

      public var displayName: String? {
        get {
          return resultMap["displayName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "displayName")
        }
      }

      public var lastGps: LastGp? {
        get {
          return (resultMap["lastGps"] as? ResultMap).flatMap { LastGp(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "lastGps")
        }
      }

      public struct LastGp: GraphQLSelectionSet {
        public static let possibleTypes = ["Point"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("latitude", type: .scalar(String.self)),
          GraphQLField("longitude", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(latitude: String? = nil, longitude: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Point", "latitude": latitude, "longitude": longitude])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var latitude: String? {
          get {
            return resultMap["latitude"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "latitude")
          }
        }

        public var longitude: String? {
          get {
            return resultMap["longitude"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "longitude")
          }
        }
      }
    }
  }
}

public final class GetTotalInNetworkQuery: GraphQLQuery {
  public let operationDefinition =
    "query GetTotalInNetwork {\n  blocks {\n    __typename\n    pagination {\n      __typename\n      count\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("blocks", type: .object(Block.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(blocks: Block? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "blocks": blocks.flatMap { (value: Block) -> ResultMap in value.resultMap }])
    }

    public var blocks: Block? {
      get {
        return (resultMap["blocks"] as? ResultMap).flatMap { Block(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "blocks")
      }
    }

    public struct Block: GraphQLSelectionSet {
      public static let possibleTypes = ["BlockList"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pagination", type: .object(Pagination.selections)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pagination: Pagination? = nil) {
        self.init(unsafeResultMap: ["__typename": "BlockList", "pagination": pagination.flatMap { (value: Pagination) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var pagination: Pagination? {
        get {
          return (resultMap["pagination"] as? ResultMap).flatMap { Pagination(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "pagination")
        }
      }

      public struct Pagination: GraphQLSelectionSet {
        public static let possibleTypes = ["Pagination"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("count", type: .scalar(Int.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(count: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Pagination", "count": count])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var count: Int? {
          get {
            return resultMap["count"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "count")
          }
        }
      }
    }
  }
}