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

extension Suffix: Hashable {
  public static func ==(lhs: Self, rhs: Self) -> Bool {
    switch lhs {
    case .xml:                  if case .xml = rhs { return true } else { return false }
    case .json:                 if case .json = rhs { return true } else { return false }
    case .ber:                  if case .ber = rhs { return true } else { return false }
    case .cbor:                 if case .cbor = rhs { return true } else { return false }
    case .der:                  if case .der = rhs { return true } else { return false }
    case .fastinfoset:          if case .fastinfoset = rhs { return true } else { return false }
    case .wbxml:                if case .wbxml = rhs { return true } else { return false }
    case .zip:                  if case .zip = rhs { return true } else { return false }
    case .tlv:                  if case .tlv = rhs { return true } else { return false }
    case .jsonSeq:              if case .jsonSeq = rhs { return true } else { return false }
    case .sqlite3:              if case .sqlite3 = rhs { return true } else { return false }
    case .jwt:                  if case .jwt = rhs { return true } else { return false }
    case .gzip:                 if case .gzip = rhs { return true } else { return false }
    case .cborSeq:              if case .cborSeq = rhs { return true } else { return false }
    case .zstd:                 if case .zstd = rhs { return true } else { return false }
    case .other(let lhsSuffix): if case let .other(rhsSuffix) = rhs { return lhsSuffix.description == rhsSuffix.description } else { return false }
    }
  }

  public func hash(into hasher: inout Hasher) {
    switch self {
    case .xml:              hasher.combine(0)
    case .json:             hasher.combine(1)
    case .ber:              hasher.combine(2)
    case .cbor:             hasher.combine(3)
    case .der:              hasher.combine(4)
    case .fastinfoset:      hasher.combine(5)
    case .wbxml:            hasher.combine(6)
    case .zip:              hasher.combine(7)
    case .tlv:              hasher.combine(8)
    case .jsonSeq:          hasher.combine(9)
    case .sqlite3:          hasher.combine(10)
    case .jwt:              hasher.combine(11)
    case .gzip:             hasher.combine(12)
    case .cborSeq:          hasher.combine(13)
    case .zstd:             hasher.combine(14)
    case .other(let other): hasher.combine(other.description)
    }
  }
}
