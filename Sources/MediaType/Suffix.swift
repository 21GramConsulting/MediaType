import Foundation

public enum Suffix: String {
  case xml = "+xml"
  case json = "+json"
  case ber = "+ber"
  case cbor = "+cbor"
  case der = "+der"
  case fastinfoset = "+fastinfoset"
  case wbxml = "+wbxml"
  case zip = "+zip"
  case tlv = "+tlv"
  case jsonSeq = "+json-seq"
  case sqlite3 = "+sqlite3"
  case jwt = "+jwt"
  case gzip = "+gzip"
  case cborSeq = "+cbor-seq"
  case zstd = "+zstd"
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

