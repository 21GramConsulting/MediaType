import Foundation

public extension MediaTypeEnum {
  enum Multipart {
    case appledouble
    case byteranges
    case encrypted
    case example
    case formData
    case headerSet
    case multilingual
    case related
    case report
    case signed
    case voiceMessage
    case xMixedReplace
    case other(String)
    case any
  }
}

extension MediaTypeEnum.Multipart: CustomStringConvertible {
  public var description: String { rawValue }
}

extension MediaTypeEnum.Multipart: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) { self.init(rawValue: value) }
}

extension MediaTypeEnum.Multipart: RawRepresentable {
  public init(rawValue: String) {
    switch rawValue {
    case "appledouble":     self = .appledouble
    case "byteranges":      self = .byteranges
    case "encrypted":       self = .encrypted
    case "example":         self = .example
    case "form-data":       self = .formData
    case "header-set":      self = .headerSet
    case "multilingual":    self = .multilingual
    case "related":         self = .related
    case "report":          self = .report
    case "signed":          self = .signed
    case "voice-message":   self = .voiceMessage
    case "x-mixed-replace": self = .xMixedReplace
    case "*":               self = .any
    default:                self = .other(rawValue)
    }
  }

  public var rawValue: String {
    switch self {
    case .appledouble:      return "appledouble"
    case .byteranges:       return "byteranges"
    case .encrypted:        return "encrypted"
    case .example:          return "example"
    case .formData:         return "form-data"
    case .headerSet:        return "header-set"
    case .multilingual:     return "multilingual"
    case .related:          return "related"
    case .report:           return "report"
    case .signed:           return "signed"
    case .voiceMessage:     return "voice-message"
    case .xMixedReplace:    return "x-mixed-replace"
    case .other(let other): return other
    case .any:              return "*"
    }
  }
}
