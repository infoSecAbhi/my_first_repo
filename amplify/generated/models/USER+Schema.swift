// swiftlint:disable all
import Amplify
import Foundation

extension USER {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case fName
    case lName
    case dateOfBirth
    case email
    case phone
    case gender
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let uSER = USER.keys
    
    model.pluralName = "USERS"
    
    model.fields(
      .id(),
      .field(uSER.fName, is: .optional, ofType: .string),
      .field(uSER.lName, is: .optional, ofType: .string),
      .field(uSER.dateOfBirth, is: .optional, ofType: .date),
      .field(uSER.email, is: .optional, ofType: .string),
      .field(uSER.phone, is: .optional, ofType: .string),
      .field(uSER.gender, is: .optional, ofType: .string),
      .field(uSER.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(uSER.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}