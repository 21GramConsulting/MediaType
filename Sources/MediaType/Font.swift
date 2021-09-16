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
  public var description: String {
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
