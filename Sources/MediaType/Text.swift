import Foundation

public enum Text {
  case _1dInterleavedParityfec(Suffix? = nil, Parameters? = nil)
  case cacheManifest(Suffix? = nil, Parameters? = nil)
  case calendar(Suffix? = nil, Parameters? = nil)
  case cql(Suffix? = nil, Parameters? = nil)
  case cqlExpression(Suffix? = nil, Parameters? = nil)
  case cqlIdentifier(Suffix? = nil, Parameters? = nil)
  case css(Suffix? = nil, Parameters? = nil)
  case csv(Suffix? = nil, Parameters? = nil)
  case csvSchema(Suffix? = nil, Parameters? = nil)
  case directory(Suffix? = nil, Parameters? = nil)
  case dns(Suffix? = nil, Parameters? = nil)
  case ecmascript(Suffix? = nil, Parameters? = nil)
  case encaprtp(Suffix? = nil, Parameters? = nil)
  case example(Suffix? = nil, Parameters? = nil)
  case fhirpath(Suffix? = nil, Parameters? = nil)
  case flexfec(Suffix? = nil, Parameters? = nil)
  case fwdred(Suffix? = nil, Parameters? = nil)
  case gff3(Suffix? = nil, Parameters? = nil)
  case grammarRefList(Suffix? = nil, Parameters? = nil)
  case html(Suffix? = nil, Parameters? = nil)
  case javascript(Suffix? = nil, Parameters? = nil)
  case jcrCnd(Suffix? = nil, Parameters? = nil)
  case markdown(Suffix? = nil, Parameters? = nil)
  case mizar(Suffix? = nil, Parameters? = nil)
  case n3(Suffix? = nil, Parameters? = nil)
  case parameters(Suffix? = nil, Parameters? = nil)
  case parityfec(Suffix? = nil, Parameters? = nil)
  case provenanceNotation(Suffix? = nil, Parameters? = nil)
  case raptorfec(Suffix? = nil, Parameters? = nil)
  case RED(Suffix? = nil, Parameters? = nil)
  case rfc822Headers(Suffix? = nil, Parameters? = nil)
  case rtf(Suffix? = nil, Parameters? = nil)
  case rtpEncAescm128(Suffix? = nil, Parameters? = nil)
  case rtploopback(Suffix? = nil, Parameters? = nil)
  case rtx(Suffix? = nil, Parameters? = nil)
  case SGML(Suffix? = nil, Parameters? = nil)
  case shaclc(Suffix? = nil, Parameters? = nil)
  case shex(Suffix? = nil, Parameters? = nil)
  case spdx(Suffix? = nil, Parameters? = nil)
  case strings(Suffix? = nil, Parameters? = nil)
  case t140(Suffix? = nil, Parameters? = nil)
  case tabSeparatedValues(Suffix? = nil, Parameters? = nil)
  case troff(Suffix? = nil, Parameters? = nil)
  case turtle(Suffix? = nil, Parameters? = nil)
  case ulpfec(Suffix? = nil, Parameters? = nil)
  case uriList(Suffix? = nil, Parameters? = nil)
  case vcard(Suffix? = nil, Parameters? = nil)
  case vtt(Suffix? = nil, Parameters? = nil)
  case xml(Suffix? = nil, Parameters? = nil)
  case xmlExternalParsedEntity(Suffix? = nil, Parameters? = nil)
  case other(String, Suffix? = nil, Parameters? = nil)
  case anything(Suffix? = nil, Parameters? = nil)
}

extension Text: CustomStringConvertible { 
  public var description: String { rawValue }
}

extension Text: RawRepresentable {

