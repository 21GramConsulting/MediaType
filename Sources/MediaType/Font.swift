import Foundation

public enum Font {
  case collection(Suffix? = nil, Parameters? = nil)
  case otf(Suffix? = nil, Parameters? = nil)
  case sfnt(Suffix? = nil, Parameters? = nil)
  case ttf(Suffix? = nil, Parameters? = nil)
  case woff(Suffix? = nil, Parameters? = nil)
  case woff2(Suffix? = nil, Parameters? = nil)
  case other(String, Suffix? = nil, Parameters? = nil)
  case anything(Suffix? = nil, Parameters? = nil)
}

extension Font: CustomStringConvertible { 
  public var description: String { rawValue }
}

extension Font: RawRepresentable {

  public init(rawValue: String) {
    let (subtype, suffix, parameters) = convert(string: rawValue)
    switch subtype {
    case "collection": self = .collection(suffix, parameters)
    case "otf":        self = .otf(suffix, parameters)
    case "sfnt":       self = .sfnt(suffix, parameters)
    case "ttf":        self = .ttf(suffix, parameters)
    case "woff":       self = .woff(suffix, parameters)
    case "woff2":      self = .woff2(suffix, parameters)
    case "*":          self = .anything(suffix, parameters)
    default:           self = .other(subtype, suffix, parameters)
    }
  }

  public var rawValue: String {
    switch self {
    case .collection(let suffix, let parameters):       return "collection\(suffix)\(parameters)"
    case .otf(let suffix, let parameters):              return "otf\(suffix)\(parameters)"
    case .sfnt(let suffix, let parameters):             return "sfnt\(suffix)\(parameters)"
    case .ttf(let suffix, let parameters):              return "ttf\(suffix)\(parameters)"
    case .woff(let suffix, let parameters):             return "woff\(suffix)\(parameters)"
    case .woff2(let suffix, let parameters):            return "woff2\(suffix)\(parameters)"
    case .other(let value, let suffix, let parameters): return "\(value)\(suffix)\(parameters)"
    case .anything(let suffix, let parameters):         return "*\(suffix)\(parameters)"
    }
  }

}

extension Font: MediaSubtype { public var type: MediaType { .font(self) } }

extension Font: Hashable {
  public static func ==(lhs: Self, rhs: Self) -> Bool {
    switch lhs {
    case .collection(let lhsSuffix, let lhsParameters):
      guard case let .collection(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .otf(let lhsSuffix, let lhsParameters):
      guard case let .otf(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .sfnt(let lhsSuffix, let lhsParameters):
      guard case let .sfnt(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .ttf(let lhsSuffix, let lhsParameters):
      guard case let .ttf(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .woff(let lhsSuffix, let lhsParameters):
      guard case let .woff(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .woff2(let lhsSuffix, let lhsParameters):
      guard case let .woff2(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .other(let lhsSubtype, let lhsSuffix, let lhsParameters):
      guard case let .other(rhsSubtype, rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSubtype.description != rhsSubtype.description { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .anything(let lhsSuffix, let lhsParameters):
      guard case let .anything(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    }
  }

  public func hash(into hasher: inout Hasher) {
    switch self {
    case .collection(let suffix, let parameters):
      hasher.combine(0)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .otf(let suffix, let parameters):
      hasher.combine(1)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .sfnt(let suffix, let parameters):
      hasher.combine(2)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .ttf(let suffix, let parameters):
      hasher.combine(3)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .woff(let suffix, let parameters):
      hasher.combine(4)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .woff2(let suffix, let parameters):
      hasher.combine(5)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .other(let subtype, let suffix, let parameters):
      hasher.combine(-1)
      hasher.combine(subtype.description)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .anything(let suffix, let parameters):
      hasher.combine(-2)
      hasher.combine(suffix)
      hasher.combine(parameters)
    }
  }
}
