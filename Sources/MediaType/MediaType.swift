import Foundation

/// A type-safe representation of [Media Type](https://www.iana.org/assignments/media-types/media-types.xhtml)s
/// (or formerly known as MIME types).
///
/// You can create a media type in a type-safe manner using one of the possible cases. You can also create
/// media type instances simply using string literals.
///
/// ```swift
/// let mediaType: MediaType = "application/json" // is equivalent to
/// MediaType.application(.json())
/// ```
///
/// Media type suffixes and parameters are supported both via string literals and ``MediaType`` cases.
///
/// ```swift
/// let mediaType: MediaType = "application/atom; charset=utf-8" // is equivalent to
/// MediaType.application(.atom(nil, ["charset": "utf-8"]))
///
/// let mediaType: MediaType = "application/atom+xml" // is equivalent to
/// MediaType.application(.atom(.xml))
///
/// let mediaType: MediaType = "application/atom+xml; charset=utf-8" // is equivalent to
/// MediaType.application(.atom(.xml, ["charset": "utf-8"]))
/// ```
///
/// You can create media type trees using either the string literal syntax, or using the `other` case of a particular
/// media type.
///
/// ```swift
/// "application/vnd.efi.img" // is equivalent to
/// MediaType.application(.other("vnd.efi.img"))
/// ```
public enum MediaType {
  /// Represents the `application` media type.
  ///
  /// Represents binary data. Common examples: `application/json`, `application/octet-stream`.
  ///
  /// For the whole family of `application` media types consult the
  /// [official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#application) documentation.
  case application(Application)
  /// Represents the `audio` media type.
  ///
  /// Represents audible data. Common examples: `audio/ac3`, `audio/mpeg`.
  ///
  /// For the whole family of `audio` media types consult the
  /// [official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#audio) documentation.
  case audio(Audio)
  /// Represents the `font` media type.
  ///
  /// Represents font or typeface data. Common examples: `font/woff`, `font/ttf`.
  ///
  /// For the whole family of `font` media types consult the
  /// [official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#font) documentation.
  case font(Font)
  /// Represents the `image` media type.
  ///
  /// Represents image or graphical data. This includes bitmap and vector images, along with animated image formats.
  /// Common examples: `image/jpeg`, `image/apng`.
  ///
  /// For the whole family of `image` media types consult the
  /// [official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#image) documentation.
  case image(Image)
  /// Represents the `message` media type.
  ///
  /// Represents embedded message data. Common examples: `message/rfc882`, `message/http`.
  ///
  /// For the whole family of `message` media types consult the
  /// [official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#message) documentation.
  case message(Message)
  /// Represents the `model` media type.
  ///
  /// Represents 3D modelling data. Common examples: `model/step`, `model/3mf`.
  ///
  /// For the whole family of `model` media types consult the
  /// [official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#model) documentation.
  case model(Model)
  /// Represents the `multipart` media type.
  ///
  /// Represents data formed from multiple components, which may have their individual media types.
  /// Common examples: `multipart/form-data`, `multipart/encrypted`.
  ///
  /// For the whole family of `multipart` media types consult the
  /// [official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#multipart) documentation.
  case multipart(Multipart)
  /// Represents the `text` media type.
  ///
  /// Represents textual only data. Common examples: `text/css`, `text/html`.
  ///
  /// For the whole family of `text` media types consult the
  /// [official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#text) documentation.
  case text(Text)
  /// Represents the `video` media type.
  ///
  /// Represents video data. Common examples: `video/mp4`, `video/H264`.
  ///
  /// For the whole family of `video` media types consult the
  /// [official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#video) documentation.
  case video(Video)
  /// Represents a custom media type that is currently not officially defined.
  ///
  /// Represents a custom media type with the given `type` and `subtype`. Optionally, you can specify a ``Suffix`` and
  /// ``Parameters``.
  case other(type: CustomStringConvertible, subtype: CustomStringConvertible, Suffix? = nil, Parameters? = nil)
  /// Represents a wildcard media type.
  ///
  /// A wildcard media type has a type of `*`. A few examples:
  ///
  /// ```swift
  /// MediaType.anything(.anything()) // Creates: */*
  /// MediaType.anything(.other("dialog")) // Creates: */dialog
  /// MediaType.anything(.other("response", .xml)) // Creates: */response+xml
  /// ```
  case anything(Anything)
}

