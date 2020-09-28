// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "cdb51284efc4da1d307cad8b96261046"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Treatment.self)
    ModelRegistry.register(modelType: Attorney.self)
    ModelRegistry.register(modelType: Firm.self)
    ModelRegistry.register(modelType: Limitation.self)
  }
}