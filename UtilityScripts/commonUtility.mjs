/** @type {function([string,string], number, Array<[string, string]>>): string} */
export const toFormattedSwitchCase = ([caseColumn, returnColumn], _, l) => caseColumn
    .concat(
        Array(l
            .concat()
            .sort(([c1], [c2]) => c2.length - c1.length)[0][0]
            .length - caseColumn.length
        ).fill(" ").join("")
    )
    .concat(returnColumn);
