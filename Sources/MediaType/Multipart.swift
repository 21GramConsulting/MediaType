import Foundation

public enum Multipart {
  case appledouble(Suffix? = nil, Parameters? = nil)
  case byteranges(Suffix? = nil, Parameters? = nil)
  case encrypted(Suffix? = nil, Parameters? = nil)
  case example(Suffix? = nil, Parameters? = nil)
  case formData(Suffix? = nil, Parameters? = nil)
  case headerSet(Suffix? = nil, Parameters? = nil)
  case multilingual(Suffix? = nil, Parameters? = nil)
  case related(Suffix? = nil, Parameters? = nil)
  case report(Suffix? = nil, Parameters? = nil)
  case signed(Suffix? = nil, Parameters? = nil)
  case voiceMessage(Suffix? = nil, Parameters? = nil)
  case xMixedReplace(Suffix? = nil, Parameters? = nil)
  case other(String, Suffix? = nil, Parameters? = nil)
  case anything(Suffix? = nil, Parameters? = nil)
}

extension Multipart: CustomStringConvertible { 
  public var description: String {
    switch self {
    case .appledouble(let suffix, let parameters):      return "appledouble\(suffix)\(parameters)"
    case .byteranges(let suffix, let parameters):       return "byteranges\(suffix)\(parameters)"
    case .encrypted(let suffix, let parameters):        return "encrypted\(suffix)\(parameters)"
    case .example(let suffix, let parameters):          return "example\(suffix)\(parameters)"
    case .formData(let suffix, let parameters):         return "form-data\(suffix)\(parameters)"
    case .headerSet(let suffix, let parameters):        return "header-set\(suffix)\(parameters)"
    case .multilingual(let suffix, let parameters):     return "multilingual\(suffix)\(parameters)"
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
