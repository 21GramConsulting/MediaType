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
