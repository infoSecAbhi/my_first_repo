// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "eb7168bad415296828722e820df3ff9c"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: USER.self)
  }
}