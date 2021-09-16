// Run this script in the browser on https://www.iana.org/assignments/media-types/media-types.xhtml#application
JSON.stringify(Array
    .from(document.querySelectorAll('td'))
    .filter(td => /.+\/.+/.test(td.textContent))
    .map(td => td.textContent)
    .map(s => s.trim())
    .reduce((accumulator, entry) => entry.split('/').shift() in accumulator
            ? {
                ...accumulator,
                [entry.split('/').shift()]: accumulator[entry.split('/').shift()].concat(entry.split('/').pop())
            }
            : accumulator
        , {
            application: [],
            audio: [],
            font: [],
            image: [],
            message: [],
            model: [],
            multipart: [],
            text: [],
            video: []
        })
)

// Run this script in the browser on https://www.iana.org/assignments/media-type-structured-suffix/media-type-structured-suffix.xml
JSON.stringify(
    Array.from(document.querySelectorAll('td'))
        .filter(td => /^\+/.test(td.textContent))
        .map(td => td.textContent)
        .filter(s => !s.includes(' '))
        .map(s => s.trim())
)