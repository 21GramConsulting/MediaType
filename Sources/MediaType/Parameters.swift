import Foundation

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
