// swiftlint:disable all
import Amplify
import Foundation

extension Attorney {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case username
    case name
    case firm
    case current_code
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let attorney = Attorney.keys
    
    model.pluralName = "Attorneys"
    
    model.fields(
      .id(),
      .field(attorney.username, is: .required, ofType: .string),
      .field(attorney.name, is: .required, ofType: .string),
      .field(attorney.firm, is: .required, ofType: .string),
      .field(attorney.current_code, is: .optional, ofType: .string)
    )
    }
}