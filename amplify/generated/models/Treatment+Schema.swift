// swiftlint:disable all
import Amplify
import Foundation

extension Treatment {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case username
    case name
    case provider
    case doctor
    case attorney
    case treatment
    case date
    case viewed
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let treatment = Treatment.keys
    
    model.pluralName = "Treatments"
    
    model.fields(
      .id(),
      .field(treatment.username, is: .required, ofType: .string),
      .field(treatment.name, is: .optional, ofType: .string),
      .field(treatment.provider, is: .required, ofType: .string),
      .field(treatment.doctor, is: .required, ofType: .string),
      .field(treatment.attorney, is: .required, ofType: .string),
      .field(treatment.treatment, is: .optional, ofType: .string),
      .field(treatment.date, is: .optional, ofType: .string),
      .field(treatment.viewed, is: .optional, ofType: .string)
    )
    }
}