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
  public var description: String {
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

