import Foundation

public enum MediaType {
  case application(Application)
  case audio(Audio)
  case font(Font)
  case image(Image)
  case message(Message)
  case model(Model)
  case multipart(Multipart)
  case text(Text)
  case video(Video)
  case other(type: String, subtype: String, Suffix? = nil, Parameters? = nil)
  case anything(Anything)
}

extension MediaType: CustomStringConvertible {
  public var description: String { rawValue }
}

extension MediaType: RawRepresentable {

  public init(rawValue: String) {
    let chunks = rawValue.split(separator: "/", maxSplits: 1)
    let rawType = String(chunks.first ?? "*")
    let rawSubtype = String(chunks.count > 1 ? chunks[1] : "")
    let (subtype, suffix, parameters) = convert(string: rawSubtype)
    switch rawType {
    case "application": self = .application(Application(rawValue: rawSubtype))
    case "audio":       self = .audio(Audio(rawValue: rawSubtype))
    case "font":        self = .font(Font(rawValue: rawSubtype))
    case "image":       self = .image(Image(rawValue: rawSubtype))
    case "message":     self = .message(Message(rawValue: rawSubtype))
    case "model":       self = .model(Model(rawValue: rawSubtype))
    case "multipart":   self = .multipart(Multipart(rawValue: rawSubtype))
    case "text":        self = .text(Text(rawValue: rawSubtype))
    case "video":       self = .video(Video(rawValue: rawSubtype))
    case "*":           self = .anything(Anything(rawValue: rawValue))
    default:            self = .other(type: rawType, subtype: subtype, suffix, parameters)
    }
  }

  public var rawValue: String {
    switch self {
    case .application(let subtype):                                return "application/\(subtype)"
    case .audio(let subtype):                                      return "audio/\(subtype)"
    case .font(let subtype):                                       return "font/\(subtype)"
    case .image(let subtype):                                      return "image/\(subtype)"
    case .message(let subtype):                                    return "message/\(subtype)"
    case .model(let subtype):                                      return "model/\(subtype)"
    case .multipart(let subtype):                                  return "multipart/\(subtype)"
    case .text(let subtype):                                       return "text/\(subtype)"
    case .video(let subtype):                                      return "video/\(subtype)"
    case .other(let type, let subtype, let suffix, let parameters):return "\(type)/\(subtype)\(suffix)\(parameters)"
    case .anything(let anything):                                  return "*/\(anything)" 
    }
  }
}

extension MediaType:ExpressibleByStringLiteral {
  public init(stringLiteral value: String) { self.init(rawValue: value) }
}
