#!/usr/bin/env node

import {readFileSync, writeFileSync} from 'fs';
import {toFormattedSwitchCase} from './commonUtility.mjs';

String.prototype.snakeToCamel = function () {
    return this.replace(/-(.)/g, (_, m) => m.toUpperCase())
};
String.prototype.firstNumberTreated = function () {
    return this.replace(/^\d/, (m) => '_'.concat(m))
}

/** @typedef RawMedia {[key:string]:Array<string>} */
/**
 * @typedef RawMediaRecord {{
 *     type       : string,
 *     tree       : Array<string>,
 * }}
 */
/**
 * @typedef SwiftEnumRecord ({
 *     name  : string,
 *     cases : Array<{
 *         case: string,
 *         value: string
 *     }>
 * })
 */

/** @type {RawMedia}*/
const medias = JSON.parse(readFileSync('./Medias.json').toString());

/** @type {function({type:string, subtypes:string}): RawMediaRecord} */
const toMediaRecord = ({type, subtype}) => ({
    type,
    tree: subtype.split(';')[0].split('+')[0].split('.')
});

const mediaRecords = Object.freeze(
    Object
        .keys(medias)
        .map(key => medias[key].map(subtype => ({type: key, subtype: subtype})))
        .reduce((l, r) => l.concat(r), [])
        .map(toMediaRecord)
        .filter(r => r.tree.length === 1) // TODO: Rework when support for tree subtypes is added.
);

/** @type {Array<{pascalCase:string,lowerCase:string}>} */
const types = mediaRecords
    .filter((r, _, l) => l.find(_r => _r.type === r.type) === r)
    .map(r => r.type)
    .map(type => ({lowerCase: type, pascalCase: type.replace(/^(.)/, (_, m) => m.toUpperCase())}));

