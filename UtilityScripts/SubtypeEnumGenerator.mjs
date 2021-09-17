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
`
    }))
    .forEach(r => writeFileSync(r.fileName, r.code))

writeFileSync(
    'MediaType.swift',
    `import Foundation

public enum MediaType {
${
        types
            .map(({lowerCase, pascalCase}) => `  case ${lowerCase}(${pascalCase})`)
            .join('\n')
    }
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
${
        types
            .map(({lowerCase, pascalCase}) => [
                `    case "${lowerCase}": `,
                `self = .${lowerCase}(${pascalCase}(rawValue: rawSubtype))`
            ])
            .concat([[
                '    case "*": ',
                'self = .anything(Anything(rawValue: rawValue))'
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

extension MediaType:ExpressibleByStringLiteral {
  public init(stringLiteral value: String) { self.init(rawValue: value) }
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
`);