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

/// Represents the media type [suffix](https://en.wikipedia.org/wiki/Media_type#Suffix)es.
///
/// The library allows all \`\`MediaType\`\`s to have a suffix. Keep in mind though, that not all such combinations are
/// registered (see the [official site](https://www.iana.org/assignments/media-types/media-types.xhtml) for details).
///
/// It is also possible to create completely custom suffixes by using either the \`\`Suffix/other(_:)\`\` case directly or a
/// string literal.
///
/// \`\`\`swift
/// MediaType.application(.jose(.json)) // Creates: application/jose+json
/// MediaType.application(.jose(.other("custom"))) // Creates: application/jose+custom
/// MediaType.image(.svg("zip")) // Creates: image/svg+zip
/// \`\`\`
///
/// You can access a media type's suffix by matching using a \`switch\` statement:
///
/// \`\`\`swift
/// let mediaType = MediaType.application(.calendar(.xml))
/// switch mediaType {
/// case .application(.calendar(let suffix, _)):
///   guard let suffix = suffix else { break }
///   print("Suffix: \\(suffix)", "Suffix: +xml")
/// default:
///   print("Unsupported media type: \\(mediaType)")
/// }
/// \`\`\`
public enum Suffix {
${
    records
        .map(({caseName, value}) => `  /// Represents the \`${value.substring(1)}\` suffix.
  case ${caseName}`)
        .join('\n')
}
  /// Represents a custom suffix.
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
            `    case "${value.replace(/^\+/, '')}": `,
            `self = .${caseName}`
        ])
        .sort(([a], [b]) => a.charCodeAt(0) - b.charCodeAt(0))
        .concat([[
            `    default: `,
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
            `    case .${caseName}:`,
            `return "${value}"`
        ])
        .sort(([a], [b]) => a.charCodeAt(0) - b.charCodeAt(0))
        .concat([[
            "    case .other(let value): ",
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

extension Suffix: Hashable {
  public static func ==(lhs: Self, rhs: Self) -> Bool {
    switch lhs {
${
    records
        .map(({caseName}) => [
            `    case .${caseName}: `,
            `if case .${caseName} = rhs { return true } else { return false }`
        ])
        .sort(([a], [b]) => a.charCodeAt(0) - b.charCodeAt(0))
        .concat([[
            `    case .other(let lhsSuffix): `,
            `if case let .other(rhsSuffix) = rhs { return lhsSuffix.description == rhsSuffix.description } else { return false }`
        ]])
        .map(toFormattedSwitchCase)
        .join('\n')
}
    }
  }

  public func hash(into hasher: inout Hasher) {
    switch self {
${
    records
        .map(({caseName}, i) => [
            `    case .${caseName}: `,
            `hasher.combine(${i})`
        ])
        .sort(([a], [b]) => a.charCodeAt(0) - b.charCodeAt(0))
        .concat([[
            `    case .other(let other): `,
            `hasher.combine(other.description)`
        ]])
        .map(toFormattedSwitchCase)
        .join('\n')
}
    }
  }
}
`

writeFileSync('Suffix.swift', code);