types
    .map(({pascalCase, lowerCase}) => ({
        fileName: pascalCase.concat('.swift'),
        code: `import Foundation

public enum ${pascalCase} {
${
            mediaRecords
                .filter(r => r.type === lowerCase)
                .map(r => r.tree[0].snakeToCamel().firstNumberTreated())
                .filter((c, i, l) => l.indexOf(c) === i)
                .map(caseName => `  case ${caseName}(Suffix? = nil, Parameters? = nil)`)
                .slice()
                .sort((a, b) => a.charCodeAt(0) - b.charCodeAt(0))
                .concat('  case other(String, Suffix? = nil, Parameters? = nil)')
                .concat('  case anything(Suffix? = nil, Parameters? = nil)')
                .join('\n')
        }
}

extension ${pascalCase}: CustomStringConvertible { 
  public var description: String { rawValue }
}

extension ${pascalCase}: RawRepresentable {

  public init(rawValue: String) {
    let (subtype, suffix, parameters) = convert(string: rawValue)
    switch subtype {
${
            mediaRecords
                .filter(r => r.type === lowerCase)
                .map(r => ({
                    caseName: r.tree[0].snakeToCamel().firstNumberTreated(),
                    value: r.tree[0]
                }))
                .filter((r, i, l) => i === l.findIndex(_r => _r.caseName === r.caseName))
                .map(({caseName, value}) => [
                    `    case "${value}": `,
                    `self = .${caseName}(suffix, parameters)`
                ])
                .slice()
                .sort(([a], [b]) => a.charCodeAt(0) - b.charCodeAt(0))
                .concat([[
                    `    case "*": `,
                    `self = .anything(suffix, parameters)`
                ]])
                .concat([[
                    `    default: `,
                    `self = .other(subtype, suffix, parameters)`
                ]])
                .map(toFormattedSwitchCase)
                .join('\n')
        }
    }
  }

  public var rawValue: String {
    switch self {
${
            mediaRecords
                .filter(r => r.type === lowerCase)
                .map(r => ({
                    caseName: r.tree[0].snakeToCamel().firstNumberTreated(),
                    value: r.tree[0]
                }))
                .filter((r, i, l) => i === l.findIndex(_r => _r.caseName === r.caseName))
                .map(({caseName, value}) => [
                    `    case .${caseName}(let suffix, let parameters): `,
                    `return "${value}\\(suffix)\\(parameters)"`
                ])
                .slice()
                .sort(([a], [b]) => a.charCodeAt(0) - b.charCodeAt(0))
                .concat([[
                    '    case .other(let value, let suffix, let parameters): ',
                    'return "\\(value)\\(suffix)\\(parameters)"'
                ]])
                .concat([[
                    '    case .anything(let suffix, let parameters): ',
                    'return "*\\(suffix)\\(parameters)"'
                ]])
                .map(toFormattedSwitchCase)
                .join('\n')
        }
    }
  }

}

extension ${pascalCase}: MediaSubtype { public var type: MediaType { .${lowerCase}(self) } }

extension ${pascalCase}: Hashable {
  public static func ==(lhs: Self, rhs: Self) -> Bool {
    switch lhs {
${
            mediaRecords
                .filter(r => r.type === lowerCase)
                .map(r => ({
                    caseName: r.tree[0].snakeToCamel().firstNumberTreated(),
                    value: r.tree[0]
                }))
                .filter((r, i, l) => i === l.findIndex(_r => _r.caseName === r.caseName))
                .slice()
                .sort((a, b) => a.caseName.charCodeAt(0) - b.caseName.charCodeAt(0))
                .map(({caseName, value}) => [
                    `    case .${caseName}(let lhsSuffix, let lhsParameters):`,
                    `      guard case let .${caseName}(rhsSuffix, rhsParameters) = rhs else { return false }`,
                    `      if lhsSuffix != rhsSuffix { return false }`,
                    `      return lhsParameters == rhsParameters`
                ].join('\n'))
                .concat([
                    '    case .other(let lhsSubtype, let lhsSuffix, let lhsParameters):',
                    '      guard case let .other(rhsSubtype, rhsSuffix, rhsParameters) = rhs else { return false }',
                    '      if lhsSubtype.description != rhsSubtype.description { return false }',
                    '      if lhsSuffix != rhsSuffix { return false }',
                    '      return lhsParameters == rhsParameters'
                ].join('\n'))
                .concat([
                    '    case .anything(let lhsSuffix, let lhsParameters):',
                    '      guard case let .anything(rhsSuffix, rhsParameters) = rhs else { return false }',
                    '      if lhsSuffix != rhsSuffix { return false }',
                    '      return lhsParameters == rhsParameters'
                ].join('\n'))
                .join('\n')
        }
    }
  }

  public func hash(into hasher: inout Hasher) {
    switch self {
${
            mediaRecords
                .filter(r => r.type === lowerCase)
                .map(r => ({
                    caseName: r.tree[0].snakeToCamel().firstNumberTreated(),
                    value: r.tree[0]
                }))
                .filter((r, i, l) => i === l.findIndex(_r => _r.caseName === r.caseName))
                .slice()
                .sort((a, b) => a.caseName.charCodeAt(0) - b.caseName.charCodeAt(0))
                .map(({caseName}, i) => [
                    `    case .${caseName}(let suffix, let parameters):`,
                    `      hasher.combine(${i})`,
                    `      hasher.combine(suffix)`,
                    `      hasher.combine(parameters)`
                ].join('\n'))
                .concat([
                    '    case .other(let subtype, let suffix, let parameters):',
                    `      hasher.combine(-1)`,
                    `      hasher.combine(subtype.description)`,
                    `      hasher.combine(suffix)`,
                    `      hasher.combine(parameters)`
                ].join('\n'))
                .concat([
                    '    case .anything(let suffix, let parameters):',
                    `      hasher.combine(-2)`,
                    `      hasher.combine(suffix)`,
                    `      hasher.combine(parameters)`
                ].join('\n'))
                .join('\n')
        }
    }
  }
}
`
    }))
    .forEach(r => writeFileSync(r.fileName, r.code))

