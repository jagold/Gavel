// swiftlint:disable all
import Amplify
import Foundation

public struct Limitation: Model {
  public let id: String
  public var username: String
  public var description: String
  
  public init(id: String = UUID().uuidString,
      username: String,
      description: String) {
      self.id = id
      self.username = username
      self.description = description
  }
}