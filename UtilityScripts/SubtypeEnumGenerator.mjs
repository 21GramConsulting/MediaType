#!/usr/bin/env node

import {readFileSync, writeFileSync} from 'fs';

const medias = JSON.parse(readFileSync('./Medias.json').toString());

/** @typedef Case {{rawValue:string,caseName:string}} */
/** @typedef CaseRecord {{caseColumn:string,returnColumn:string}}  */
/** @type {CaseRecord} */
const otherCase = {caseColumn: 'case .other(let other):', returnColumn: 'return other'};
/** @type {CaseRecord} */
const otherCaseInit = {caseColumn: 'default:', returnColumn: 'self = .other(rawValue)'};
/** @type {CaseRecord} */
const anyCase = {caseColumn: 'case .any:', returnColumn: 'return "*"'};
/** @type {CaseRecord} */
const anyCaseInit = {caseColumn: 'case "*":', returnColumn: 'self = .any'};
/** @typedef RenderableCaseRecord {CaseRecord & {longestCaseColumnLength:number}} */
/** @type {function(CaseRecord, number, Array<CaseRecord>): RenderableCaseRecord} */
const decorateLongestCaseColumnLength = (record, _, records) => ({
    ...record,
    longestCaseColumnLength: records
        .concat()
        .sort((a, b) => b.caseColumn.length - a.caseColumn.length)[0]
        .caseColumn
        .length + 1
});
/** @type {function(RenderableCaseRecord):string} */
const renderRecord = record => record
    .caseColumn
    .concat(
        Array(record.longestCaseColumnLength - record.caseColumn.length)
            .fill(' ')
            .join('')
    )
    .concat(record.returnColumn);
/** @type {function(Case, Case):number} */
const alphabetically = (a, b) => a.caseName.charCodeAt(0) - b.caseName.charCodeAt(0)

Object
    .keys(medias)
    .map(media => ({
        key: media,
        typeName: media.replace(/^./, c => c.toUpperCase())
    }))
    .map(record => ({
        ...record,
        fileName: record.typeName.concat('.swift')
    }))
    .map(record => ({
        ...record,
        cases: medias[record.key]
            .map(c => c.split("+").shift())
            .map(c => c.split(";").shift())
            .filter((c, i, l) => l.indexOf(c) === i)
            .map(c => ({
                rawValue: c,
                caseName: c
                    .replace(/-(.)/g, (_, m) => m.toUpperCase())
                    .replace(/^\d/, (m) => '_'.concat(m))
            }))
            .filter(c => !c.caseName.includes("."))
    }))
    .map(record => ({
        ...record,
        code: `import Foundation

public extension MediaTypeEnum {
  enum ${record.typeName} {
${
            record
                .cases
                .concat()
                .sort((a, b) => a.caseName.charCodeAt(0) - b.caseName.charCodeAt(0))
                .map(c => `case ${c.caseName}`)
                .map(row => '    ' + row)
                .join('\n')
        }
    case other(String)
    case any
  }
}

extension MediaTypeEnum.${record.typeName}: CustomStringConvertible {
  public var description: String { rawValue }
}

extension MediaTypeEnum.${record.typeName}: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) { self.init(rawValue: value) }
}

extension MediaTypeEnum.${record.typeName}: RawRepresentable {
  public init(rawValue: String) {
    switch rawValue {
${
            record
                .cases
                .concat()
                .sort(alphabetically)
                .map(c => ({
                    caseColumn: `case "${c.rawValue}":`,
                    returnColumn: `self = .${c.caseName}`
                }))
                .concat(anyCaseInit)
                .concat(otherCaseInit)
                .map(decorateLongestCaseColumnLength)
                .map(renderRecord)
                .map(row => '    ' + row)
                .join('\n')
        }
    }
  }

  public var rawValue: String {
    switch self {
${
            record
                .cases
                .concat()
                .sort(alphabetically)
                .map(c => ({
                    caseColumn: `case .${c.caseName}:`,
                    returnColumn: `return "${c.rawValue}"`
                }))
                .concat(otherCase)
                .concat(anyCase)
                .map(decorateLongestCaseColumnLength)
                .map(renderRecord)
                .map(row => '    ' + row)
                .join('\n')
        }
    }
  }
}
`
    }))
    .forEach(record => {
        writeFileSync(record.fileName, record.code);
    })