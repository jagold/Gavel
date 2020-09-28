// swiftlint:disable all
import Amplify
import Foundation

extension Limitation {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case username
    case description
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let limitation = Limitation.keys
    
    model.pluralName = "Limitations"
    
    model.fields(
      .id(),
      .field(limitation.username, is: .required, ofType: .string),
      .field(limitation.description, is: .required, ofType: .string)
    )
    }
}