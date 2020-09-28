// swiftlint:disable all
import Amplify
import Foundation

public struct Firm: Model {
  public let id: String
  public var username: String
  public var firm: String
  public var current_code: String?
  
  public init(id: String = UUID().uuidString,
      username: String,
      firm: String,
      current_code: String? = nil) {
      self.id = id
      self.username = username
      self.firm = firm
      self.current_code = current_code
  }
}