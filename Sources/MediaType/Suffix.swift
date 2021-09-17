import Foundation

public enum Suffix {
  case xml
  case json
  case ber
  case cbor
  case der
  case fastinfoset
  case wbxml
  case zip
  case tlv
  case jsonSeq
  case sqlite3
  case jwt
  case gzip
  case cborSeq
  case zstd
  case other(CustomStringConvertible)
}

extension Suffix: RawRepresentable {
  public init(rawValue: String) {
    let rawValue = rawValue.starts(with: "+")
      ? String(rawValue.split(separator: "+", maxSplits: 1).last!)
      : rawValue
    switch (rawValue) {
      case "xml":         self = .xml
      case "json":        self = .json
      case "ber":         self = .ber
      case "cbor":        self = .cbor
      case "der":         self = .der
      case "fastinfoset": self = .fastinfoset
      case "wbxml":       self = .wbxml
      case "zip":         self = .zip
      case "tlv":         self = .tlv
      case "json-seq":    self = .jsonSeq
      case "sqlite3":     self = .sqlite3
      case "jwt":         self = .jwt
      case "gzip":        self = .gzip
      case "cbor-seq":    self = .cborSeq
      case "zstd":        self = .zstd
      default:            self = .other(rawValue)
    }
  }
  
  public var rawValue: String {
    switch self {
      case .xml:              return "+xml"
      case .json:             return "+json"
      case .ber:              return "+ber"
      case .cbor:             return "+cbor"
      case .der:              return "+der"
      case .fastinfoset:      return "+fastinfoset"
      case .wbxml:            return "+wbxml"
      case .zip:              return "+zip"
      case .tlv:              return "+tlv"
      case .jsonSeq:          return "+json-seq"
      case .sqlite3:          return "+sqlite3"
      case .jwt:              return "+jwt"
      case .gzip:             return "+gzip"
      case .cborSeq:          return "+cbor-seq"
      case .zstd:             return "+zstd"
      case .other(let value): return value.description.starts(with: "+") ? value.description : "+\(value)"
    }
  }
}

extension Suffix: CustomStringConvertible { public var description: String { rawValue } }

extension Optional: CustomStringConvertible where Wrapped == Suffix {
  public var description: String {
    switch self {
    case .none:            return ""
    case .some(let value): return value.description
    }
  }
}

extension Suffix: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.init(rawValue: value)
  }
}
