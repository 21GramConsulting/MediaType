import Foundation

internal typealias RawSubtype = (
  subtype: String,
  suffix: Suffix?,
  parameters: Parameters?
)
internal func convert(string rawValue: String) -> RawSubtype {
  let chunks = rawValue.split(separator: ";")
  let parameterChunks = chunks[1...]
  let parameters: Parameters? = parameterChunks.isEmpty
    ? nil
    : parameterChunks
    .map { $0.split(separator: "=") }
    .reduce(into: [:]) { (result, parameterChunk) in
      if parameterChunk.isEmpty { return }
      result?[String(parameterChunk.first!)] = parameterChunk.indices.contains(1)
        ? parameterChunk[1]
        : nil
    }
  let suffixedChunks = chunks.first?.split(separator: "+")
  let subType = suffixedChunks?.first ?? "*"
  let suffix = (suffixedChunks?.count ?? 0) > 1
    ? suffixedChunks?[1] == nil
    ? nil
    : Suffix(rawValue: String(suffixedChunks![1]))
    : nil
  return (
    subtype: String(subType),
    suffix: suffix,
    parameters: parameters
  )
}

func ==(lhs: Parameters, rhs: Parameters) -> Bool {
  if lhs.keys != rhs.keys { return false }
  for (lhsKey, lhsValue) in lhs {
    guard let rhsValue = rhs[lhsKey] else {
      if lhsValue != nil {
        return false
      } else {
        continue
      }
    }
    guard let lhsValue = lhsValue else { return false }
    if lhsValue.description != rhsValue!.description { return false }
  }
  return true
}

func !=(lhs: Parameters, rhs: Parameters) -> Bool { !(lhs == rhs) }

func ==(lhs: Parameters?, rhs: Parameters?) -> Bool {
  var leftIsNil = false
  var rightIsNil = false
  if case .none = lhs { leftIsNil = true }
  if case .none = rhs { rightIsNil = true }
  if leftIsNil || rightIsNil { return leftIsNil == rightIsNil }
  return lhs! == rhs!
}

func !=(lhs: Parameters?, rhs: Parameters?) -> Bool { !(lhs == rhs) }

extension Hasher {
  @inlinable mutating func combine(_ value: Parameters?) {
    guard let value = value else { return combine(nil) }
    for (key, value) in value {
      combine(key)
      combine(value?.description)
    }
  }
}
