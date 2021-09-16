import Foundation

public enum Anything {
  case other(CustomStringConvertible, Suffix? = nil, Parameters? = nil)
  case anything(Suffix? = nil, Parameters? = nil)
}

extension Anything: CustomStringConvertible {
  public var description: String { 
    switch self {
    case .other(let subtype, let suffix, let params): return "\(subtype)\(suffix)\(params)"
    case .anything(let suffix, let params):           return "*\(suffix)\(params)"
    }
  }
}

extension Anything: MediaSubtype { public var type: MediaType { .anything(self) } }

