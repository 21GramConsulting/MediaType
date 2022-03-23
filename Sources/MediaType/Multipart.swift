import Foundation

/// Represents the `multipart` media type. See the
/// [official documentation](https://www.iana.org/assignments/media-types/media-types.xhtml#multipart) for details.
/// 
/// You typically use ``Multipart`` as a ``MediaType``.
/// 
/// ```swift
/// let multipart = Multipart.formData()
/// let mediaType = MediaType.multipart(multipart) // Creates: multipart/form-data
/// ```
/// 
/// You can use standard `switch` statement to access multipart values.
/// 
/// ```swift
/// func isSupported(multipart: Multipart) -> Bool {
///   switch multipart {
///   case .formData, .mixed: return true
///   default: return false
///   }
/// }
/// 
/// isSupported(audio: .formData()) // Returns: true
/// isSupported(audio: .mixed()) // Returns: true
/// isSupported(audio: .voiceMessage()) // Returns: false
/// ```
/// 
/// - SeeAlso: ``MediaType``
public enum Multipart {
  /// Represents the `alternative` subtype.
  case alternative(Suffix? = nil, Parameters? = nil)
  /// Represents the `appledouble` subtype.
  case appledouble(Suffix? = nil, Parameters? = nil)
  /// Represents the `byteranges` subtype.
  case byteranges(Suffix? = nil, Parameters? = nil)
  /// Represents the `digest` subtype.
  case digest(Suffix? = nil, Parameters? = nil)
  /// Represents the `encrypted` subtype.
  case encrypted(Suffix? = nil, Parameters? = nil)
  /// Represents the `example` subtype.
  case example(Suffix? = nil, Parameters? = nil)
  /// Represents the `form-data` subtype.
  case formData(Suffix? = nil, Parameters? = nil)
  /// Represents the `header-set` subtype.
  case headerSet(Suffix? = nil, Parameters? = nil)
  /// Represents the `mixed` subtype.
  case mixed(Suffix? = nil, Parameters? = nil)
  /// Represents the `multilingual` subtype.
  case multilingual(Suffix? = nil, Parameters? = nil)
  /// Represents the `parallel` subtype.
  case parallel(Suffix? = nil, Parameters? = nil)
  /// Represents the `related` subtype.
  case related(Suffix? = nil, Parameters? = nil)
  /// Represents the `report` subtype.
  case report(Suffix? = nil, Parameters? = nil)
  /// Represents the `signed` subtype.
  case signed(Suffix? = nil, Parameters? = nil)
  /// Represents the `voice-message` subtype.
  case voiceMessage(Suffix? = nil, Parameters? = nil)
  /// Represents the `x-mixed-replace` subtype.
  case xMixedReplace(Suffix? = nil, Parameters? = nil)
  /// Represents a subtype that does not fit in the other cases or is currently not officially defined.
  /// 
  /// You can use this case to define an arbitrary, unregistered subtype with the given name or
  /// to represent a subtype in the non standard tree, e.g. vendor tree or personal tree.
  /// 
  /// Optionally, you can specify a ``Suffix`` and ``Parameters``.
  /// 
  case other(String, Suffix? = nil, Parameters? = nil)
  case anything(Suffix? = nil, Parameters? = nil)
}

extension Multipart: CustomStringConvertible { 
  public var description: String { rawValue }
}

extension Multipart: RawRepresentable {

  public init(rawValue: String) {
    let (subtype, suffix, parameters) = convert(string: rawValue)
    switch subtype {
    case "alternative":     self = .alternative(suffix, parameters)
    case "appledouble":     self = .appledouble(suffix, parameters)
    case "byteranges":      self = .byteranges(suffix, parameters)
    case "digest":          self = .digest(suffix, parameters)
    case "encrypted":       self = .encrypted(suffix, parameters)
    case "example":         self = .example(suffix, parameters)
    case "form-data":       self = .formData(suffix, parameters)
    case "header-set":      self = .headerSet(suffix, parameters)
    case "mixed":           self = .mixed(suffix, parameters)
    case "multilingual":    self = .multilingual(suffix, parameters)
    case "parallel":        self = .parallel(suffix, parameters)
    case "related":         self = .related(suffix, parameters)
    case "report":          self = .report(suffix, parameters)
    case "signed":          self = .signed(suffix, parameters)
    case "voice-message":   self = .voiceMessage(suffix, parameters)
    case "x-mixed-replace": self = .xMixedReplace(suffix, parameters)
    case "*":               self = .anything(suffix, parameters)
    default:                self = .other(subtype, suffix, parameters)
    }
  }

