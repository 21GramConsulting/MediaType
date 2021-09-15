import Foundation
import MediaTypeEnums

public struct MediaType<Type> where Type: CTMediaTypeEnum {
  public let type: MediaTypeEnum = Type.rawValue
  public let subType: Type.SubMedia
  public init(subType: Type.SubMedia) { self.subType = subType }
}

extension MediaType: Equatable {
  public static func ==(lhs: Self, rhs: Self) -> Bool {
    lhs.type == rhs.type && lhs.subType == rhs.subType
  }
}