  public init(rawValue: String) {
    let (subtype, suffix, parameters) = convert(string: rawValue)
    switch subtype {
    case "1d-interleaved-parityfec":   self = ._1dInterleavedParityfec(suffix, parameters)
    case "cache-manifest":             self = .cacheManifest(suffix, parameters)
    case "calendar":                   self = .calendar(suffix, parameters)
    case "cql":                        self = .cql(suffix, parameters)
    case "cql-expression":             self = .cqlExpression(suffix, parameters)
    case "cql-identifier":             self = .cqlIdentifier(suffix, parameters)
    case "css":                        self = .css(suffix, parameters)
    case "csv":                        self = .csv(suffix, parameters)
    case "csv-schema":                 self = .csvSchema(suffix, parameters)
    case "directory":                  self = .directory(suffix, parameters)
    case "dns":                        self = .dns(suffix, parameters)
    case "ecmascript":                 self = .ecmascript(suffix, parameters)
    case "encaprtp":                   self = .encaprtp(suffix, parameters)
    case "example":                    self = .example(suffix, parameters)
    case "fhirpath":                   self = .fhirpath(suffix, parameters)
    case "flexfec":                    self = .flexfec(suffix, parameters)
    case "fwdred":                     self = .fwdred(suffix, parameters)
    case "gff3":                       self = .gff3(suffix, parameters)
    case "grammar-ref-list":           self = .grammarRefList(suffix, parameters)
    case "html":                       self = .html(suffix, parameters)
    case "javascript":                 self = .javascript(suffix, parameters)
    case "jcr-cnd":                    self = .jcrCnd(suffix, parameters)
    case "markdown":                   self = .markdown(suffix, parameters)
    case "mizar":                      self = .mizar(suffix, parameters)
    case "n3":                         self = .n3(suffix, parameters)
    case "parameters":                 self = .parameters(suffix, parameters)
    case "parityfec":                  self = .parityfec(suffix, parameters)
    case "provenance-notation":        self = .provenanceNotation(suffix, parameters)
    case "raptorfec":                  self = .raptorfec(suffix, parameters)
    case "RED":                        self = .RED(suffix, parameters)
    case "rfc822-headers":             self = .rfc822Headers(suffix, parameters)
    case "rtf":                        self = .rtf(suffix, parameters)
    case "rtp-enc-aescm128":           self = .rtpEncAescm128(suffix, parameters)
    case "rtploopback":                self = .rtploopback(suffix, parameters)
    case "rtx":                        self = .rtx(suffix, parameters)
    case "SGML":                       self = .SGML(suffix, parameters)
    case "shaclc":                     self = .shaclc(suffix, parameters)
    case "shex":                       self = .shex(suffix, parameters)
    case "spdx":                       self = .spdx(suffix, parameters)
    case "strings":                    self = .strings(suffix, parameters)
    case "t140":                       self = .t140(suffix, parameters)
    case "tab-separated-values":       self = .tabSeparatedValues(suffix, parameters)
    case "troff":                      self = .troff(suffix, parameters)
    case "turtle":                     self = .turtle(suffix, parameters)
    case "ulpfec":                     self = .ulpfec(suffix, parameters)
    case "uri-list":                   self = .uriList(suffix, parameters)
    case "vcard":                      self = .vcard(suffix, parameters)
    case "vtt":                        self = .vtt(suffix, parameters)
    case "xml":                        self = .xml(suffix, parameters)
    case "xml-external-parsed-entity": self = .xmlExternalParsedEntity(suffix, parameters)
    case "*":                          self = .anything(suffix, parameters)
    default:                           self = .other(subtype, suffix, parameters)
    }
  }

