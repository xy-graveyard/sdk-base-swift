//  This file was automatically generated and should not be edited.

import Apollo

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