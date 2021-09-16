#!/usr/bin/env node

import {readFileSync, writeFileSync} from 'fs';

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

public enum Suffix: String {
${
    records
        .map(({caseName, value}) => `  case ${caseName} = "${value}"`)
        .join('\n')
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

`

writeFileSync('Suffix.swift', code);