extension MediaType: CustomStringConvertible {
  /// The textual representation of the media type.
  ///
  /// The string form of a media type follows the pattern: `type/subtype[+suffix][;parameters]`. A few examples:
  ///
  /// ```swift
  /// MediaType.text(.css()).description // Outputs: text/css
  /// MediaType.audio(.ac3(nil, ["rate": 32000])).description // Outputs: audio/ac3;rate=32000
  /// MediaType.application(.atom(.xml, ["charset": "utf-8"])).description // Outputs: application/atom+xml;charset=utf-8
  /// ```
  public var description: String { rawValue }
}

extension MediaType: RawRepresentable {
  /// Creates a media type from its raw string value.
  ///
  /// - Parameter rawValue: The raw string value.
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
    case "*":           self = .anything(Anything(rawValue: rawSubtype))
    default:            self = .other(type: rawType, subtype: subtype, suffix, parameters)
    }
  }

  /// The raw string value of the media type.
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

extension MediaType: ExpressibleByStringLiteral {
  /// Creates a media type from a string literal.
  ///
  /// Do not call this initializer directly. This rather allows you to use a string literal where you have to provide
  /// a ``MediaType`` node.
  public init(stringLiteral value: String) { self.init(rawValue: value) }
}

extension MediaType: Hashable {
  /// Returns a Boolean indicating whether two media types are the same.
  ///
  /// Two media types represent the same thing, and thus considered to be equal, if they have the same type, subtype,
  /// ``Suffix`` and ``Parameters``.
  public static func ==(lhs: Self, rhs: Self) -> Bool {
    switch lhs {
    case .application(let lhs): if case let .application(rhs) = rhs { return lhs == rhs } else { return false }
    case .audio(let lhs):       if case let .audio(rhs) = rhs { return lhs == rhs } else { return false }
    case .font(let lhs):        if case let .font(rhs) = rhs { return lhs == rhs } else { return false }
    case .image(let lhs):       if case let .image(rhs) = rhs { return lhs == rhs } else { return false }
    case .message(let lhs):     if case let .message(rhs) = rhs { return lhs == rhs } else { return false }
    case .model(let lhs):       if case let .model(rhs) = rhs { return lhs == rhs } else { return false }
    case .multipart(let lhs):   if case let .multipart(rhs) = rhs { return lhs == rhs } else { return false }
    case .text(let lhs):        if case let .text(rhs) = rhs { return lhs == rhs } else { return false }
    case .video(let lhs):       if case let .video(rhs) = rhs { return lhs == rhs } else { return false }
    case .anything(let lhs):    if case let .anything(rhs) = rhs { return lhs == rhs } else { return false }
    case .other(let lhsType, let lhsSubtype, let lhsSuffix, let lhsParameters):
      guard case let .other(rhsType, rhsSubtype, rhsSuffix, rhsParameters) = rhs else { return false }
      if (lhsType.description != rhsType.description) { return false }
      if (lhsSubtype.description != rhsSubtype.description) { return false }
      if (lhsSuffix != rhsSuffix) { return false }
      if (lhsParameters != rhsParameters) { return false }
      return true
    }
  }

  public func hash(into hasher: inout Hasher) {
    switch self {
    case .application(let subtype):
      hasher.combine(0)
      hasher.combine(subtype)
    case .audio(let subtype):
      hasher.combine(1)
      hasher.combine(subtype)
    case .font(let subtype):
      hasher.combine(2)
      hasher.combine(subtype)
    case .image(let subtype):
      hasher.combine(3)
      hasher.combine(subtype)
    case .message(let subtype):
      hasher.combine(4)
      hasher.combine(subtype)
    case .model(let subtype):
      hasher.combine(5)
      hasher.combine(subtype)
    case .multipart(let subtype):
      hasher.combine(6)
      hasher.combine(subtype)
    case .text(let subtype):
      hasher.combine(7)
      hasher.combine(subtype)
    case .video(let subtype):
      hasher.combine(8)
      hasher.combine(subtype)
    case .anything(let subtype):
      hasher.combine(-1)
      hasher.combine(subtype)
    case .other(let type, let subtype, let suffix, let parameters):
      hasher.combine(-2)
      hasher.combine(type.description)
      hasher.combine(subtype.description)
      hasher.combine(suffix)
      hasher.combine(parameters)
    }
  }
}
