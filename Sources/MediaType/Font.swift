import Foundation

/// Represents the `font` media type. See the
/// [official documentation](https://www.iana.org/assignments/media-types/media-types.xhtml#font) for details.
/// 
/// You typically use ``Font`` as a ``MediaType``.
/// 
/// ```swift
/// let font = Font.ttf(nil, ["layout": "oat,aat"])
/// let mediaType = MediaType.font(font) // Creates: font/ttf;layout=oat,aat
/// ```
/// 
/// You can use standard `switch` statement to access font values.
/// 
/// ```swift
/// func isSupported(font: Font) -> Bool {
///   switch font {
///   case .woff, .woff2: return true
///   case .ttf(_, let parameters): return !(parameters ?? [:]).isEmpty
///   default: return false
///   }
/// }
/// 
/// isSupported(font: .woff()) // Returns: true
/// isSupported(font: .ttf(nil, ["layout": "oat,aat"])) // Returns: true
/// isSupported(font: .ttf()) // Returns: false
/// ```
/// 
/// - SeeAlso: ``MediaType``
public enum Font {
  /// Represents the `collection` subtype.
  case collection(Suffix? = nil, Parameters? = nil)
  /// Represents the `otf` subtype.
  case otf(Suffix? = nil, Parameters? = nil)
  /// Represents the `sfnt` subtype.
  case sfnt(Suffix? = nil, Parameters? = nil)
  /// Represents the `ttf` subtype.
  case ttf(Suffix? = nil, Parameters? = nil)
  /// Represents the `woff` subtype.
  case woff(Suffix? = nil, Parameters? = nil)
  /// Represents the `woff2` subtype.
  case woff2(Suffix? = nil, Parameters? = nil)
  /// Represents a subtype that does not fit in the other cases or is currently not officially defined.
  /// 
  /// You can use this case to define an arbitrary, unregistered subtype with the given name or
  /// to represent a subtype in the non standard tree, e.g. vendor tree or personal tree.
  /// 
  /// Optionally, you can specify a ``Suffix`` and ``Parameters``.
  /// 
  /// ```swift
  /// // TODO: Provide examples.
  /// ```
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
