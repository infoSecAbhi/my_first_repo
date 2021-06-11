// swiftlint:disable all
import Amplify
import Foundation

public struct USER: Model {
  public let id: String
  public var fName: String?
  public var lName: String?
  public var dateOfBirth: Temporal.Date?
  public var email: String?
  public var phone: String?
  public var gender: String?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      fName: String? = nil,
      lName: String? = nil,
      dateOfBirth: Temporal.Date? = nil,
      email: String? = nil,
      phone: String? = nil,
      gender: String? = nil) {
    self.init(id: id,
      fName: fName,
      lName: lName,
      dateOfBirth: dateOfBirth,
      email: email,
      phone: phone,
      gender: gender,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      fName: String? = nil,
      lName: String? = nil,
      dateOfBirth: Temporal.Date? = nil,
      email: String? = nil,
      phone: String? = nil,
      gender: String? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.fName = fName
      self.lName = lName
      self.dateOfBirth = dateOfBirth
      self.email = email
      self.phone = phone
      self.gender = gender
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}