writeFileSync(
    'MediaType.swift',
    `import Foundation

/// A type-safe representation of [Media Type](https://www.iana.org/assignments/media-types/media-types.xhtml)s
/// (or formerly known as MIME types).
///
/// You can create a media type in a type-safe manner using one of the possible cases. You can also create
/// media type instances simply using string literals.
///
/// \`\`\`swift
/// MediaType.application(.json()) // is equivalent to
/// let mediaType: MediaType = "application/json"
/// \`\`\`
///
/// Media type suffixes and parameters are supported both via string literals and \`\`MediaType\`\` cases.
///
/// \`\`\`swift
/// MediaType.application(.atom(nil, ["charset": "utf-8"])) // is equivalent to
/// let mediaType: MediaType = "application/atom; charset=utf-8"
///
/// MediaType.application(.atom(.xml)) // is equivalent to
/// let mediaType: MediaType = "application/atom+xml"
///
/// MediaType.application(.atom(.xml, ["charset": "utf-8"])) // is equivalent to
/// let mediaType: MediaType = "application/atom+xml; charset=utf-8"
/// \`\`\`
///
/// You can create media type trees using either the string literal syntax, or using the \`other\` case of a particular
/// media type.
///
/// \`\`\`swift
/// MediaType.application(.other("vnd.efi.img")) // is equivalent to
/// "application/vnd.efi.img"
/// \`\`\`
public enum MediaType {
${
        types
            .map(({lowerCase, pascalCase}) => `  case ${lowerCase}(${pascalCase})`)
            .join('\n')
    }
  case other(type: CustomStringConvertible, subtype: CustomStringConvertible, Suffix? = nil, Parameters? = nil)
  case anything(Anything)
}

extension MediaType: CustomStringConvertible {
  /// The textual representation of the media type.
  ///
  /// The string form of a media type follows the pattern: \`type/subtype[+suffix][;parameters]\`. A few examples:
  ///
  /// \`\`\`swift
  /// MediaType.text(.css()).description // Outputs: text/css
  /// MediaType.audio(.ac3(nil, ["rate": 32000])).description // Outputs: audio/ac3;rate=32000
  /// MediaType.application(.atom(.xml, ["charset": "utf-8"])).description // Outputs: application/atom+xml;charset=utf-8
  /// \`\`\`
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
${
        types
            .map(({lowerCase, pascalCase}) => [
                `    case "${lowerCase}": `,
                `self = .${lowerCase}(${pascalCase}(rawValue: rawSubtype))`
            ])
            .concat([[
                '    case "*": ',
                'self = .anything(Anything(rawValue: rawSubtype))'
            ]])
            .concat([[
                '    default: ',
                'self = .other(type: rawType, subtype: subtype, suffix, parameters)'
            ]])
            .slice()
            .sort(([a], [b]) => a.charCodeAt(0) - b.charCodeAt(0))
            .map(toFormattedSwitchCase)
            .join('\n')
    }
    }
  }

  /// The raw string value of the media type.
  public var rawValue: String {
    switch self {
${
        types
            .map(({lowerCase}) => [
                `    case .${lowerCase}(let subtype): `,
                `return "${lowerCase}/\\(subtype)"`
            ])
            .concat([[
                '    case .other(let type, let subtype, let suffix, let parameters):',
                'return "\\(type)/\\(subtype)\\(suffix)\\(parameters)"'
            ]])
            .concat([[
                '    case .anything(let anything):',
                'return "*/\\(anything)"'
            ]])
            .slice()
            .sort(([a], [b]) => a.charCodeAt(0) - b.charCodeAt(0))
            .map(toFormattedSwitchCase)
            .join('\n')
    }
    }
  }
}

extension MediaType: ExpressibleByStringLiteral {
  /// Creates a media type from a string literal.
  ///
  /// Do not call this initializer directly. This rather allows you to use a string literal where you have to provide
  /// a \`\`MediaType\`\` node.
  public init(stringLiteral value: String) { self.init(rawValue: value) }
}

extension MediaType: Hashable {
  public static func ==(lhs: Self, rhs: Self) -> Bool {
    switch lhs {
${
        types
            .slice()
            .sort((a, b) => a.lowerCase.charCodeAt(0) - b.lowerCase.charCodeAt(0))
            .map(({lowerCase}) => [
                `    case .${lowerCase}(let lhs): `,
                `if case let .${lowerCase}(rhs) = rhs { return lhs == rhs } else { return false }`
            ])
            .concat([[
                '    case .anything(let lhs): ',
                `if case let .anything(rhs) = rhs { return lhs == rhs } else { return false }`
            ]])
            .map(toFormattedSwitchCase)
            .concat([
                '    case .other(let lhsType, let lhsSubtype, let lhsSuffix, let lhsParameters):',
                '      guard case let .other(rhsType, rhsSubtype, rhsSuffix, rhsParameters) = rhs else { return false }',
                '      if (lhsType.description != rhsType.description) { return false }',
                '      if (lhsSubtype.description != rhsSubtype.description) { return false }',
                '      if (lhsSuffix != rhsSuffix) { return false }',
                '      if (lhsParameters != rhsParameters) { return false }',
                '      return true'
            ].join('\n'))
            .join('\n')
    }
    }
  }

  public func hash(into hasher: inout Hasher) {
    switch self {
${
        types
            .slice()
            .sort((a, b) => a.lowerCase.charCodeAt(0) - b.lowerCase.charCodeAt(0))
            .map(({lowerCase}, i) => [
                `    case .${lowerCase}(let subtype):`,
                `      hasher.combine(${i})`,
                '      hasher.combine(subtype)'
            ].join('\n'))
            .concat([
                '    case .anything(let subtype):',
                `      hasher.combine(-1)`,
                '      hasher.combine(subtype)'
            ].join('\n'))
            .concat([
                '    case .other(let type, let subtype, let suffix, let parameters):',
                '      hasher.combine(-2)',
                '      hasher.combine(type.description)',
                '      hasher.combine(subtype.description)',
                '      hasher.combine(suffix)',
                '      hasher.combine(parameters)'
            ].join('\n'))
            .join('\n')
    }
    }
  }
}
`);

