//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateTreatmentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, username: String, name: String? = nil, provider: String, doctor: String, attorney: String, treatment: String? = nil, date: String? = nil, viewed: String? = nil) {
    graphQLMap = ["id": id, "username": username, "name": name, "provider": provider, "doctor": doctor, "attorney": attorney, "treatment": treatment, "date": date, "viewed": viewed]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String {
    get {
      return graphQLMap["username"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var provider: String {
    get {
      return graphQLMap["provider"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "provider")
    }
  }

  public var doctor: String {
    get {
      return graphQLMap["doctor"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "doctor")
    }
  }

  public var attorney: String {
    get {
      return graphQLMap["attorney"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attorney")
    }
  }

  public var treatment: String? {
    get {
      return graphQLMap["treatment"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "treatment")
    }
  }

  public var date: String? {
    get {
      return graphQLMap["date"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var viewed: String? {
    get {
      return graphQLMap["viewed"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "viewed")
    }
  }
}

public struct ModelTreatmentConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(username: ModelStringInput? = nil, name: ModelStringInput? = nil, provider: ModelStringInput? = nil, doctor: ModelStringInput? = nil, attorney: ModelStringInput? = nil, treatment: ModelStringInput? = nil, date: ModelStringInput? = nil, viewed: ModelStringInput? = nil, and: [ModelTreatmentConditionInput?]? = nil, or: [ModelTreatmentConditionInput?]? = nil, not: ModelTreatmentConditionInput? = nil) {
    graphQLMap = ["username": username, "name": name, "provider": provider, "doctor": doctor, "attorney": attorney, "treatment": treatment, "date": date, "viewed": viewed, "and": and, "or": or, "not": not]
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var provider: ModelStringInput? {
    get {
      return graphQLMap["provider"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "provider")
    }
  }

  public var doctor: ModelStringInput? {
    get {
      return graphQLMap["doctor"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "doctor")
    }
  }

  public var attorney: ModelStringInput? {
    get {
      return graphQLMap["attorney"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attorney")
    }
  }

  public var treatment: ModelStringInput? {
    get {
      return graphQLMap["treatment"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "treatment")
    }
  }

  public var date: ModelStringInput? {
    get {
      return graphQLMap["date"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var viewed: ModelStringInput? {
    get {
      return graphQLMap["viewed"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "viewed")
    }
  }

  public var and: [ModelTreatmentConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelTreatmentConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelTreatmentConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelTreatmentConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelTreatmentConditionInput? {
    get {
      return graphQLMap["not"] as! ModelTreatmentConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct UpdateTreatmentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, username: String? = nil, name: String? = nil, provider: String? = nil, doctor: String? = nil, attorney: String? = nil, treatment: String? = nil, date: String? = nil, viewed: String? = nil) {
    graphQLMap = ["id": id, "username": username, "name": name, "provider": provider, "doctor": doctor, "attorney": attorney, "treatment": treatment, "date": date, "viewed": viewed]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String? {
    get {
      return graphQLMap["username"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var provider: String? {
    get {
      return graphQLMap["provider"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "provider")
    }
  }

  public var doctor: String? {
    get {
      return graphQLMap["doctor"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "doctor")
    }
  }

  public var attorney: String? {
    get {
      return graphQLMap["attorney"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attorney")
    }
  }

  public var treatment: String? {
    get {
      return graphQLMap["treatment"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "treatment")
    }
  }

  public var date: String? {
    get {
      return graphQLMap["date"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var viewed: String? {
    get {
      return graphQLMap["viewed"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "viewed")
    }
  }
}

public struct DeleteTreatmentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateAttorneyInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, username: String, name: String, firm: String, currentCode: GraphQLID? = nil) {
    graphQLMap = ["id": id, "username": username, "name": name, "firm": firm, "current_code": currentCode]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String {
    get {
      return graphQLMap["username"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var firm: String {
    get {
      return graphQLMap["firm"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firm")
    }
  }

  public var currentCode: GraphQLID? {
    get {
      return graphQLMap["current_code"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "current_code")
    }
  }
}

public struct ModelAttorneyConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(username: ModelStringInput? = nil, name: ModelStringInput? = nil, firm: ModelStringInput? = nil, currentCode: ModelIDInput? = nil, and: [ModelAttorneyConditionInput?]? = nil, or: [ModelAttorneyConditionInput?]? = nil, not: ModelAttorneyConditionInput? = nil) {
    graphQLMap = ["username": username, "name": name, "firm": firm, "current_code": currentCode, "and": and, "or": or, "not": not]
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var firm: ModelStringInput? {
    get {
      return graphQLMap["firm"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firm")
    }
  }

  public var currentCode: ModelIDInput? {
    get {
      return graphQLMap["current_code"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "current_code")
    }
  }

  public var and: [ModelAttorneyConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelAttorneyConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelAttorneyConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelAttorneyConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelAttorneyConditionInput? {
    get {
      return graphQLMap["not"] as! ModelAttorneyConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct UpdateAttorneyInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, username: String? = nil, name: String? = nil, firm: String? = nil, currentCode: GraphQLID? = nil) {
    graphQLMap = ["id": id, "username": username, "name": name, "firm": firm, "current_code": currentCode]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String? {
    get {
      return graphQLMap["username"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var firm: String? {
    get {
      return graphQLMap["firm"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firm")
    }
  }

  public var currentCode: GraphQLID? {
    get {
      return graphQLMap["current_code"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "current_code")
    }
  }
}

public struct DeleteAttorneyInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateFirmInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, username: String, firm: String, currentCode: GraphQLID? = nil) {
    graphQLMap = ["id": id, "username": username, "firm": firm, "current_code": currentCode]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String {
    get {
      return graphQLMap["username"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var firm: String {
    get {
      return graphQLMap["firm"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firm")
    }
  }

  public var currentCode: GraphQLID? {
    get {
      return graphQLMap["current_code"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "current_code")
    }
  }
}

public struct ModelFirmConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(username: ModelStringInput? = nil, firm: ModelStringInput? = nil, currentCode: ModelIDInput? = nil, and: [ModelFirmConditionInput?]? = nil, or: [ModelFirmConditionInput?]? = nil, not: ModelFirmConditionInput? = nil) {
    graphQLMap = ["username": username, "firm": firm, "current_code": currentCode, "and": and, "or": or, "not": not]
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var firm: ModelStringInput? {
    get {
      return graphQLMap["firm"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firm")
    }
  }

  public var currentCode: ModelIDInput? {
    get {
      return graphQLMap["current_code"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "current_code")
    }
  }

  public var and: [ModelFirmConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelFirmConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelFirmConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelFirmConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelFirmConditionInput? {
    get {
      return graphQLMap["not"] as! ModelFirmConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateFirmInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, username: String? = nil, firm: String? = nil, currentCode: GraphQLID? = nil) {
    graphQLMap = ["id": id, "username": username, "firm": firm, "current_code": currentCode]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String? {
    get {
      return graphQLMap["username"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var firm: String? {
    get {
      return graphQLMap["firm"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firm")
    }
  }

  public var currentCode: GraphQLID? {
    get {
      return graphQLMap["current_code"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "current_code")
    }
  }
}

public struct DeleteFirmInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateLimitationInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, username: String, description: String) {
    graphQLMap = ["id": id, "username": username, "description": description]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String {
    get {
      return graphQLMap["username"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var description: String {
    get {
      return graphQLMap["description"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }
}

public struct ModelLimitationConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(username: ModelStringInput? = nil, description: ModelStringInput? = nil, and: [ModelLimitationConditionInput?]? = nil, or: [ModelLimitationConditionInput?]? = nil, not: ModelLimitationConditionInput? = nil) {
    graphQLMap = ["username": username, "description": description, "and": and, "or": or, "not": not]
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var description: ModelStringInput? {
    get {
      return graphQLMap["description"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var and: [ModelLimitationConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelLimitationConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelLimitationConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelLimitationConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelLimitationConditionInput? {
    get {
      return graphQLMap["not"] as! ModelLimitationConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateLimitationInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, username: String? = nil, description: String? = nil) {
    graphQLMap = ["id": id, "username": username, "description": description]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String? {
    get {
      return graphQLMap["username"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }
}

public struct DeleteLimitationInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateDocumentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, username: String, contractKey: GraphQLID? = nil, documentName: String? = nil, viewed: String? = nil, firm: String) {
    graphQLMap = ["id": id, "username": username, "contractKey": contractKey, "documentName": documentName, "viewed": viewed, "firm": firm]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String {
    get {
      return graphQLMap["username"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var contractKey: GraphQLID? {
    get {
      return graphQLMap["contractKey"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contractKey")
    }
  }

  public var documentName: String? {
    get {
      return graphQLMap["documentName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "documentName")
    }
  }

  public var viewed: String? {
    get {
      return graphQLMap["viewed"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "viewed")
    }
  }

  public var firm: String {
    get {
      return graphQLMap["firm"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firm")
    }
  }
}

public struct ModelDocumentConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(username: ModelStringInput? = nil, contractKey: ModelIDInput? = nil, documentName: ModelStringInput? = nil, viewed: ModelStringInput? = nil, firm: ModelStringInput? = nil, and: [ModelDocumentConditionInput?]? = nil, or: [ModelDocumentConditionInput?]? = nil, not: ModelDocumentConditionInput? = nil) {
    graphQLMap = ["username": username, "contractKey": contractKey, "documentName": documentName, "viewed": viewed, "firm": firm, "and": and, "or": or, "not": not]
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var contractKey: ModelIDInput? {
    get {
      return graphQLMap["contractKey"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contractKey")
    }
  }

  public var documentName: ModelStringInput? {
    get {
      return graphQLMap["documentName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "documentName")
    }
  }

  public var viewed: ModelStringInput? {
    get {
      return graphQLMap["viewed"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "viewed")
    }
  }

  public var firm: ModelStringInput? {
    get {
      return graphQLMap["firm"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firm")
    }
  }

  public var and: [ModelDocumentConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelDocumentConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelDocumentConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelDocumentConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelDocumentConditionInput? {
    get {
      return graphQLMap["not"] as! ModelDocumentConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateDocumentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, username: String? = nil, contractKey: GraphQLID? = nil, documentName: String? = nil, viewed: String? = nil, firm: String? = nil) {
    graphQLMap = ["id": id, "username": username, "contractKey": contractKey, "documentName": documentName, "viewed": viewed, "firm": firm]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String? {
    get {
      return graphQLMap["username"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var contractKey: GraphQLID? {
    get {
      return graphQLMap["contractKey"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contractKey")
    }
  }

  public var documentName: String? {
    get {
      return graphQLMap["documentName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "documentName")
    }
  }

  public var viewed: String? {
    get {
      return graphQLMap["viewed"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "viewed")
    }
  }

  public var firm: String? {
    get {
      return graphQLMap["firm"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firm")
    }
  }
}

public struct DeleteDocumentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelTreatmentFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, username: ModelStringInput? = nil, name: ModelStringInput? = nil, provider: ModelStringInput? = nil, doctor: ModelStringInput? = nil, attorney: ModelStringInput? = nil, treatment: ModelStringInput? = nil, date: ModelStringInput? = nil, viewed: ModelStringInput? = nil, and: [ModelTreatmentFilterInput?]? = nil, or: [ModelTreatmentFilterInput?]? = nil, not: ModelTreatmentFilterInput? = nil) {
    graphQLMap = ["id": id, "username": username, "name": name, "provider": provider, "doctor": doctor, "attorney": attorney, "treatment": treatment, "date": date, "viewed": viewed, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var provider: ModelStringInput? {
    get {
      return graphQLMap["provider"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "provider")
    }
  }

  public var doctor: ModelStringInput? {
    get {
      return graphQLMap["doctor"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "doctor")
    }
  }

  public var attorney: ModelStringInput? {
    get {
      return graphQLMap["attorney"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attorney")
    }
  }

  public var treatment: ModelStringInput? {
    get {
      return graphQLMap["treatment"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "treatment")
    }
  }

  public var date: ModelStringInput? {
    get {
      return graphQLMap["date"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var viewed: ModelStringInput? {
    get {
      return graphQLMap["viewed"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "viewed")
    }
  }

  public var and: [ModelTreatmentFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelTreatmentFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelTreatmentFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelTreatmentFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelTreatmentFilterInput? {
    get {
      return graphQLMap["not"] as! ModelTreatmentFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelAttorneyFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, username: ModelStringInput? = nil, name: ModelStringInput? = nil, firm: ModelStringInput? = nil, currentCode: ModelIDInput? = nil, and: [ModelAttorneyFilterInput?]? = nil, or: [ModelAttorneyFilterInput?]? = nil, not: ModelAttorneyFilterInput? = nil) {
    graphQLMap = ["id": id, "username": username, "name": name, "firm": firm, "current_code": currentCode, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var firm: ModelStringInput? {
    get {
      return graphQLMap["firm"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firm")
    }
  }

  public var currentCode: ModelIDInput? {
    get {
      return graphQLMap["current_code"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "current_code")
    }
  }

  public var and: [ModelAttorneyFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelAttorneyFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelAttorneyFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelAttorneyFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelAttorneyFilterInput? {
    get {
      return graphQLMap["not"] as! ModelAttorneyFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelFirmFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, username: ModelStringInput? = nil, firm: ModelStringInput? = nil, currentCode: ModelIDInput? = nil, and: [ModelFirmFilterInput?]? = nil, or: [ModelFirmFilterInput?]? = nil, not: ModelFirmFilterInput? = nil) {
    graphQLMap = ["id": id, "username": username, "firm": firm, "current_code": currentCode, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var firm: ModelStringInput? {
    get {
      return graphQLMap["firm"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firm")
    }
  }

  public var currentCode: ModelIDInput? {
    get {
      return graphQLMap["current_code"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "current_code")
    }
  }

  public var and: [ModelFirmFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelFirmFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelFirmFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelFirmFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelFirmFilterInput? {
    get {
      return graphQLMap["not"] as! ModelFirmFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelLimitationFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, username: ModelStringInput? = nil, description: ModelStringInput? = nil, and: [ModelLimitationFilterInput?]? = nil, or: [ModelLimitationFilterInput?]? = nil, not: ModelLimitationFilterInput? = nil) {
    graphQLMap = ["id": id, "username": username, "description": description, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var description: ModelStringInput? {
    get {
      return graphQLMap["description"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var and: [ModelLimitationFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelLimitationFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelLimitationFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelLimitationFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelLimitationFilterInput? {
    get {
      return graphQLMap["not"] as! ModelLimitationFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelDocumentFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, username: ModelStringInput? = nil, contractKey: ModelIDInput? = nil, documentName: ModelStringInput? = nil, viewed: ModelStringInput? = nil, firm: ModelStringInput? = nil, and: [ModelDocumentFilterInput?]? = nil, or: [ModelDocumentFilterInput?]? = nil, not: ModelDocumentFilterInput? = nil) {
    graphQLMap = ["id": id, "username": username, "contractKey": contractKey, "documentName": documentName, "viewed": viewed, "firm": firm, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var contractKey: ModelIDInput? {
    get {
      return graphQLMap["contractKey"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contractKey")
    }
  }

  public var documentName: ModelStringInput? {
    get {
      return graphQLMap["documentName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "documentName")
    }
  }

  public var viewed: ModelStringInput? {
    get {
      return graphQLMap["viewed"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "viewed")
    }
  }

  public var firm: ModelStringInput? {
    get {
      return graphQLMap["firm"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firm")
    }
  }

  public var and: [ModelDocumentFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelDocumentFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelDocumentFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelDocumentFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelDocumentFilterInput? {
    get {
      return graphQLMap["not"] as! ModelDocumentFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class CreateTreatmentMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateTreatment($input: CreateTreatmentInput!, $condition: ModelTreatmentConditionInput) {\n  createTreatment(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    name\n    provider\n    doctor\n    attorney\n    treatment\n    date\n    viewed\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateTreatmentInput
  public var condition: ModelTreatmentConditionInput?

  public init(input: CreateTreatmentInput, condition: ModelTreatmentConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createTreatment", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateTreatment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createTreatment: CreateTreatment? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createTreatment": createTreatment.flatMap { $0.snapshot }])
    }

    public var createTreatment: CreateTreatment? {
      get {
        return (snapshot["createTreatment"] as? Snapshot).flatMap { CreateTreatment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createTreatment")
      }
    }

    public struct CreateTreatment: GraphQLSelectionSet {
      public static let possibleTypes = ["Treatment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("provider", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctor", type: .nonNull(.scalar(String.self))),
        GraphQLField("attorney", type: .nonNull(.scalar(String.self))),
        GraphQLField("treatment", type: .scalar(String.self)),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("viewed", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, name: String? = nil, provider: String, doctor: String, attorney: String, treatment: String? = nil, date: String? = nil, viewed: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Treatment", "id": id, "username": username, "name": name, "provider": provider, "doctor": doctor, "attorney": attorney, "treatment": treatment, "date": date, "viewed": viewed, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var provider: String {
        get {
          return snapshot["provider"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "provider")
        }
      }

      public var doctor: String {
        get {
          return snapshot["doctor"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctor")
        }
      }

      public var attorney: String {
        get {
          return snapshot["attorney"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "attorney")
        }
      }

      public var treatment: String? {
        get {
          return snapshot["treatment"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "treatment")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var viewed: String? {
        get {
          return snapshot["viewed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "viewed")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateTreatmentMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateTreatment($input: UpdateTreatmentInput!, $condition: ModelTreatmentConditionInput) {\n  updateTreatment(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    name\n    provider\n    doctor\n    attorney\n    treatment\n    date\n    viewed\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateTreatmentInput
  public var condition: ModelTreatmentConditionInput?

  public init(input: UpdateTreatmentInput, condition: ModelTreatmentConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateTreatment", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateTreatment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateTreatment: UpdateTreatment? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateTreatment": updateTreatment.flatMap { $0.snapshot }])
    }

    public var updateTreatment: UpdateTreatment? {
      get {
        return (snapshot["updateTreatment"] as? Snapshot).flatMap { UpdateTreatment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateTreatment")
      }
    }

    public struct UpdateTreatment: GraphQLSelectionSet {
      public static let possibleTypes = ["Treatment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("provider", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctor", type: .nonNull(.scalar(String.self))),
        GraphQLField("attorney", type: .nonNull(.scalar(String.self))),
        GraphQLField("treatment", type: .scalar(String.self)),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("viewed", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, name: String? = nil, provider: String, doctor: String, attorney: String, treatment: String? = nil, date: String? = nil, viewed: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Treatment", "id": id, "username": username, "name": name, "provider": provider, "doctor": doctor, "attorney": attorney, "treatment": treatment, "date": date, "viewed": viewed, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var provider: String {
        get {
          return snapshot["provider"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "provider")
        }
      }

      public var doctor: String {
        get {
          return snapshot["doctor"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctor")
        }
      }

      public var attorney: String {
        get {
          return snapshot["attorney"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "attorney")
        }
      }

      public var treatment: String? {
        get {
          return snapshot["treatment"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "treatment")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var viewed: String? {
        get {
          return snapshot["viewed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "viewed")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteTreatmentMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteTreatment($input: DeleteTreatmentInput!, $condition: ModelTreatmentConditionInput) {\n  deleteTreatment(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    name\n    provider\n    doctor\n    attorney\n    treatment\n    date\n    viewed\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteTreatmentInput
  public var condition: ModelTreatmentConditionInput?

  public init(input: DeleteTreatmentInput, condition: ModelTreatmentConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteTreatment", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteTreatment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteTreatment: DeleteTreatment? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteTreatment": deleteTreatment.flatMap { $0.snapshot }])
    }

    public var deleteTreatment: DeleteTreatment? {
      get {
        return (snapshot["deleteTreatment"] as? Snapshot).flatMap { DeleteTreatment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteTreatment")
      }
    }

    public struct DeleteTreatment: GraphQLSelectionSet {
      public static let possibleTypes = ["Treatment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("provider", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctor", type: .nonNull(.scalar(String.self))),
        GraphQLField("attorney", type: .nonNull(.scalar(String.self))),
        GraphQLField("treatment", type: .scalar(String.self)),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("viewed", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, name: String? = nil, provider: String, doctor: String, attorney: String, treatment: String? = nil, date: String? = nil, viewed: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Treatment", "id": id, "username": username, "name": name, "provider": provider, "doctor": doctor, "attorney": attorney, "treatment": treatment, "date": date, "viewed": viewed, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var provider: String {
        get {
          return snapshot["provider"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "provider")
        }
      }

      public var doctor: String {
        get {
          return snapshot["doctor"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctor")
        }
      }

      public var attorney: String {
        get {
          return snapshot["attorney"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "attorney")
        }
      }

      public var treatment: String? {
        get {
          return snapshot["treatment"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "treatment")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var viewed: String? {
        get {
          return snapshot["viewed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "viewed")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class CreateAttorneyMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateAttorney($input: CreateAttorneyInput!, $condition: ModelAttorneyConditionInput) {\n  createAttorney(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    name\n    firm\n    current_code\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateAttorneyInput
  public var condition: ModelAttorneyConditionInput?

  public init(input: CreateAttorneyInput, condition: ModelAttorneyConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createAttorney", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateAttorney.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createAttorney: CreateAttorney? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createAttorney": createAttorney.flatMap { $0.snapshot }])
    }

    public var createAttorney: CreateAttorney? {
      get {
        return (snapshot["createAttorney"] as? Snapshot).flatMap { CreateAttorney(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createAttorney")
      }
    }

    public struct CreateAttorney: GraphQLSelectionSet {
      public static let possibleTypes = ["Attorney"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("current_code", type: .scalar(GraphQLID.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, name: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Attorney", "id": id, "username": username, "name": name, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var currentCode: GraphQLID? {
        get {
          return snapshot["current_code"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "current_code")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateAttorneyMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateAttorney($input: UpdateAttorneyInput!, $condition: ModelAttorneyConditionInput) {\n  updateAttorney(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    name\n    firm\n    current_code\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateAttorneyInput
  public var condition: ModelAttorneyConditionInput?

  public init(input: UpdateAttorneyInput, condition: ModelAttorneyConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateAttorney", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateAttorney.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateAttorney: UpdateAttorney? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateAttorney": updateAttorney.flatMap { $0.snapshot }])
    }

    public var updateAttorney: UpdateAttorney? {
      get {
        return (snapshot["updateAttorney"] as? Snapshot).flatMap { UpdateAttorney(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateAttorney")
      }
    }

    public struct UpdateAttorney: GraphQLSelectionSet {
      public static let possibleTypes = ["Attorney"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("current_code", type: .scalar(GraphQLID.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, name: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Attorney", "id": id, "username": username, "name": name, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var currentCode: GraphQLID? {
        get {
          return snapshot["current_code"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "current_code")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteAttorneyMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteAttorney($input: DeleteAttorneyInput!, $condition: ModelAttorneyConditionInput) {\n  deleteAttorney(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    name\n    firm\n    current_code\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteAttorneyInput
  public var condition: ModelAttorneyConditionInput?

  public init(input: DeleteAttorneyInput, condition: ModelAttorneyConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteAttorney", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteAttorney.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteAttorney: DeleteAttorney? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteAttorney": deleteAttorney.flatMap { $0.snapshot }])
    }

    public var deleteAttorney: DeleteAttorney? {
      get {
        return (snapshot["deleteAttorney"] as? Snapshot).flatMap { DeleteAttorney(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteAttorney")
      }
    }

    public struct DeleteAttorney: GraphQLSelectionSet {
      public static let possibleTypes = ["Attorney"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("current_code", type: .scalar(GraphQLID.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, name: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Attorney", "id": id, "username": username, "name": name, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var currentCode: GraphQLID? {
        get {
          return snapshot["current_code"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "current_code")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class CreateFirmMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateFirm($input: CreateFirmInput!, $condition: ModelFirmConditionInput) {\n  createFirm(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    firm\n    current_code\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateFirmInput
  public var condition: ModelFirmConditionInput?

  public init(input: CreateFirmInput, condition: ModelFirmConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createFirm", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateFirm.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createFirm: CreateFirm? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createFirm": createFirm.flatMap { $0.snapshot }])
    }

    public var createFirm: CreateFirm? {
      get {
        return (snapshot["createFirm"] as? Snapshot).flatMap { CreateFirm(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createFirm")
      }
    }

    public struct CreateFirm: GraphQLSelectionSet {
      public static let possibleTypes = ["Firm"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("current_code", type: .scalar(GraphQLID.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Firm", "id": id, "username": username, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var currentCode: GraphQLID? {
        get {
          return snapshot["current_code"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "current_code")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateFirmMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateFirm($input: UpdateFirmInput!, $condition: ModelFirmConditionInput) {\n  updateFirm(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    firm\n    current_code\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateFirmInput
  public var condition: ModelFirmConditionInput?

  public init(input: UpdateFirmInput, condition: ModelFirmConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateFirm", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateFirm.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateFirm: UpdateFirm? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateFirm": updateFirm.flatMap { $0.snapshot }])
    }

    public var updateFirm: UpdateFirm? {
      get {
        return (snapshot["updateFirm"] as? Snapshot).flatMap { UpdateFirm(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateFirm")
      }
    }

    public struct UpdateFirm: GraphQLSelectionSet {
      public static let possibleTypes = ["Firm"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("current_code", type: .scalar(GraphQLID.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Firm", "id": id, "username": username, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var currentCode: GraphQLID? {
        get {
          return snapshot["current_code"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "current_code")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteFirmMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteFirm($input: DeleteFirmInput!, $condition: ModelFirmConditionInput) {\n  deleteFirm(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    firm\n    current_code\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteFirmInput
  public var condition: ModelFirmConditionInput?

  public init(input: DeleteFirmInput, condition: ModelFirmConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteFirm", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteFirm.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteFirm: DeleteFirm? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteFirm": deleteFirm.flatMap { $0.snapshot }])
    }

    public var deleteFirm: DeleteFirm? {
      get {
        return (snapshot["deleteFirm"] as? Snapshot).flatMap { DeleteFirm(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteFirm")
      }
    }

    public struct DeleteFirm: GraphQLSelectionSet {
      public static let possibleTypes = ["Firm"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("current_code", type: .scalar(GraphQLID.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Firm", "id": id, "username": username, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var currentCode: GraphQLID? {
        get {
          return snapshot["current_code"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "current_code")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class CreateLimitationMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateLimitation($input: CreateLimitationInput!, $condition: ModelLimitationConditionInput) {\n  createLimitation(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    description\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateLimitationInput
  public var condition: ModelLimitationConditionInput?

  public init(input: CreateLimitationInput, condition: ModelLimitationConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createLimitation", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateLimitation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createLimitation: CreateLimitation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createLimitation": createLimitation.flatMap { $0.snapshot }])
    }

    public var createLimitation: CreateLimitation? {
      get {
        return (snapshot["createLimitation"] as? Snapshot).flatMap { CreateLimitation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createLimitation")
      }
    }

    public struct CreateLimitation: GraphQLSelectionSet {
      public static let possibleTypes = ["Limitation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, description: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Limitation", "id": id, "username": username, "description": description, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateLimitationMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateLimitation($input: UpdateLimitationInput!, $condition: ModelLimitationConditionInput) {\n  updateLimitation(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    description\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateLimitationInput
  public var condition: ModelLimitationConditionInput?

  public init(input: UpdateLimitationInput, condition: ModelLimitationConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateLimitation", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateLimitation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateLimitation: UpdateLimitation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateLimitation": updateLimitation.flatMap { $0.snapshot }])
    }

    public var updateLimitation: UpdateLimitation? {
      get {
        return (snapshot["updateLimitation"] as? Snapshot).flatMap { UpdateLimitation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateLimitation")
      }
    }

    public struct UpdateLimitation: GraphQLSelectionSet {
      public static let possibleTypes = ["Limitation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, description: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Limitation", "id": id, "username": username, "description": description, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteLimitationMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteLimitation($input: DeleteLimitationInput!, $condition: ModelLimitationConditionInput) {\n  deleteLimitation(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    description\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteLimitationInput
  public var condition: ModelLimitationConditionInput?

  public init(input: DeleteLimitationInput, condition: ModelLimitationConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteLimitation", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteLimitation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteLimitation: DeleteLimitation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteLimitation": deleteLimitation.flatMap { $0.snapshot }])
    }

    public var deleteLimitation: DeleteLimitation? {
      get {
        return (snapshot["deleteLimitation"] as? Snapshot).flatMap { DeleteLimitation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteLimitation")
      }
    }

    public struct DeleteLimitation: GraphQLSelectionSet {
      public static let possibleTypes = ["Limitation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, description: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Limitation", "id": id, "username": username, "description": description, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class CreateDocumentMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateDocument($input: CreateDocumentInput!, $condition: ModelDocumentConditionInput) {\n  createDocument(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    contractKey\n    documentName\n    viewed\n    firm\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateDocumentInput
  public var condition: ModelDocumentConditionInput?

  public init(input: CreateDocumentInput, condition: ModelDocumentConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createDocument", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createDocument: CreateDocument? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createDocument": createDocument.flatMap { $0.snapshot }])
    }

    public var createDocument: CreateDocument? {
      get {
        return (snapshot["createDocument"] as? Snapshot).flatMap { CreateDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createDocument")
      }
    }

    public struct CreateDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["Document"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("contractKey", type: .scalar(GraphQLID.self)),
        GraphQLField("documentName", type: .scalar(String.self)),
        GraphQLField("viewed", type: .scalar(String.self)),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, contractKey: GraphQLID? = nil, documentName: String? = nil, viewed: String? = nil, firm: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Document", "id": id, "username": username, "contractKey": contractKey, "documentName": documentName, "viewed": viewed, "firm": firm, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var contractKey: GraphQLID? {
        get {
          return snapshot["contractKey"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "contractKey")
        }
      }

      public var documentName: String? {
        get {
          return snapshot["documentName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "documentName")
        }
      }

      public var viewed: String? {
        get {
          return snapshot["viewed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "viewed")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateDocumentMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateDocument($input: UpdateDocumentInput!, $condition: ModelDocumentConditionInput) {\n  updateDocument(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    contractKey\n    documentName\n    viewed\n    firm\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateDocumentInput
  public var condition: ModelDocumentConditionInput?

  public init(input: UpdateDocumentInput, condition: ModelDocumentConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateDocument", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateDocument: UpdateDocument? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateDocument": updateDocument.flatMap { $0.snapshot }])
    }

    public var updateDocument: UpdateDocument? {
      get {
        return (snapshot["updateDocument"] as? Snapshot).flatMap { UpdateDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateDocument")
      }
    }

    public struct UpdateDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["Document"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("contractKey", type: .scalar(GraphQLID.self)),
        GraphQLField("documentName", type: .scalar(String.self)),
        GraphQLField("viewed", type: .scalar(String.self)),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, contractKey: GraphQLID? = nil, documentName: String? = nil, viewed: String? = nil, firm: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Document", "id": id, "username": username, "contractKey": contractKey, "documentName": documentName, "viewed": viewed, "firm": firm, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var contractKey: GraphQLID? {
        get {
          return snapshot["contractKey"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "contractKey")
        }
      }

      public var documentName: String? {
        get {
          return snapshot["documentName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "documentName")
        }
      }

      public var viewed: String? {
        get {
          return snapshot["viewed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "viewed")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteDocumentMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteDocument($input: DeleteDocumentInput!, $condition: ModelDocumentConditionInput) {\n  deleteDocument(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    contractKey\n    documentName\n    viewed\n    firm\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteDocumentInput
  public var condition: ModelDocumentConditionInput?

  public init(input: DeleteDocumentInput, condition: ModelDocumentConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteDocument", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteDocument: DeleteDocument? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteDocument": deleteDocument.flatMap { $0.snapshot }])
    }

    public var deleteDocument: DeleteDocument? {
      get {
        return (snapshot["deleteDocument"] as? Snapshot).flatMap { DeleteDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteDocument")
      }
    }

    public struct DeleteDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["Document"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("contractKey", type: .scalar(GraphQLID.self)),
        GraphQLField("documentName", type: .scalar(String.self)),
        GraphQLField("viewed", type: .scalar(String.self)),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, contractKey: GraphQLID? = nil, documentName: String? = nil, viewed: String? = nil, firm: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Document", "id": id, "username": username, "contractKey": contractKey, "documentName": documentName, "viewed": viewed, "firm": firm, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var contractKey: GraphQLID? {
        get {
          return snapshot["contractKey"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "contractKey")
        }
      }

      public var documentName: String? {
        get {
          return snapshot["documentName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "documentName")
        }
      }

      public var viewed: String? {
        get {
          return snapshot["viewed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "viewed")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class GetTreatmentQuery: GraphQLQuery {
  public static let operationString =
    "query GetTreatment($id: ID!) {\n  getTreatment(id: $id) {\n    __typename\n    id\n    username\n    name\n    provider\n    doctor\n    attorney\n    treatment\n    date\n    viewed\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getTreatment", arguments: ["id": GraphQLVariable("id")], type: .object(GetTreatment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getTreatment: GetTreatment? = nil) {
      self.init(snapshot: ["__typename": "Query", "getTreatment": getTreatment.flatMap { $0.snapshot }])
    }

    public var getTreatment: GetTreatment? {
      get {
        return (snapshot["getTreatment"] as? Snapshot).flatMap { GetTreatment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getTreatment")
      }
    }

    public struct GetTreatment: GraphQLSelectionSet {
      public static let possibleTypes = ["Treatment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("provider", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctor", type: .nonNull(.scalar(String.self))),
        GraphQLField("attorney", type: .nonNull(.scalar(String.self))),
        GraphQLField("treatment", type: .scalar(String.self)),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("viewed", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, name: String? = nil, provider: String, doctor: String, attorney: String, treatment: String? = nil, date: String? = nil, viewed: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Treatment", "id": id, "username": username, "name": name, "provider": provider, "doctor": doctor, "attorney": attorney, "treatment": treatment, "date": date, "viewed": viewed, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var provider: String {
        get {
          return snapshot["provider"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "provider")
        }
      }

      public var doctor: String {
        get {
          return snapshot["doctor"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctor")
        }
      }

      public var attorney: String {
        get {
          return snapshot["attorney"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "attorney")
        }
      }

      public var treatment: String? {
        get {
          return snapshot["treatment"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "treatment")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var viewed: String? {
        get {
          return snapshot["viewed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "viewed")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListTreatmentsQuery: GraphQLQuery {
  public static let operationString =
    "query ListTreatments($filter: ModelTreatmentFilterInput, $limit: Int, $nextToken: String) {\n  listTreatments(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      username\n      name\n      provider\n      doctor\n      attorney\n      treatment\n      date\n      viewed\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelTreatmentFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelTreatmentFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listTreatments", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListTreatment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listTreatments: ListTreatment? = nil) {
      self.init(snapshot: ["__typename": "Query", "listTreatments": listTreatments.flatMap { $0.snapshot }])
    }

    public var listTreatments: ListTreatment? {
      get {
        return (snapshot["listTreatments"] as? Snapshot).flatMap { ListTreatment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listTreatments")
      }
    }

    public struct ListTreatment: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelTreatmentConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelTreatmentConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Treatment"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("provider", type: .nonNull(.scalar(String.self))),
          GraphQLField("doctor", type: .nonNull(.scalar(String.self))),
          GraphQLField("attorney", type: .nonNull(.scalar(String.self))),
          GraphQLField("treatment", type: .scalar(String.self)),
          GraphQLField("date", type: .scalar(String.self)),
          GraphQLField("viewed", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, name: String? = nil, provider: String, doctor: String, attorney: String, treatment: String? = nil, date: String? = nil, viewed: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Treatment", "id": id, "username": username, "name": name, "provider": provider, "doctor": doctor, "attorney": attorney, "treatment": treatment, "date": date, "viewed": viewed, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var provider: String {
          get {
            return snapshot["provider"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "provider")
          }
        }

        public var doctor: String {
          get {
            return snapshot["doctor"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "doctor")
          }
        }

        public var attorney: String {
          get {
            return snapshot["attorney"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "attorney")
          }
        }

        public var treatment: String? {
          get {
            return snapshot["treatment"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "treatment")
          }
        }

        public var date: String? {
          get {
            return snapshot["date"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "date")
          }
        }

        public var viewed: String? {
          get {
            return snapshot["viewed"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "viewed")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetAttorneyQuery: GraphQLQuery {
  public static let operationString =
    "query GetAttorney($id: ID!) {\n  getAttorney(id: $id) {\n    __typename\n    id\n    username\n    name\n    firm\n    current_code\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getAttorney", arguments: ["id": GraphQLVariable("id")], type: .object(GetAttorney.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getAttorney: GetAttorney? = nil) {
      self.init(snapshot: ["__typename": "Query", "getAttorney": getAttorney.flatMap { $0.snapshot }])
    }

    public var getAttorney: GetAttorney? {
      get {
        return (snapshot["getAttorney"] as? Snapshot).flatMap { GetAttorney(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getAttorney")
      }
    }

    public struct GetAttorney: GraphQLSelectionSet {
      public static let possibleTypes = ["Attorney"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("current_code", type: .scalar(GraphQLID.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, name: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Attorney", "id": id, "username": username, "name": name, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var currentCode: GraphQLID? {
        get {
          return snapshot["current_code"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "current_code")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListAttorneysQuery: GraphQLQuery {
  public static let operationString =
    "query ListAttorneys($filter: ModelAttorneyFilterInput, $limit: Int, $nextToken: String) {\n  listAttorneys(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      username\n      name\n      firm\n      current_code\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelAttorneyFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelAttorneyFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listAttorneys", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListAttorney.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listAttorneys: ListAttorney? = nil) {
      self.init(snapshot: ["__typename": "Query", "listAttorneys": listAttorneys.flatMap { $0.snapshot }])
    }

    public var listAttorneys: ListAttorney? {
      get {
        return (snapshot["listAttorneys"] as? Snapshot).flatMap { ListAttorney(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listAttorneys")
      }
    }

    public struct ListAttorney: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelAttorneyConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelAttorneyConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Attorney"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("firm", type: .nonNull(.scalar(String.self))),
          GraphQLField("current_code", type: .scalar(GraphQLID.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, name: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Attorney", "id": id, "username": username, "name": name, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var firm: String {
          get {
            return snapshot["firm"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firm")
          }
        }

        public var currentCode: GraphQLID? {
          get {
            return snapshot["current_code"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "current_code")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetFirmQuery: GraphQLQuery {
  public static let operationString =
    "query GetFirm($id: ID!) {\n  getFirm(id: $id) {\n    __typename\n    id\n    username\n    firm\n    current_code\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getFirm", arguments: ["id": GraphQLVariable("id")], type: .object(GetFirm.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getFirm: GetFirm? = nil) {
      self.init(snapshot: ["__typename": "Query", "getFirm": getFirm.flatMap { $0.snapshot }])
    }

    public var getFirm: GetFirm? {
      get {
        return (snapshot["getFirm"] as? Snapshot).flatMap { GetFirm(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getFirm")
      }
    }

    public struct GetFirm: GraphQLSelectionSet {
      public static let possibleTypes = ["Firm"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("current_code", type: .scalar(GraphQLID.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Firm", "id": id, "username": username, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var currentCode: GraphQLID? {
        get {
          return snapshot["current_code"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "current_code")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListFirmsQuery: GraphQLQuery {
  public static let operationString =
    "query ListFirms($filter: ModelFirmFilterInput, $limit: Int, $nextToken: String) {\n  listFirms(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      username\n      firm\n      current_code\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelFirmFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelFirmFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listFirms", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListFirm.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listFirms: ListFirm? = nil) {
      self.init(snapshot: ["__typename": "Query", "listFirms": listFirms.flatMap { $0.snapshot }])
    }

    public var listFirms: ListFirm? {
      get {
        return (snapshot["listFirms"] as? Snapshot).flatMap { ListFirm(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listFirms")
      }
    }

    public struct ListFirm: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelFirmConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelFirmConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Firm"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("firm", type: .nonNull(.scalar(String.self))),
          GraphQLField("current_code", type: .scalar(GraphQLID.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Firm", "id": id, "username": username, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var firm: String {
          get {
            return snapshot["firm"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firm")
          }
        }

        public var currentCode: GraphQLID? {
          get {
            return snapshot["current_code"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "current_code")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetLimitationQuery: GraphQLQuery {
  public static let operationString =
    "query GetLimitation($id: ID!) {\n  getLimitation(id: $id) {\n    __typename\n    id\n    username\n    description\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getLimitation", arguments: ["id": GraphQLVariable("id")], type: .object(GetLimitation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getLimitation: GetLimitation? = nil) {
      self.init(snapshot: ["__typename": "Query", "getLimitation": getLimitation.flatMap { $0.snapshot }])
    }

    public var getLimitation: GetLimitation? {
      get {
        return (snapshot["getLimitation"] as? Snapshot).flatMap { GetLimitation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getLimitation")
      }
    }

    public struct GetLimitation: GraphQLSelectionSet {
      public static let possibleTypes = ["Limitation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, description: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Limitation", "id": id, "username": username, "description": description, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListLimitationsQuery: GraphQLQuery {
  public static let operationString =
    "query ListLimitations($filter: ModelLimitationFilterInput, $limit: Int, $nextToken: String) {\n  listLimitations(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      username\n      description\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelLimitationFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelLimitationFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listLimitations", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListLimitation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listLimitations: ListLimitation? = nil) {
      self.init(snapshot: ["__typename": "Query", "listLimitations": listLimitations.flatMap { $0.snapshot }])
    }

    public var listLimitations: ListLimitation? {
      get {
        return (snapshot["listLimitations"] as? Snapshot).flatMap { ListLimitation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listLimitations")
      }
    }

    public struct ListLimitation: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelLimitationConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelLimitationConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Limitation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, description: String, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Limitation", "id": id, "username": username, "description": description, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetDocumentQuery: GraphQLQuery {
  public static let operationString =
    "query GetDocument($id: ID!) {\n  getDocument(id: $id) {\n    __typename\n    id\n    username\n    contractKey\n    documentName\n    viewed\n    firm\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getDocument", arguments: ["id": GraphQLVariable("id")], type: .object(GetDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getDocument: GetDocument? = nil) {
      self.init(snapshot: ["__typename": "Query", "getDocument": getDocument.flatMap { $0.snapshot }])
    }

    public var getDocument: GetDocument? {
      get {
        return (snapshot["getDocument"] as? Snapshot).flatMap { GetDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getDocument")
      }
    }

    public struct GetDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["Document"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("contractKey", type: .scalar(GraphQLID.self)),
        GraphQLField("documentName", type: .scalar(String.self)),
        GraphQLField("viewed", type: .scalar(String.self)),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, contractKey: GraphQLID? = nil, documentName: String? = nil, viewed: String? = nil, firm: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Document", "id": id, "username": username, "contractKey": contractKey, "documentName": documentName, "viewed": viewed, "firm": firm, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var contractKey: GraphQLID? {
        get {
          return snapshot["contractKey"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "contractKey")
        }
      }

      public var documentName: String? {
        get {
          return snapshot["documentName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "documentName")
        }
      }

      public var viewed: String? {
        get {
          return snapshot["viewed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "viewed")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListDocumentsQuery: GraphQLQuery {
  public static let operationString =
    "query ListDocuments($filter: ModelDocumentFilterInput, $limit: Int, $nextToken: String) {\n  listDocuments(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      username\n      contractKey\n      documentName\n      viewed\n      firm\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelDocumentFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelDocumentFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listDocuments", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listDocuments: ListDocument? = nil) {
      self.init(snapshot: ["__typename": "Query", "listDocuments": listDocuments.flatMap { $0.snapshot }])
    }

    public var listDocuments: ListDocument? {
      get {
        return (snapshot["listDocuments"] as? Snapshot).flatMap { ListDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listDocuments")
      }
    }

    public struct ListDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelDocumentConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelDocumentConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Document"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("contractKey", type: .scalar(GraphQLID.self)),
          GraphQLField("documentName", type: .scalar(String.self)),
          GraphQLField("viewed", type: .scalar(String.self)),
          GraphQLField("firm", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, contractKey: GraphQLID? = nil, documentName: String? = nil, viewed: String? = nil, firm: String, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Document", "id": id, "username": username, "contractKey": contractKey, "documentName": documentName, "viewed": viewed, "firm": firm, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var contractKey: GraphQLID? {
          get {
            return snapshot["contractKey"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "contractKey")
          }
        }

        public var documentName: String? {
          get {
            return snapshot["documentName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "documentName")
          }
        }

        public var viewed: String? {
          get {
            return snapshot["viewed"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "viewed")
          }
        }

        public var firm: String {
          get {
            return snapshot["firm"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "firm")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnCreateTreatmentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateTreatment {\n  onCreateTreatment {\n    __typename\n    id\n    username\n    name\n    provider\n    doctor\n    attorney\n    treatment\n    date\n    viewed\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateTreatment", type: .object(OnCreateTreatment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateTreatment: OnCreateTreatment? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateTreatment": onCreateTreatment.flatMap { $0.snapshot }])
    }

    public var onCreateTreatment: OnCreateTreatment? {
      get {
        return (snapshot["onCreateTreatment"] as? Snapshot).flatMap { OnCreateTreatment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateTreatment")
      }
    }

    public struct OnCreateTreatment: GraphQLSelectionSet {
      public static let possibleTypes = ["Treatment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("provider", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctor", type: .nonNull(.scalar(String.self))),
        GraphQLField("attorney", type: .nonNull(.scalar(String.self))),
        GraphQLField("treatment", type: .scalar(String.self)),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("viewed", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, name: String? = nil, provider: String, doctor: String, attorney: String, treatment: String? = nil, date: String? = nil, viewed: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Treatment", "id": id, "username": username, "name": name, "provider": provider, "doctor": doctor, "attorney": attorney, "treatment": treatment, "date": date, "viewed": viewed, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var provider: String {
        get {
          return snapshot["provider"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "provider")
        }
      }

      public var doctor: String {
        get {
          return snapshot["doctor"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctor")
        }
      }

      public var attorney: String {
        get {
          return snapshot["attorney"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "attorney")
        }
      }

      public var treatment: String? {
        get {
          return snapshot["treatment"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "treatment")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var viewed: String? {
        get {
          return snapshot["viewed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "viewed")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateTreatmentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateTreatment {\n  onUpdateTreatment {\n    __typename\n    id\n    username\n    name\n    provider\n    doctor\n    attorney\n    treatment\n    date\n    viewed\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateTreatment", type: .object(OnUpdateTreatment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateTreatment: OnUpdateTreatment? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateTreatment": onUpdateTreatment.flatMap { $0.snapshot }])
    }

    public var onUpdateTreatment: OnUpdateTreatment? {
      get {
        return (snapshot["onUpdateTreatment"] as? Snapshot).flatMap { OnUpdateTreatment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateTreatment")
      }
    }

    public struct OnUpdateTreatment: GraphQLSelectionSet {
      public static let possibleTypes = ["Treatment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("provider", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctor", type: .nonNull(.scalar(String.self))),
        GraphQLField("attorney", type: .nonNull(.scalar(String.self))),
        GraphQLField("treatment", type: .scalar(String.self)),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("viewed", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, name: String? = nil, provider: String, doctor: String, attorney: String, treatment: String? = nil, date: String? = nil, viewed: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Treatment", "id": id, "username": username, "name": name, "provider": provider, "doctor": doctor, "attorney": attorney, "treatment": treatment, "date": date, "viewed": viewed, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var provider: String {
        get {
          return snapshot["provider"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "provider")
        }
      }

      public var doctor: String {
        get {
          return snapshot["doctor"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctor")
        }
      }

      public var attorney: String {
        get {
          return snapshot["attorney"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "attorney")
        }
      }

      public var treatment: String? {
        get {
          return snapshot["treatment"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "treatment")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var viewed: String? {
        get {
          return snapshot["viewed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "viewed")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteTreatmentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteTreatment {\n  onDeleteTreatment {\n    __typename\n    id\n    username\n    name\n    provider\n    doctor\n    attorney\n    treatment\n    date\n    viewed\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteTreatment", type: .object(OnDeleteTreatment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteTreatment: OnDeleteTreatment? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteTreatment": onDeleteTreatment.flatMap { $0.snapshot }])
    }

    public var onDeleteTreatment: OnDeleteTreatment? {
      get {
        return (snapshot["onDeleteTreatment"] as? Snapshot).flatMap { OnDeleteTreatment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteTreatment")
      }
    }

    public struct OnDeleteTreatment: GraphQLSelectionSet {
      public static let possibleTypes = ["Treatment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("provider", type: .nonNull(.scalar(String.self))),
        GraphQLField("doctor", type: .nonNull(.scalar(String.self))),
        GraphQLField("attorney", type: .nonNull(.scalar(String.self))),
        GraphQLField("treatment", type: .scalar(String.self)),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("viewed", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, name: String? = nil, provider: String, doctor: String, attorney: String, treatment: String? = nil, date: String? = nil, viewed: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Treatment", "id": id, "username": username, "name": name, "provider": provider, "doctor": doctor, "attorney": attorney, "treatment": treatment, "date": date, "viewed": viewed, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var provider: String {
        get {
          return snapshot["provider"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "provider")
        }
      }

      public var doctor: String {
        get {
          return snapshot["doctor"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "doctor")
        }
      }

      public var attorney: String {
        get {
          return snapshot["attorney"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "attorney")
        }
      }

      public var treatment: String? {
        get {
          return snapshot["treatment"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "treatment")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var viewed: String? {
        get {
          return snapshot["viewed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "viewed")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnCreateAttorneySubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateAttorney {\n  onCreateAttorney {\n    __typename\n    id\n    username\n    name\n    firm\n    current_code\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateAttorney", type: .object(OnCreateAttorney.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateAttorney: OnCreateAttorney? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateAttorney": onCreateAttorney.flatMap { $0.snapshot }])
    }

    public var onCreateAttorney: OnCreateAttorney? {
      get {
        return (snapshot["onCreateAttorney"] as? Snapshot).flatMap { OnCreateAttorney(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateAttorney")
      }
    }

    public struct OnCreateAttorney: GraphQLSelectionSet {
      public static let possibleTypes = ["Attorney"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("current_code", type: .scalar(GraphQLID.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, name: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Attorney", "id": id, "username": username, "name": name, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var currentCode: GraphQLID? {
        get {
          return snapshot["current_code"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "current_code")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateAttorneySubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateAttorney {\n  onUpdateAttorney {\n    __typename\n    id\n    username\n    name\n    firm\n    current_code\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateAttorney", type: .object(OnUpdateAttorney.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateAttorney: OnUpdateAttorney? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateAttorney": onUpdateAttorney.flatMap { $0.snapshot }])
    }

    public var onUpdateAttorney: OnUpdateAttorney? {
      get {
        return (snapshot["onUpdateAttorney"] as? Snapshot).flatMap { OnUpdateAttorney(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateAttorney")
      }
    }

    public struct OnUpdateAttorney: GraphQLSelectionSet {
      public static let possibleTypes = ["Attorney"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("current_code", type: .scalar(GraphQLID.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, name: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Attorney", "id": id, "username": username, "name": name, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var currentCode: GraphQLID? {
        get {
          return snapshot["current_code"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "current_code")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteAttorneySubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteAttorney {\n  onDeleteAttorney {\n    __typename\n    id\n    username\n    name\n    firm\n    current_code\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteAttorney", type: .object(OnDeleteAttorney.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteAttorney: OnDeleteAttorney? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteAttorney": onDeleteAttorney.flatMap { $0.snapshot }])
    }

    public var onDeleteAttorney: OnDeleteAttorney? {
      get {
        return (snapshot["onDeleteAttorney"] as? Snapshot).flatMap { OnDeleteAttorney(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteAttorney")
      }
    }

    public struct OnDeleteAttorney: GraphQLSelectionSet {
      public static let possibleTypes = ["Attorney"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("current_code", type: .scalar(GraphQLID.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, name: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Attorney", "id": id, "username": username, "name": name, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var currentCode: GraphQLID? {
        get {
          return snapshot["current_code"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "current_code")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnCreateFirmSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateFirm {\n  onCreateFirm {\n    __typename\n    id\n    username\n    firm\n    current_code\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateFirm", type: .object(OnCreateFirm.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateFirm: OnCreateFirm? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateFirm": onCreateFirm.flatMap { $0.snapshot }])
    }

    public var onCreateFirm: OnCreateFirm? {
      get {
        return (snapshot["onCreateFirm"] as? Snapshot).flatMap { OnCreateFirm(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateFirm")
      }
    }

    public struct OnCreateFirm: GraphQLSelectionSet {
      public static let possibleTypes = ["Firm"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("current_code", type: .scalar(GraphQLID.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Firm", "id": id, "username": username, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var currentCode: GraphQLID? {
        get {
          return snapshot["current_code"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "current_code")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateFirmSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateFirm {\n  onUpdateFirm {\n    __typename\n    id\n    username\n    firm\n    current_code\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateFirm", type: .object(OnUpdateFirm.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateFirm: OnUpdateFirm? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateFirm": onUpdateFirm.flatMap { $0.snapshot }])
    }

    public var onUpdateFirm: OnUpdateFirm? {
      get {
        return (snapshot["onUpdateFirm"] as? Snapshot).flatMap { OnUpdateFirm(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateFirm")
      }
    }

    public struct OnUpdateFirm: GraphQLSelectionSet {
      public static let possibleTypes = ["Firm"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("current_code", type: .scalar(GraphQLID.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Firm", "id": id, "username": username, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var currentCode: GraphQLID? {
        get {
          return snapshot["current_code"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "current_code")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteFirmSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteFirm {\n  onDeleteFirm {\n    __typename\n    id\n    username\n    firm\n    current_code\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteFirm", type: .object(OnDeleteFirm.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteFirm: OnDeleteFirm? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteFirm": onDeleteFirm.flatMap { $0.snapshot }])
    }

    public var onDeleteFirm: OnDeleteFirm? {
      get {
        return (snapshot["onDeleteFirm"] as? Snapshot).flatMap { OnDeleteFirm(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteFirm")
      }
    }

    public struct OnDeleteFirm: GraphQLSelectionSet {
      public static let possibleTypes = ["Firm"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("current_code", type: .scalar(GraphQLID.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, firm: String, currentCode: GraphQLID? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Firm", "id": id, "username": username, "firm": firm, "current_code": currentCode, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var currentCode: GraphQLID? {
        get {
          return snapshot["current_code"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "current_code")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnCreateLimitationSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateLimitation {\n  onCreateLimitation {\n    __typename\n    id\n    username\n    description\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateLimitation", type: .object(OnCreateLimitation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateLimitation: OnCreateLimitation? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateLimitation": onCreateLimitation.flatMap { $0.snapshot }])
    }

    public var onCreateLimitation: OnCreateLimitation? {
      get {
        return (snapshot["onCreateLimitation"] as? Snapshot).flatMap { OnCreateLimitation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateLimitation")
      }
    }

    public struct OnCreateLimitation: GraphQLSelectionSet {
      public static let possibleTypes = ["Limitation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, description: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Limitation", "id": id, "username": username, "description": description, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateLimitationSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateLimitation {\n  onUpdateLimitation {\n    __typename\n    id\n    username\n    description\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateLimitation", type: .object(OnUpdateLimitation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateLimitation: OnUpdateLimitation? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateLimitation": onUpdateLimitation.flatMap { $0.snapshot }])
    }

    public var onUpdateLimitation: OnUpdateLimitation? {
      get {
        return (snapshot["onUpdateLimitation"] as? Snapshot).flatMap { OnUpdateLimitation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateLimitation")
      }
    }

    public struct OnUpdateLimitation: GraphQLSelectionSet {
      public static let possibleTypes = ["Limitation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, description: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Limitation", "id": id, "username": username, "description": description, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteLimitationSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteLimitation {\n  onDeleteLimitation {\n    __typename\n    id\n    username\n    description\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteLimitation", type: .object(OnDeleteLimitation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteLimitation: OnDeleteLimitation? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteLimitation": onDeleteLimitation.flatMap { $0.snapshot }])
    }

    public var onDeleteLimitation: OnDeleteLimitation? {
      get {
        return (snapshot["onDeleteLimitation"] as? Snapshot).flatMap { OnDeleteLimitation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteLimitation")
      }
    }

    public struct OnDeleteLimitation: GraphQLSelectionSet {
      public static let possibleTypes = ["Limitation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, description: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Limitation", "id": id, "username": username, "description": description, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnCreateDocumentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateDocument {\n  onCreateDocument {\n    __typename\n    id\n    username\n    contractKey\n    documentName\n    viewed\n    firm\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateDocument", type: .object(OnCreateDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateDocument: OnCreateDocument? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateDocument": onCreateDocument.flatMap { $0.snapshot }])
    }

    public var onCreateDocument: OnCreateDocument? {
      get {
        return (snapshot["onCreateDocument"] as? Snapshot).flatMap { OnCreateDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateDocument")
      }
    }

    public struct OnCreateDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["Document"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("contractKey", type: .scalar(GraphQLID.self)),
        GraphQLField("documentName", type: .scalar(String.self)),
        GraphQLField("viewed", type: .scalar(String.self)),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, contractKey: GraphQLID? = nil, documentName: String? = nil, viewed: String? = nil, firm: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Document", "id": id, "username": username, "contractKey": contractKey, "documentName": documentName, "viewed": viewed, "firm": firm, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var contractKey: GraphQLID? {
        get {
          return snapshot["contractKey"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "contractKey")
        }
      }

      public var documentName: String? {
        get {
          return snapshot["documentName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "documentName")
        }
      }

      public var viewed: String? {
        get {
          return snapshot["viewed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "viewed")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateDocumentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateDocument {\n  onUpdateDocument {\n    __typename\n    id\n    username\n    contractKey\n    documentName\n    viewed\n    firm\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateDocument", type: .object(OnUpdateDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateDocument: OnUpdateDocument? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateDocument": onUpdateDocument.flatMap { $0.snapshot }])
    }

    public var onUpdateDocument: OnUpdateDocument? {
      get {
        return (snapshot["onUpdateDocument"] as? Snapshot).flatMap { OnUpdateDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateDocument")
      }
    }

    public struct OnUpdateDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["Document"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("contractKey", type: .scalar(GraphQLID.self)),
        GraphQLField("documentName", type: .scalar(String.self)),
        GraphQLField("viewed", type: .scalar(String.self)),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, contractKey: GraphQLID? = nil, documentName: String? = nil, viewed: String? = nil, firm: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Document", "id": id, "username": username, "contractKey": contractKey, "documentName": documentName, "viewed": viewed, "firm": firm, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var contractKey: GraphQLID? {
        get {
          return snapshot["contractKey"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "contractKey")
        }
      }

      public var documentName: String? {
        get {
          return snapshot["documentName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "documentName")
        }
      }

      public var viewed: String? {
        get {
          return snapshot["viewed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "viewed")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteDocumentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteDocument {\n  onDeleteDocument {\n    __typename\n    id\n    username\n    contractKey\n    documentName\n    viewed\n    firm\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteDocument", type: .object(OnDeleteDocument.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteDocument: OnDeleteDocument? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteDocument": onDeleteDocument.flatMap { $0.snapshot }])
    }

    public var onDeleteDocument: OnDeleteDocument? {
      get {
        return (snapshot["onDeleteDocument"] as? Snapshot).flatMap { OnDeleteDocument(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteDocument")
      }
    }

    public struct OnDeleteDocument: GraphQLSelectionSet {
      public static let possibleTypes = ["Document"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("contractKey", type: .scalar(GraphQLID.self)),
        GraphQLField("documentName", type: .scalar(String.self)),
        GraphQLField("viewed", type: .scalar(String.self)),
        GraphQLField("firm", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, contractKey: GraphQLID? = nil, documentName: String? = nil, viewed: String? = nil, firm: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Document", "id": id, "username": username, "contractKey": contractKey, "documentName": documentName, "viewed": viewed, "firm": firm, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var contractKey: GraphQLID? {
        get {
          return snapshot["contractKey"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "contractKey")
        }
      }

      public var documentName: String? {
        get {
          return snapshot["documentName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "documentName")
        }
      }

      public var viewed: String? {
        get {
          return snapshot["viewed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "viewed")
        }
      }

      public var firm: String {
        get {
          return snapshot["firm"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firm")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}