import Foundation

public enum Text {
  /// Represents the `1d-interleaved-parityfec` subtype.
  case _1dInterleavedParityfec(Suffix? = nil, Parameters? = nil)
  /// Represents the `cache-manifest` subtype.
  case cacheManifest(Suffix? = nil, Parameters? = nil)
  /// Represents the `calendar` subtype.
  case calendar(Suffix? = nil, Parameters? = nil)
  /// Represents the `cql` subtype.
  case cql(Suffix? = nil, Parameters? = nil)
  /// Represents the `cql-expression` subtype.
  case cqlExpression(Suffix? = nil, Parameters? = nil)
  /// Represents the `cql-identifier` subtype.
  case cqlIdentifier(Suffix? = nil, Parameters? = nil)
  /// Represents the `css` subtype.
  case css(Suffix? = nil, Parameters? = nil)
  /// Represents the `csv` subtype.
  case csv(Suffix? = nil, Parameters? = nil)
  /// Represents the `csv-schema` subtype.
  case csvSchema(Suffix? = nil, Parameters? = nil)
  /// Represents the `directory` subtype.
  case directory(Suffix? = nil, Parameters? = nil)
  /// Represents the `dns` subtype.
  case dns(Suffix? = nil, Parameters? = nil)
  /// Represents the `ecmascript` subtype.
  case ecmascript(Suffix? = nil, Parameters? = nil)
  /// Represents the `encaprtp` subtype.
  case encaprtp(Suffix? = nil, Parameters? = nil)
  /// Represents the `enriched` subtype.
  case enriched(Suffix? = nil, Parameters? = nil)
  /// Represents the `example` subtype.
  case example(Suffix? = nil, Parameters? = nil)
  /// Represents the `fhirpath` subtype.
  case fhirpath(Suffix? = nil, Parameters? = nil)
  /// Represents the `flexfec` subtype.
  case flexfec(Suffix? = nil, Parameters? = nil)
  /// Represents the `fwdred` subtype.
  case fwdred(Suffix? = nil, Parameters? = nil)
  /// Represents the `gff3` subtype.
  case gff3(Suffix? = nil, Parameters? = nil)
  /// Represents the `grammar-ref-list` subtype.
  case grammarRefList(Suffix? = nil, Parameters? = nil)
  /// Represents the `html` subtype.
  case html(Suffix? = nil, Parameters? = nil)
  /// Represents the `javascript` subtype.
  case javascript(Suffix? = nil, Parameters? = nil)
  /// Represents the `jcr-cnd` subtype.
  case jcrCnd(Suffix? = nil, Parameters? = nil)
  /// Represents the `markdown` subtype.
  case markdown(Suffix? = nil, Parameters? = nil)
  /// Represents the `mizar` subtype.
  case mizar(Suffix? = nil, Parameters? = nil)
  /// Represents the `n3` subtype.
  case n3(Suffix? = nil, Parameters? = nil)
  /// Represents the `parameters` subtype.
  case parameters(Suffix? = nil, Parameters? = nil)
  /// Represents the `parityfec` subtype.
  case parityfec(Suffix? = nil, Parameters? = nil)
  /// Represents the `plain` subtype.
  case plain(Suffix? = nil, Parameters? = nil)
  /// Represents the `provenance-notation` subtype.
  case provenanceNotation(Suffix? = nil, Parameters? = nil)
  /// Represents the `raptorfec` subtype.
  case raptorfec(Suffix? = nil, Parameters? = nil)
  /// Represents the `RED` subtype.
  case RED(Suffix? = nil, Parameters? = nil)
  /// Represents the `rfc822-headers` subtype.
  case rfc822Headers(Suffix? = nil, Parameters? = nil)
  /// Represents the `richtext` subtype.
  case richtext(Suffix? = nil, Parameters? = nil)
  /// Represents the `rtf` subtype.
  case rtf(Suffix? = nil, Parameters? = nil)
  /// Represents the `rtp-enc-aescm128` subtype.
  case rtpEncAescm128(Suffix? = nil, Parameters? = nil)
  /// Represents the `rtploopback` subtype.
  case rtploopback(Suffix? = nil, Parameters? = nil)
  /// Represents the `rtx` subtype.
  case rtx(Suffix? = nil, Parameters? = nil)
  /// Represents the `SGML` subtype.
  case SGML(Suffix? = nil, Parameters? = nil)
  /// Represents the `shaclc` subtype.
  case shaclc(Suffix? = nil, Parameters? = nil)
  /// Represents the `shex` subtype.
  case shex(Suffix? = nil, Parameters? = nil)
  /// Represents the `spdx` subtype.
  case spdx(Suffix? = nil, Parameters? = nil)
  /// Represents the `strings` subtype.
  case strings(Suffix? = nil, Parameters? = nil)
  /// Represents the `t140` subtype.
  case t140(Suffix? = nil, Parameters? = nil)
  /// Represents the `tab-separated-values` subtype.
  case tabSeparatedValues(Suffix? = nil, Parameters? = nil)
  /// Represents the `troff` subtype.
  case troff(Suffix? = nil, Parameters? = nil)
  /// Represents the `turtle` subtype.
  case turtle(Suffix? = nil, Parameters? = nil)
  /// Represents the `ulpfec` subtype.
  case ulpfec(Suffix? = nil, Parameters? = nil)
  /// Represents the `uri-list` subtype.
  case uriList(Suffix? = nil, Parameters? = nil)
  /// Represents the `vcard` subtype.
  case vcard(Suffix? = nil, Parameters? = nil)
  /// Represents the `vtt` subtype.
  case vtt(Suffix? = nil, Parameters? = nil)
  /// Represents the `xml` subtype.
  case xml(Suffix? = nil, Parameters? = nil)
  /// Represents the `xml-external-parsed-entity` subtype.
  case xmlExternalParsedEntity(Suffix? = nil, Parameters? = nil)
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
    case "enriched":                   self = .enriched(suffix, parameters)
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
    case "plain":                      self = .plain(suffix, parameters)
    case "provenance-notation":        self = .provenanceNotation(suffix, parameters)
    case "raptorfec":                  self = .raptorfec(suffix, parameters)
    case "RED":                        self = .RED(suffix, parameters)
    case "rfc822-headers":             self = .rfc822Headers(suffix, parameters)
    case "richtext":                   self = .richtext(suffix, parameters)
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
    case .enriched(let suffix, let parameters):                return "enriched\(suffix)\(parameters)"
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
    case .plain(let suffix, let parameters):                   return "plain\(suffix)\(parameters)"
    case .provenanceNotation(let suffix, let parameters):      return "provenance-notation\(suffix)\(parameters)"
    case .raptorfec(let suffix, let parameters):               return "raptorfec\(suffix)\(parameters)"
    case .RED(let suffix, let parameters):                     return "RED\(suffix)\(parameters)"
    case .rfc822Headers(let suffix, let parameters):           return "rfc822-headers\(suffix)\(parameters)"
    case .richtext(let suffix, let parameters):                return "richtext\(suffix)\(parameters)"
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

extension Text: Hashable {
  public static func ==(lhs: Self, rhs: Self) -> Bool {
    switch lhs {
    case .RED(let lhsSuffix, let lhsParameters):
      guard case let .RED(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .SGML(let lhsSuffix, let lhsParameters):
      guard case let .SGML(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case ._1dInterleavedParityfec(let lhsSuffix, let lhsParameters):
      guard case let ._1dInterleavedParityfec(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .cacheManifest(let lhsSuffix, let lhsParameters):
      guard case let .cacheManifest(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .calendar(let lhsSuffix, let lhsParameters):
      guard case let .calendar(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .cql(let lhsSuffix, let lhsParameters):
      guard case let .cql(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .cqlExpression(let lhsSuffix, let lhsParameters):
      guard case let .cqlExpression(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .cqlIdentifier(let lhsSuffix, let lhsParameters):
      guard case let .cqlIdentifier(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .css(let lhsSuffix, let lhsParameters):
      guard case let .css(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .csv(let lhsSuffix, let lhsParameters):
      guard case let .csv(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .csvSchema(let lhsSuffix, let lhsParameters):
      guard case let .csvSchema(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .directory(let lhsSuffix, let lhsParameters):
      guard case let .directory(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .dns(let lhsSuffix, let lhsParameters):
      guard case let .dns(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .ecmascript(let lhsSuffix, let lhsParameters):
      guard case let .ecmascript(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .encaprtp(let lhsSuffix, let lhsParameters):
      guard case let .encaprtp(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .enriched(let lhsSuffix, let lhsParameters):
      guard case let .enriched(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .example(let lhsSuffix, let lhsParameters):
      guard case let .example(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .fhirpath(let lhsSuffix, let lhsParameters):
      guard case let .fhirpath(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .flexfec(let lhsSuffix, let lhsParameters):
      guard case let .flexfec(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .fwdred(let lhsSuffix, let lhsParameters):
      guard case let .fwdred(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .gff3(let lhsSuffix, let lhsParameters):
      guard case let .gff3(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .grammarRefList(let lhsSuffix, let lhsParameters):
      guard case let .grammarRefList(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .html(let lhsSuffix, let lhsParameters):
      guard case let .html(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .javascript(let lhsSuffix, let lhsParameters):
      guard case let .javascript(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .jcrCnd(let lhsSuffix, let lhsParameters):
      guard case let .jcrCnd(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .markdown(let lhsSuffix, let lhsParameters):
      guard case let .markdown(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .mizar(let lhsSuffix, let lhsParameters):
      guard case let .mizar(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .n3(let lhsSuffix, let lhsParameters):
      guard case let .n3(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .parameters(let lhsSuffix, let lhsParameters):
      guard case let .parameters(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .parityfec(let lhsSuffix, let lhsParameters):
      guard case let .parityfec(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .plain(let lhsSuffix, let lhsParameters):
      guard case let .plain(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .provenanceNotation(let lhsSuffix, let lhsParameters):
      guard case let .provenanceNotation(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .raptorfec(let lhsSuffix, let lhsParameters):
      guard case let .raptorfec(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .rfc822Headers(let lhsSuffix, let lhsParameters):
      guard case let .rfc822Headers(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .richtext(let lhsSuffix, let lhsParameters):
      guard case let .richtext(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .rtf(let lhsSuffix, let lhsParameters):
      guard case let .rtf(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .rtpEncAescm128(let lhsSuffix, let lhsParameters):
      guard case let .rtpEncAescm128(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .rtploopback(let lhsSuffix, let lhsParameters):
      guard case let .rtploopback(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .rtx(let lhsSuffix, let lhsParameters):
      guard case let .rtx(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .shaclc(let lhsSuffix, let lhsParameters):
      guard case let .shaclc(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .shex(let lhsSuffix, let lhsParameters):
      guard case let .shex(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .spdx(let lhsSuffix, let lhsParameters):
      guard case let .spdx(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .strings(let lhsSuffix, let lhsParameters):
      guard case let .strings(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .t140(let lhsSuffix, let lhsParameters):
      guard case let .t140(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .tabSeparatedValues(let lhsSuffix, let lhsParameters):
      guard case let .tabSeparatedValues(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .troff(let lhsSuffix, let lhsParameters):
      guard case let .troff(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .turtle(let lhsSuffix, let lhsParameters):
      guard case let .turtle(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .ulpfec(let lhsSuffix, let lhsParameters):
      guard case let .ulpfec(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .uriList(let lhsSuffix, let lhsParameters):
      guard case let .uriList(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .vcard(let lhsSuffix, let lhsParameters):
      guard case let .vcard(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .vtt(let lhsSuffix, let lhsParameters):
      guard case let .vtt(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .xml(let lhsSuffix, let lhsParameters):
      guard case let .xml(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .xmlExternalParsedEntity(let lhsSuffix, let lhsParameters):
      guard case let .xmlExternalParsedEntity(rhsSuffix, rhsParameters) = rhs else { return false }
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
    case .RED(let suffix, let parameters):
      hasher.combine(0)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .SGML(let suffix, let parameters):
      hasher.combine(1)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case ._1dInterleavedParityfec(let suffix, let parameters):
      hasher.combine(2)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .cacheManifest(let suffix, let parameters):
      hasher.combine(3)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .calendar(let suffix, let parameters):
      hasher.combine(4)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .cql(let suffix, let parameters):
      hasher.combine(5)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .cqlExpression(let suffix, let parameters):
      hasher.combine(6)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .cqlIdentifier(let suffix, let parameters):
      hasher.combine(7)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .css(let suffix, let parameters):
      hasher.combine(8)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .csv(let suffix, let parameters):
      hasher.combine(9)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .csvSchema(let suffix, let parameters):
      hasher.combine(10)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .directory(let suffix, let parameters):
      hasher.combine(11)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .dns(let suffix, let parameters):
      hasher.combine(12)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .ecmascript(let suffix, let parameters):
      hasher.combine(13)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .encaprtp(let suffix, let parameters):
      hasher.combine(14)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .enriched(let suffix, let parameters):
      hasher.combine(15)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .example(let suffix, let parameters):
      hasher.combine(16)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .fhirpath(let suffix, let parameters):
      hasher.combine(17)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .flexfec(let suffix, let parameters):
      hasher.combine(18)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .fwdred(let suffix, let parameters):
      hasher.combine(19)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .gff3(let suffix, let parameters):
      hasher.combine(20)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .grammarRefList(let suffix, let parameters):
      hasher.combine(21)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .html(let suffix, let parameters):
      hasher.combine(22)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .javascript(let suffix, let parameters):
      hasher.combine(23)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .jcrCnd(let suffix, let parameters):
      hasher.combine(24)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .markdown(let suffix, let parameters):
      hasher.combine(25)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .mizar(let suffix, let parameters):
      hasher.combine(26)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .n3(let suffix, let parameters):
      hasher.combine(27)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .parameters(let suffix, let parameters):
      hasher.combine(28)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .parityfec(let suffix, let parameters):
      hasher.combine(29)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .plain(let suffix, let parameters):
      hasher.combine(30)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .provenanceNotation(let suffix, let parameters):
      hasher.combine(31)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .raptorfec(let suffix, let parameters):
      hasher.combine(32)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .rfc822Headers(let suffix, let parameters):
      hasher.combine(33)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .richtext(let suffix, let parameters):
      hasher.combine(34)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .rtf(let suffix, let parameters):
      hasher.combine(35)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .rtpEncAescm128(let suffix, let parameters):
      hasher.combine(36)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .rtploopback(let suffix, let parameters):
      hasher.combine(37)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .rtx(let suffix, let parameters):
      hasher.combine(38)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .shaclc(let suffix, let parameters):
      hasher.combine(39)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .shex(let suffix, let parameters):
      hasher.combine(40)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .spdx(let suffix, let parameters):
      hasher.combine(41)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .strings(let suffix, let parameters):
      hasher.combine(42)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .t140(let suffix, let parameters):
      hasher.combine(43)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .tabSeparatedValues(let suffix, let parameters):
      hasher.combine(44)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .troff(let suffix, let parameters):
      hasher.combine(45)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .turtle(let suffix, let parameters):
      hasher.combine(46)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .ulpfec(let suffix, let parameters):
      hasher.combine(47)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .uriList(let suffix, let parameters):
      hasher.combine(48)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .vcard(let suffix, let parameters):
      hasher.combine(49)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .vtt(let suffix, let parameters):
      hasher.combine(50)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .xml(let suffix, let parameters):
      hasher.combine(51)
      hasher.combine(suffix)
      hasher.combine(parameters)
    case .xmlExternalParsedEntity(let suffix, let parameters):
      hasher.combine(52)
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