writeFileSync(
    'Anything.swift',
    `import Foundation

public enum Anything {
  case other(CustomStringConvertible, Suffix? = nil, Parameters? = nil)
  case anything(Suffix? = nil, Parameters? = nil)
}

extension Anything: CustomStringConvertible {
  public var description: String { rawValue }
}

extension Anything: MediaSubtype { public var type: MediaType { .anything(self) } }

extension Anything: RawRepresentable {

  public init(rawValue: String) {
    let (subtype, suffix, parameters) = convert(string: rawValue)
    switch subtype {
    case "*" : self = .anything(suffix, parameters)
    default  : self = .other(subtype, suffix, parameters)
    }
  }

  public var rawValue: String {
    switch self {
    case .other(let subtype, let suffix, let params): return "\\(subtype)\\(suffix)\\(params)"
    case .anything(let suffix, let params):           return "*\\(suffix)\\(params)"
    }
  }

}

extension Anything: Hashable {
  public static func ==(lhs: Self, rhs: Self) -> Bool {
    switch lhs {
    case .other(let lhsSubtype, let lhsSuffix, let lhsParameters):
      guard case let .other(rhsSubtype, rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSubtype.description != rhsSubtype.description { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    case .anything(let lhsSuffix, let lhsParameters):
      guard case let .anything(rhsSuffix, rhsParameters) = rhs else { return false }
      if lhsSuffix != rhsSuffix { return false }
      return lhsParameters == rhsParameters
    }
  }

  public func hash(into hasher: inout Hasher) {
    switch self {
    case .other(let subtype, let suffix, let parameters):
      hasher.combine(-1)
      hasher.combine(subtype.description)
      hasher.combine(suffix.description)
      hasher.combine(parameters)
    case .anything(let suffix, let parameters):
      hasher.combine(-2)
      hasher.combine(suffix)
      hasher.combine(parameters)
    }
  }
}
`);

writeFileSync(
    'Parameters.swift',
    `import Foundation

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
`);

writeFileSync(
    '_Utility.swift',
    `import Foundation

internal typealias RawSubtype = (
  subtype: String,
  suffix: Suffix?,
  parameters: Parameters?
)
internal func convert(string rawValue: String) -> RawSubtype {
  let chunks = rawValue.split(separator: ";")
  let parameterChunks = chunks.count > 1 ? chunks[1...] : []
  let parameters: Parameters? = parameterChunks.isEmpty
    ? nil
    : parameterChunks
    .map { $0.split(separator: "=") }
    .reduce(into: [:]) { (result, parameterChunk) in
      if parameterChunk.isEmpty { return }
      result?[String(parameterChunk.first!).trimmingCharacters(in: .whitespacesAndNewlines)] = parameterChunk.indices.contains(1)
        ? parameterChunk[1].trimmingCharacters(in: .whitespacesAndNewlines)
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
    guard let value = value else { return }
    for (key, value) in value {
      combine(key)
      combine(value?.description)
    }
  }
}
`);
