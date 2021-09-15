import Foundation

public extension MediaTypeEnum {
  enum Text {
    case RED
    case SGML
    case _1dInterleavedParityfec
    case cacheManifest
    case calendar
    case cql
    case cqlExpression
    case cqlIdentifier
    case css
    case csv
    case csvSchema
    case directory
    case dns
    case ecmascript
    case encaprtp
    case example
    case fhirpath
    case flexfec
    case fwdred
    case gff3
    case grammarRefList
    case html
    case javascript
    case jcrCnd
    case markdown
    case mizar
    case n3
    case parameters
    case parityfec
    case provenanceNotation
    case raptorfec
    case rfc822Headers
    case rtf
    case rtpEncAescm128
    case rtploopback
    case rtx
    case shaclc
    case shex
    case spdx
    case strings
    case t140
    case tabSeparatedValues
    case troff
    case turtle
    case ulpfec
    case uriList
    case vcard
    case vtt
    case xml
    case xmlExternalParsedEntity
    case other(String)
    case any
  }
}

extension MediaTypeEnum.Text: CustomStringConvertible {
  public var description: String { rawValue }
}

extension MediaTypeEnum.Text: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) { self.init(rawValue: value) }
}

extension MediaTypeEnum.Text: RawRepresentable {
  public init(rawValue: String) {
    switch rawValue {
    case "RED":                        self = .RED
    case "SGML":                       self = .SGML
    case "1d-interleaved-parityfec":   self = ._1dInterleavedParityfec
    case "cache-manifest":             self = .cacheManifest
    case "calendar":                   self = .calendar
    case "cql":                        self = .cql
    case "cql-expression":             self = .cqlExpression
    case "cql-identifier":             self = .cqlIdentifier
    case "css":                        self = .css
    case "csv":                        self = .csv
    case "csv-schema":                 self = .csvSchema
    case "directory":                  self = .directory
    case "dns":                        self = .dns
    case "ecmascript":                 self = .ecmascript
    case "encaprtp":                   self = .encaprtp
    case "example":                    self = .example
    case "fhirpath":                   self = .fhirpath
    case "flexfec":                    self = .flexfec
    case "fwdred":                     self = .fwdred
    case "gff3":                       self = .gff3
    case "grammar-ref-list":           self = .grammarRefList
    case "html":                       self = .html
    case "javascript":                 self = .javascript
    case "jcr-cnd":                    self = .jcrCnd
    case "markdown":                   self = .markdown
    case "mizar":                      self = .mizar
    case "n3":                         self = .n3
    case "parameters":                 self = .parameters
    case "parityfec":                  self = .parityfec
    case "provenance-notation":        self = .provenanceNotation
    case "raptorfec":                  self = .raptorfec
    case "rfc822-headers":             self = .rfc822Headers
    case "rtf":                        self = .rtf
    case "rtp-enc-aescm128":           self = .rtpEncAescm128
    case "rtploopback":                self = .rtploopback
    case "rtx":                        self = .rtx
    case "shaclc":                     self = .shaclc
    case "shex":                       self = .shex
    case "spdx":                       self = .spdx
    case "strings":                    self = .strings
    case "t140":                       self = .t140
    case "tab-separated-values":       self = .tabSeparatedValues
    case "troff":                      self = .troff
    case "turtle":                     self = .turtle
    case "ulpfec":                     self = .ulpfec
    case "uri-list":                   self = .uriList
    case "vcard":                      self = .vcard
    case "vtt":                        self = .vtt
    case "xml":                        self = .xml
    case "xml-external-parsed-entity": self = .xmlExternalParsedEntity
    case "*":                          self = .any
    default:                           self = .other(rawValue)
    }
  }

  public var rawValue: String {
    switch self {
    case .RED:                     return "RED"
    case .SGML:                    return "SGML"
    case ._1dInterleavedParityfec: return "1d-interleaved-parityfec"
    case .cacheManifest:           return "cache-manifest"
    case .calendar:                return "calendar"
    case .cql:                     return "cql"
    case .cqlExpression:           return "cql-expression"
    case .cqlIdentifier:           return "cql-identifier"
    case .css:                     return "css"
    case .csv:                     return "csv"
    case .csvSchema:               return "csv-schema"
    case .directory:               return "directory"
    case .dns:                     return "dns"
    case .ecmascript:              return "ecmascript"
    case .encaprtp:                return "encaprtp"
    case .example:                 return "example"
    case .fhirpath:                return "fhirpath"
    case .flexfec:                 return "flexfec"
    case .fwdred:                  return "fwdred"
    case .gff3:                    return "gff3"
    case .grammarRefList:          return "grammar-ref-list"
    case .html:                    return "html"
    case .javascript:              return "javascript"
    case .jcrCnd:                  return "jcr-cnd"
    case .markdown:                return "markdown"
    case .mizar:                   return "mizar"
    case .n3:                      return "n3"
    case .parameters:              return "parameters"
    case .parityfec:               return "parityfec"
    case .provenanceNotation:      return "provenance-notation"
    case .raptorfec:               return "raptorfec"
    case .rfc822Headers:           return "rfc822-headers"
    case .rtf:                     return "rtf"
    case .rtpEncAescm128:          return "rtp-enc-aescm128"
    case .rtploopback:             return "rtploopback"
    case .rtx:                     return "rtx"
    case .shaclc:                  return "shaclc"
    case .shex:                    return "shex"
    case .spdx:                    return "spdx"
    case .strings:                 return "strings"
    case .t140:                    return "t140"
    case .tabSeparatedValues:      return "tab-separated-values"
    case .troff:                   return "troff"
    case .turtle:                  return "turtle"
    case .ulpfec:                  return "ulpfec"
    case .uriList:                 return "uri-list"
    case .vcard:                   return "vcard"
    case .vtt:                     return "vtt"
    case .xml:                     return "xml"
    case .xmlExternalParsedEntity: return "xml-external-parsed-entity"
    case .other(let other):        return other
    case .any:                     return "*"
    }
  }
}