  public var rawValue: String {
    switch self {
    case ._1dInterleavedParityfec(let suffix, let parameters): return "1d-interleaved-parityfec\(suffix)\(parameters)"
    case .cacheManifest(let suffix, let parameters):           return "cache-manifest\(suffix)\(parameters)"
    case .calendar(let suffix, let parameters):                return "calendar\(suffix)\(parameters)"
    case .cql(let suffix, let parameters):                     return "cql\(suffix)\(parameters)"
    case .cqlExpression(let suffix, let parameters):           return "cql-expression\(suffix)\(parameters)"
    case .cqlIdentifier(let suffix, let parameters):           return "cql-identifier\(suffix)\(parameters)"
    case .css(let suffix, let parameters):                     return "css\(suffix)\(parameters)"
    case .csv(let suffix, let parameters):                     return "csv\(suffix)\(parameters)"
    case .csvSchema(let suffix, let parameters):               return "csv-schema\(suffix)\(parameters)"
    case .directory(let suffix, let parameters):               return "directory\(suffix)\(parameters)"
    case .dns(let suffix, let parameters):                     return "dns\(suffix)\(parameters)"
    case .ecmascript(let suffix, let parameters):              return "ecmascript\(suffix)\(parameters)"
    case .encaprtp(let suffix, let parameters):                return "encaprtp\(suffix)\(parameters)"
    case .example(let suffix, let parameters):                 return "example\(suffix)\(parameters)"
    case .fhirpath(let suffix, let parameters):                return "fhirpath\(suffix)\(parameters)"
    case .flexfec(let suffix, let parameters):                 return "flexfec\(suffix)\(parameters)"
    case .fwdred(let suffix, let parameters):                  return "fwdred\(suffix)\(parameters)"
    case .gff3(let suffix, let parameters):                    return "gff3\(suffix)\(parameters)"
    case .grammarRefList(let suffix, let parameters):          return "grammar-ref-list\(suffix)\(parameters)"
    case .html(let suffix, let parameters):                    return "html\(suffix)\(parameters)"
    case .javascript(let suffix, let parameters):              return "javascript\(suffix)\(parameters)"
    case .jcrCnd(let suffix, let parameters):                  return "jcr-cnd\(suffix)\(parameters)"
    case .markdown(let suffix, let parameters):                return "markdown\(suffix)\(parameters)"
    case .mizar(let suffix, let parameters):                   return "mizar\(suffix)\(parameters)"
    case .n3(let suffix, let parameters):                      return "n3\(suffix)\(parameters)"
    case .parameters(let suffix, let parameters):              return "parameters\(suffix)\(parameters)"
    case .parityfec(let suffix, let parameters):               return "parityfec\(suffix)\(parameters)"
    case .provenanceNotation(let suffix, let parameters):      return "provenance-notation\(suffix)\(parameters)"
    case .raptorfec(let suffix, let parameters):               return "raptorfec\(suffix)\(parameters)"
    case .RED(let suffix, let parameters):                     return "RED\(suffix)\(parameters)"
    case .rfc822Headers(let suffix, let parameters):           return "rfc822-headers\(suffix)\(parameters)"
    case .rtf(let suffix, let parameters):                     return "rtf\(suffix)\(parameters)"
    case .rtpEncAescm128(let suffix, let parameters):          return "rtp-enc-aescm128\(suffix)\(parameters)"
    case .rtploopback(let suffix, let parameters):             return "rtploopback\(suffix)\(parameters)"
    case .rtx(let suffix, let parameters):                     return "rtx\(suffix)\(parameters)"
    case .SGML(let suffix, let parameters):                    return "SGML\(suffix)\(parameters)"
    case .shaclc(let suffix, let parameters):                  return "shaclc\(suffix)\(parameters)"
    case .shex(let suffix, let parameters):                    return "shex\(suffix)\(parameters)"
    case .spdx(let suffix, let parameters):                    return "spdx\(suffix)\(parameters)"
    case .strings(let suffix, let parameters):                 return "strings\(suffix)\(parameters)"
    case .t140(let suffix, let parameters):                    return "t140\(suffix)\(parameters)"
    case .tabSeparatedValues(let suffix, let parameters):      return "tab-separated-values\(suffix)\(parameters)"
    case .troff(let suffix, let parameters):                   return "troff\(suffix)\(parameters)"
    case .turtle(let suffix, let parameters):                  return "turtle\(suffix)\(parameters)"
    case .ulpfec(let suffix, let parameters):                  return "ulpfec\(suffix)\(parameters)"
    case .uriList(let suffix, let parameters):                 return "uri-list\(suffix)\(parameters)"
    case .vcard(let suffix, let parameters):                   return "vcard\(suffix)\(parameters)"
    case .vtt(let suffix, let parameters):                     return "vtt\(suffix)\(parameters)"
    case .xml(let suffix, let parameters):                     return "xml\(suffix)\(parameters)"
    case .xmlExternalParsedEntity(let suffix, let parameters): return "xml-external-parsed-entity\(suffix)\(parameters)"
    case .other(let value, let suffix, let parameters):        return "\(value)\(suffix)\(parameters)"
    case .anything(let suffix, let parameters):                return "*\(suffix)\(parameters)"
    }
  }

}

extension Text: MediaSubtype { public var type: MediaType { .text(self) } }
