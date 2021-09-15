import Foundation

public enum MediaTypeEnum {
  case application
  case audio
  case font
  case image
  case message
  case model
  case multipart
  case text
  case video
  case other(String)
  case any
}

extension MediaTypeEnum: RawRepresentable {
  public init(rawValue: String) {
    switch rawValue {
    case "application": self = .application
    case "audio":       self = .audio
    case "font":        self = .font
    case "image":       self = .image
    case "message":     self = .message
    case "model":       self = .model
    case "multipart":   self = .multipart
    case "text":        self = .text
    case "video":       self = .video
    case "*":           self = .any
    default:            self = .other(rawValue)
    }
  }

  public var rawValue: String {
    switch self {
    case .application:      return "application"
    case .audio:            return "audio"
    case .font:             return "font"
    case .image:            return "image"
    case .message:          return "message"
    case .model:            return "model"
    case .multipart:        return "multipart"
    case .text:             return "text"
    case .video:            return "video"
    case .other(let other): return other
    case .any:              return "*"
    }
  }
}

extension MediaTypeEnum: CustomStringConvertible { public var description: String { rawValue } }
extension MediaTypeEnum: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) { self.init(rawValue: value) }
}
