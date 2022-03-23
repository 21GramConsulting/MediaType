import Foundation

/// Represents parameters of ``MediaType``s.
///
/// A media type may have parameters. For example `text/html;charset=utf-8` defines a media type with UTF-8 charset
/// instead of the default ASCII.
///
/// You can specify arbitrary parameters to *any* of the ``MediaType``s using a Swift
/// [dictionary](https://developer.apple.com/documentation/swift/dictionary). Keep in mind though, that not all such
/// parameter values are registered (see the
/// [official site](https://www.iana.org/assignments/media-types/media-types.xhtml) for details).
///
/// You can specify parameters by using either the Swift DSL or string literal syntax. Parameters in string variables
/// are also supported. The following examples are equivalent:
///
/// ```swift
/// let mediaType: MediaType = "audio/ac3;rate=32000"  // is equivalent to
///
/// let mediaType = MediaType.audio(.ac3(nil, ["rate": 32_000])) // is equivalent to
///
/// let rawMediaType = "audio/ac3;rate=32000"
/// let mediaType = MediaType(rawValue: rawMediaType)
/// ```
public typealias Parameters = [String: CustomStringConvertible?]

internal extension DefaultStringInterpolation {
  @inlinable mutating func appendInterpolation(_ value: Parameters?) {
    guard let parameters = value else { return }
    if parameters.isEmpty { return }
    for (key, value) in parameters {
      appendLiteral(";")
      appendLiteral(key)
      guard let value = value else { continue }
      appendLiteral("=")
      appendLiteral(value.description)
    }
  }
}
