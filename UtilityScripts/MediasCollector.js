// Run this script in the browser on https://www.iana.org/assignments/media-types/media-types.xhtml#application

const validTypes = [
    "application",
    "audio",
    "font",
    "image",
    "message",
    "model",
    "multipart",
    "text",
    "video",
];

JSON.stringify(validTypes
    .map(type => [type, `table-${type}`])
    .map(([type, id]) => [type, document.getElementById(id)])
    .map(([type, table]) => [type, table.querySelector('tbody')])
    .map(([type, tbody]) => [
        type,
        Array
            .from(tbody.rows)
            .map(row => row.cells[0].textContent.trim())
            .map(subtype => subtype.split(" ")[0])
    ])
    .reduce((accumulator, [type, subtypes]) => ({
        ...accumulator,
        [type]: (accumulator.type || []).concat(subtypes)
    }), {
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