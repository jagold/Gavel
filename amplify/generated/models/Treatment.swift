// swiftlint:disable all
import Amplify
import Foundation

public struct Treatment: Model {
  public let id: String
  public var username: String
  public var name: String?
  public var provider: String
  public var doctor: String
  public var attorney: String
  public var treatment: String?
  public var date: String?
  public var viewed: String?
  
  public init(id: String = UUID().uuidString,
      username: String,
      name: String? = nil,
      provider: String,
      doctor: String,
      attorney: String,
      treatment: String? = nil,
      date: String? = nil,
      viewed: String? = nil) {
      self.id = id
      self.username = username
      self.name = name
      self.provider = provider
      self.doctor = doctor
      self.attorney = attorney
      self.treatment = treatment
      self.date = date
      self.viewed = viewed
  }
}