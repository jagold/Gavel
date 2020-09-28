// swiftlint:disable all
import Amplify
import Foundation

public struct Attorney: Model {
  public let id: String
  public var username: String
  public var name: String
  public var firm: String
  public var current_code: String?
  
  public init(id: String = UUID().uuidString,
      username: String,
      name: String,
      firm: String,
      current_code: String? = nil) {
      self.id = id
      self.username = username
      self.name = name
      self.firm = firm
      self.current_code = current_code
  }
}