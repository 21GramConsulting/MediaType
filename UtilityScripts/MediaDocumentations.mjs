/**
 * @param {[string]} lines
 * @param {number} indentation
 * @returns {string}
 */
export function toDocumentation(lines, indentation) {
    return lines
        .map(line => `/// ${line}`)
        .map(line => line.padStart(line.length + indentation, ' '))
        .join('\n')
}

export const mediaDocumentations = {
    application: {
        caseDoc: ["Represents the `application` media type.",
            "",
            "Represents binary data. Common examples: `application/json`, `application/octet-stream`.",
            "",
            "For the whole family of `application` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#application) documentation."
        ]
    },
    audio: {
        caseDoc: ["Represents the `audio` media type.",
            "",
            "Represents audible data. Common examples: `audio/ac3`, `audio/mpeg`.",
            "",
            "For the whole family of `audio` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#audio) documentation."
        ]
    },
    font: {
        caseDoc: ["Represents the `font` media type.",
            "",
            "Represents font or typeface data. Common examples: `font/woff`, `font/ttf`.",
            "",
            "For the whole family of `font` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#font) documentation."
        ]
    },
    image: {
        caseDoc: ["Represents the `image` media type.",
            "",
            "Represents image or graphical data. This includes bitmap and vector images, along with animated image formats.",
            "Common examples: `image/jpeg`, `image/apng`.",
            "",
            "For the whole family of `image` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#image) documentation."
        ]
    },
    message: {
        caseDoc: ["Represents the `message` media type.",
            "",
            "Represents embedded message data. Common examples: `message/rfc882`, `message/http`.",
            "",
            "For the whole family of `message` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#message) documentation."
        ]
    },
    model: {
        caseDoc: ["Represents the `model` media type.",
            "",
            "Represents 3D modelling data. Common examples: `model/step`, `model/3mf`.",
            "",
            "For the whole family of `model` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#model) documentation."
        ]
    },
    multipart: {
        caseDoc: ["Represents the `multipart` media type.",
            "",
            "Represents data formed from multiple components, which may have their individual media types.",
            "Common examples: `multipart/form-data`, `multipart/encrypted`.",
            "",
            "For the whole family of `multipart` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#multipart) documentation."
        ]
    },
    text: {
        caseDoc: ["Represents the `text` media type.",
            "",
            "Represents textual only data. Common examples: `text/css`, `text/html`.",
            "",
            "For the whole family of `text` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#text) documentation."
        ]
    },
    video: {
        caseDoc: ["Represents the `video` media type.",
            "",
            "Represents video data. Common examples: `video/mp4`, `video/H264`.",
            "",
            "For the whole family of `video` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#video) documentation."
        ]
    }
}