  public var rawValue: String {
    switch self {
    case .alternative(let suffix, let parameters):      return "alternative\(suffix)\(parameters)"
    case .appledouble(let suffix, let parameters):      return "appledouble\(suffix)\(parameters)"
    case .byteranges(let suffix, let parameters):       return "byteranges\(suffix)\(parameters)"
    case .digest(let suffix, let parameters):           return "digest\(suffix)\(parameters)"
    case .encrypted(let suffix, let parameters):        return "encrypted\(suffix)\(parameters)"
    case .example(let suffix, let parameters):          return "example\(suffix)\(parameters)"
    case .formData(let suffix, let parameters):         return "form-data\(suffix)\(parameters)"
    case .headerSet(let suffix, let parameters):        return "header-set\(suffix)\(parameters)"
    case .mixed(let suffix, let parameters):            return "mixed\(suffix)\(parameters)"
    case .multilingual(let suffix, let parameters):     return "multilingual\(suffix)\(parameters)"
    case .parallel(let suffix, let parameters):         return "parallel\(suffix)\(parameters)"
    case .related(let suffix, let parameters):          return "related\(suffix)\(parameters)"
    case .report(let suffix, let parameters):           return "report\(suffix)\(parameters)"
    case .signed(let suffix, let parameters):           return "signed\(suffix)\(parameters)"
    case .voiceMessage(let suffix, let parameters):     return "voice-message\(suffix)\(parameters)"
    case .xMixedReplace(let suffix, let parameters):    return "x-mixed-replace\(suffix)\(parameters)"
    case .other(let value, let suffix, let parameters): return "\(value)\(suffix)\(parameters)"
    case .anything(let suffix, let parameters):         return "*\(suffix)\(parameters)"
    }
  }

}

extension Multipart: MediaSubtype { public var type: MediaType { .multipart(self) } }

extension Multipart: Hashable {
  public static func ==(lhs: Self, rhs: Self) -> Bool {
    switch lhs {
    case .alternative(let lhsSuffix, let lhsParameters):
      guard case let .alternative(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .appledouble(let lhsSuffix, let lhsParameters):
      guard case let .appledouble(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .byteranges(let lhsSuffix, let lhsParameters):
      guard case let .byteranges(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .digest(let lhsSuffix, let lhsParameters):
      guard case let .digest(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .encrypted(let lhsSuffix, let lhsParameters):
      guard case let .encrypted(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .example(let lhsSuffix, let lhsParameters):
      guard case let .example(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .formData(let lhsSuffix, let lhsParameters):
      guard case let .formData(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .headerSet(let lhsSuffix, let lhsParameters):
      guard case let .headerSet(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .mixed(let lhsSuffix, let lhsParameters):
      guard case let .mixed(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .multilingual(let lhsSuffix, let lhsParameters):
      guard case let .multilingual(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .parallel(let lhsSuffix, let lhsParameters):
      guard case let .parallel(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .related(let lhsSuffix, let lhsParameters):
      guard case let .related(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .report(let lhsSuffix, let lhsParameters):
      guard case let .report(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .signed(let lhsSuffix, let lhsParameters):
      guard case let .signed(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .voiceMessage(let lhsSuffix, let lhsParameters):
      guard case let .voiceMessage(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .xMixedReplace(let lhsSuffix, let lhsParameters):
      guard case let .xMixedReplace(rhsSuffix, rhsParameters) = rhs else { return false }
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
    case .alternative(let suffix, let parameters):
      hasher.combine(0)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .appledouble(let suffix, let parameters):
      hasher.combine(1)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .byteranges(let suffix, let parameters):
      hasher.combine(2)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .digest(let suffix, let parameters):
      hasher.combine(3)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .encrypted(let suffix, let parameters):
      hasher.combine(4)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .example(let suffix, let parameters):
      hasher.combine(5)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .formData(let suffix, let parameters):
      hasher.combine(6)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .headerSet(let suffix, let parameters):
      hasher.combine(7)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .mixed(let suffix, let parameters):
      hasher.combine(8)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .multilingual(let suffix, let parameters):
      hasher.combine(9)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .parallel(let suffix, let parameters):
      hasher.combine(10)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .related(let suffix, let parameters):
      hasher.combine(11)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .report(let suffix, let parameters):
      hasher.combine(12)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .signed(let suffix, let parameters):
      hasher.combine(13)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .voiceMessage(let suffix, let parameters):
      hasher.combine(14)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .xMixedReplace(let suffix, let parameters):
      hasher.combine(15)
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
