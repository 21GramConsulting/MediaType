import Foundation

public extension MediaTypeEnum {
  enum Font {
    case collection
    case otf
    case sfnt
    case ttf
    case woff
    case woff2
    case other(String)
    case any
  }
}

extension MediaTypeEnum.Font: CustomStringConvertible {
  public var description: String { rawValue }
}

extension MediaTypeEnum.Font: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) { self.init(rawValue: value) }
}

extension MediaTypeEnum.Font: RawRepresentable {
  public init(rawValue: String) {
    switch rawValue {
    case "collection": self = .collection
    case "otf":        self = .otf
    case "sfnt":       self = .sfnt
    case "ttf":        self = .ttf
    case "woff":       self = .woff
    case "woff2":      self = .woff2
    case "*":          self = .any
    default:           self = .other(rawValue)
    }
  }

  public var rawValue: String {
    switch self {
    case .collection:       return "collection"
    case .otf:              return "otf"
    case .sfnt:             return "sfnt"
    case .ttf:              return "ttf"
    case .woff:             return "woff"
    case .woff2:            return "woff2"
    case .other(let other): return other
    case .any:              return "*"
    }
  }
}
