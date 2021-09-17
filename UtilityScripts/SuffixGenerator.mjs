#!/usr/bin/env node

import {readFileSync, writeFileSync} from 'fs';
import {toFormattedSwitchCase} from './commonUtility.mjs';

/** @type {Array<string>} */
const suffixes = JSON.parse(readFileSync('./Suffixes.json').toString());
/** @type {{caseName:string,value:string}} */
const records = suffixes
    .map(ext => ({
        'caseName': ext
            .slice(1)
            .replace(/-(.)/g, (_, m) => m.toUpperCase()),
        'value': ext
    }));

const code = `import Foundation

public enum Suffix {
${
    records
        .map(({caseName, value}) => `  case ${caseName}`)
        .join('\n')
}
  case other(CustomStringConvertible)
}

extension Suffix: RawRepresentable {
  public init(rawValue: String) {
    let rawValue = rawValue.starts(with: "+")
      ? String(rawValue.split(separator: "+", maxSplits: 1).last!)
      : rawValue
    switch (rawValue) {
${
    records
        .map(({caseName, value}) => [
            `      case "${value.replace(/^\+/, '')}": `,
            `self = .${caseName}`
        ])
        .sort(([a], [b]) => a.charCodeAt(0) - b.charCodeAt(0))
        .concat([[
            `      default: `,
            `self = .other(rawValue)`
        ]])
        .map(toFormattedSwitchCase)
        .join('\n')
}
    }
  }
  
  public var rawValue: String {
    switch self {
${
    records
        .map(({caseName, value}) => [
            `      case .${caseName}: `,
            `return "${value}"`
        ])
        .sort(([a], [b]) => a.charCodeAt(0) - b.charCodeAt(0))
        .concat([[
            "      case .other(let value): ",
            `return value.description.starts(with: "+") ? value.description : "+\\(value)"`
        ]])
        .map(toFormattedSwitchCase)
        .join('\n')
}
    }
  }
}

extension Suffix: CustomStringConvertible { public var description: String { rawValue } }

extension Optional: CustomStringConvertible where Wrapped == Suffix {
  public var description: String {
    switch self {
    case .none:            return ""
    case .some(let value): return value.description
    }
  }
}

extension Suffix: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.init(rawValue: value)
  }
}
`

writeFileSync('Suffix.swift', code);