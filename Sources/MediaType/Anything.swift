import Foundation

public enum Anything {
  case other(CustomStringConvertible, Suffix? = nil, Parameters? = nil)
  case anything(Suffix? = nil, Parameters? = nil)
}

extension Anything: CustomStringConvertible {
  public var description: String { rawValue }
}

extension Anything: MediaSubtype { public var type: MediaType { .anything(self) } }

extension Anything: RawRepresentable {

  public init(rawValue: String) {
    let (subtype, suffix, parameters) = convert(string: rawValue)
    switch subtype {
    case "*" : self = .anything(suffix, parameters)
    default  : self = .other(subtype, suffix, parameters)
    }
  }

  public var rawValue: String {
    switch self {
    case .other(let subtype, let suffix, let params): return "\(subtype)\(suffix)\(params)"
    case .anything(let suffix, let params):           return "*\(suffix)\(params)"
    }
  }

}

