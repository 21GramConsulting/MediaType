#!/usr/bin/env node

import {readFileSync, writeFileSync} from 'fs';

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

/** @type {function([string,string], number, Array<[string, string]>>): string} */
const toFormattedSwitchCase = ([caseColumn, returnColumn], _, l) => caseColumn
    .concat(
        Array(l
            .concat()
            .sort(([c1], [c2]) => c2.length - c1.length)[0][0]
            .length - caseColumn.length
        ).fill(" ").join("")
    )
    .concat(returnColumn);

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
  public var description: String {
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
                .concat([[
                    '    case .other(let value, let suffix, let parameters): ',
                    'return "\\(value)\\(suffix)\\(parameters)"'
                ]])
                .concat([[
                    '    case .anything(let suffix, let parameters): ',
                    'return "*\\(suffix)\\(parameters)"'
                ]])
                .slice()
                .sort(([a], [b]) => a.charCodeAt(0) - b.charCodeAt(0))
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
  public var description: String {
    switch self {
${
        types
            .map(({lowerCase}) => [
                `    case .${lowerCase}(let subtype):`,
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

`);

writeFileSync(
    'Anything.swift',
    `import Foundation

public enum Anything {
  case other(CustomStringConvertible, Suffix? = nil, Parameters? = nil)
  case anything(Suffix? = nil, Parameters? = nil)
}

extension Anything: CustomStringConvertible {
  public var description: String { 
    switch self {
    case .other(let subtype, let suffix, let params): return "\\(subtype)\\(suffix)\\(params)"
    case .anything(let suffix, let params):           return "*\\(suffix)\\(params)"
    }
  }
}

extension Anything: MediaSubtype { public var type: MediaType { .anything(self) } }

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
    'MediaSubtype.swift',
    `import Foundation

public protocol MediaSubtype {
  var type: MediaType { get }
}
`);