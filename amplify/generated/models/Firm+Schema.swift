// swiftlint:disable all
import Amplify
import Foundation

extension Firm {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case username
    case firm
    case current_code
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let firm = Firm.keys
    
    model.pluralName = "Firms"
    
    model.fields(
      .id(),
      .field(firm.username, is: .required, ofType: .string),
      .field(firm.firm, is: .required, ofType: .string),
      .field(firm.current_code, is: .optional, ofType: .string)
    )
    }
}