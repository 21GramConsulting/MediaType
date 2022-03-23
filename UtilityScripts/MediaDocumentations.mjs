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
    generic: {
        typeDoc: {
            otherCase: [
                "Represents a subtype that does not fit in the other cases or is currently not officially defined.",
                "",
                "You can use this case to define an arbitrary, unregistered subtype with the given name or",
                "to represent a subtype in the non standard tree, e.g. vendor tree or personal tree.",
                "",
                "Optionally, you can specify a ``Suffix`` and ``Parameters``."
            ]
        }
    },
    application: {
        typeDoc: {
            description: [
                "Represents the `application` media type. See the",
                "[official documentation](https://www.iana.org/assignments/media-types/media-types.xhtml#application) for details.",
                "",
                "You typically use ``Application`` as a ``MediaType``.",
                "",
                "```swift",
                'let application = Application.atom(.xml, ["charset": "utf-8"])',
                "let mediaType = MediaType.application(application) // Creates: application/atom+xml;charset=utf-8",
                "```",
                "",
                "You can use standard `switch` statement to access application values.",
                "",
                "```swift",
                "func isSupported(application: Application) -> Bool {",
                "  switch application {",
                "  case .senml(.cbor, _), .senml(.json, _), .senml(.xml, _): return true",
                "  default: return false",
                "  }",
                "}",
                "",
                "isSupported(application: .senml(.cbor)) // Returns: true",
                "isSupported(application: .senml(.json)) // Returns: true",
                "isSupported(application: .senml(.xml)) // Returns: true",
                "isSupported(application: .senml(.zip)) // Returns: false",
                "isSupported(application: .json()) // Returns: false",
                "```",
                "",
                "- SeeAlso: ``MediaType``",
            ],
            otherCase: []
        },
        caseDoc: [
            "Represents the `application` media type.",
            "",
            "Represents binary data. Common examples: `application/json`, `application/octet-stream`.",
            "",
            "For the whole family of `application` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#application) documentation."
        ]
    },
    audio: {
        typeDoc: {
            description: [
                "Represents the `audio` media type. See the",
                "[official documentation](https://www.iana.org/assignments/media-types/media-types.xhtml#audio) for details.",
                "",
                "You typically use ``Audio`` as a ``MediaType``.",
                "",
                "```swift",
                'let audio = Audio.ac3(nil, ["rate": 32000])',
                "let mediaType = MediaType.audio(audio) // Creates: audio/ac3;rate=32000",
                "```",
                "",
                "You can use standard `switch` statement to access audio values.",
                "",
                "```swift",
                "func isSupported(audio: Audio) -> Bool {",
                "  switch audio {",
                "  case .ac3, .aac, .ogg: return true",
                "  default: return false",
                "  }",
                "}",
                "",
                "isSupported(audio: .ac3()) // Returns: true",
                "isSupported(audio: .aac()) // Returns: true",
                "isSupported(audio: .ogg()) // Returns: true",
                "isSupported(audio: .mpeg()) // Returns: false",
                "```",
                "",
                "- SeeAlso: ``MediaType``",
            ],
            otherCase: []
        },
        caseDoc: [
            "Represents the `audio` media type.",
            "",
            "Represents audible data. Common examples: `audio/ac3`, `audio/mpeg`.",
            "",
            "For the whole family of `audio` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#audio) documentation."
        ]
    },
    font: {
        typeDoc: {
            description: [
                "Represents the `font` media type. See the",
                "[official documentation](https://www.iana.org/assignments/media-types/media-types.xhtml#font) for details.",
                "",
                "You typically use ``Font`` as a ``MediaType``.",
                "",
                "```swift",
                'let font = Font.ttf(nil, ["layout": "oat,aat"])',
                "let mediaType = MediaType.font(font) // Creates: font/ttf;layout=oat,aat",
                "```",
                "",
                "You can use standard `switch` statement to access font values.",
                "",
                "```swift",
                "func isSupported(font: Font) -> Bool {",
                "  switch font {",
                "  case .woff, .woff2: return true",
                "  case .ttf(_, let parameters?): return !parameters.isEmpty",
                "  default: return false",
                "  }",
                "}",
                "",
                "isSupported(font: .woff()) // Returns: true",
                'isSupported(font: .ttf(nil, ["layout": "oat,aat"])) // Returns: true',
                "isSupported(font: .ttf()) // Returns: false",
                "```",
                "",
                "- SeeAlso: ``MediaType``",
            ],
            otherCase: []
        },
        caseDoc: [
            "Represents the `font` media type.",
            "",
            "Represents font or typeface data. Common examples: `font/woff`, `font/ttf`.",
            "",
            "For the whole family of `font` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#font) documentation."
        ]
    },
    image: {
        typeDoc: {
            description: [
                "Represents the `image` media type. See the",
                "[official documentation](https://www.iana.org/assignments/media-types/media-types.xhtml#image) for details.",
                "",
                "You typically use ``Image`` as a ``MediaType``.",
                "",
                "```swift",
                'let image = Image.png()',
                "let mediaType = MediaType.image(image) // Creates: image/png",
                "```",
                "",
                "You can use standard `switch` statement to access image values.",
                "",
                "```swift",
                "func isSupported(image: Image) -> Bool {",
                "  switch image {",
                "  case .png, .jpeg, .gif: return true",
                "  default: return false",
                "  }",
                "}",
                "",
                "isSupported(audio: .png()) // Returns: true",
                "isSupported(audio: .jpeg()) // Returns: true",
                "isSupported(audio: .gif()) // Returns: true",
                "isSupported(audio: .bmp()) // Returns: false",
                "```",
                "",
                "- SeeAlso: ``MediaType``",
            ],
            otherCase: []
        },
        caseDoc: [
            "Represents the `image` media type.",
            "",
            "Represents image or graphical data. This includes bitmap and vector images, along with animated image formats.",
            "Common examples: `image/jpeg`, `image/apng`.",
            "",
            "For the whole family of `image` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#image) documentation."
        ]
    },
    message: {
        typeDoc: {
            description: [
                "Represents the `message` media type. See the",
                "[official documentation](https://www.iana.org/assignments/media-types/media-types.xhtml#message) for details.",
                "",
                "You typically use ``Message`` as a ``MediaType``.",
                "",
                "```swift",
                'let message = Message.http()',
                "let mediaType = MediaType.message(message) // Creates: message/http",
                "```",
                "",
                "You can use standard `switch` statement to access message values.",
                "",
                "```swift",
                "func isSupported(message: Message) -> Bool {",
                "  switch message {",
                "  case .http, .rfc822: return true",
                "  default: return false",
                "  }",
                "}",
                "",
                "isSupported(audio: .http()) // Returns: true",
                "isSupported(audio: .rfc822()) // Returns: true",
                "isSupported(audio: .sip()) // Returns: false",
                "```",
                "",
                "- SeeAlso: ``MediaType``",
            ],
            otherCase: []
        },
        caseDoc: [
            "Represents the `message` media type.",
            "",
            "Represents embedded message data. Common examples: `message/rfc882`, `message/http`.",
            "",
            "For the whole family of `message` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#message) documentation."
        ]
    },
    model: {
        typeDoc: {
            description: [
                "Represents the `model` media type. See the",
                "[official documentation](https://www.iana.org/assignments/media-types/media-types.xhtml#model) for details.",
                "",
                "You typically use ``Model`` as a ``MediaType``.",
                "",
                "```swift",
                'let model = Model.step()',
                "let mediaType = MediaType.model(model) // Creates: model/step",
                "```",
                "",
                "You can use standard `switch` statement to access model values.",
                "",
                "```swift",
                "func isSupported(model: Model) -> Bool {",
                "  switch model {",
                "  case .step, .iges: return true",
                "  default: return false",
                "  }",
                "}",
                "",
                "isSupported(audio: .step()) // Returns: true",
                "isSupported(audio: .iges()) // Returns: true",
                "isSupported(audio: .mesh()) // Returns: false",
                "```",
                "",
                "- SeeAlso: ``MediaType``",
            ],
            otherCase: []
        },
        caseDoc: [
            "Represents the `model` media type.",
            "",
            "Represents 3D modelling data. Common examples: `model/step`, `model/3mf`.",
            "",
            "For the whole family of `model` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#model) documentation."
        ]
    },
    multipart: {
        typeDoc: {
            description: [
                "Represents the `multipart` media type. See the",
                "[official documentation](https://www.iana.org/assignments/media-types/media-types.xhtml#multipart) for details.",
                "",
                "You typically use ``Multipart`` as a ``MediaType``.",
                "",
                "```swift",
                'let multipart = Multipart.formData()',
                "let mediaType = MediaType.multipart(multipart) // Creates: multipart/form-data",
                "```",
                "",
                "You can use standard `switch` statement to access multipart values.",
                "",
                "```swift",
                "func isSupported(multipart: Multipart) -> Bool {",
                "  switch multipart {",
                "  case .formData, .mixed: return true",
                "  default: return false",
                "  }",
                "}",
                "",
                "isSupported(audio: .formData()) // Returns: true",
                "isSupported(audio: .mixed()) // Returns: true",
                "isSupported(audio: .voiceMessage()) // Returns: false",
                "```",
                "",
                "- SeeAlso: ``MediaType``",
            ],
            otherCase: []
        },
        caseDoc: [
            "Represents the `multipart` media type.",
            "",
            "Represents data formed from multiple components, which may have their individual media types.",
            "Common examples: `multipart/form-data`, `multipart/encrypted`.",
            "",
            "For the whole family of `multipart` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#multipart) documentation."
        ]
    },
    text: {
        typeDoc: {
            description: [
                "Represents the `text` media type. See the",
                "[official documentation](https://www.iana.org/assignments/media-types/media-types.xhtml#text) for details.",
                "",
                "You typically use ``Text`` as a ``MediaType``.",
                "",
                "```swift",
                'let text = Text.html()',
                "let mediaType = MediaType.text(text) // Creates: text/html",
                "```",
                "",
                "You can use standard `switch` statement to access text values.",
                "",
                "```swift",
                "func isSupported(text: Text) -> Bool {",
                "  switch text {",
                "  case .html, .css: return true",
                "  default: return false",
                "  }",
                "}",
                "",
                "isSupported(audio: .html()) // Returns: true",
                "isSupported(audio: .css()) // Returns: true",
                "isSupported(audio: .javascript()) // Returns: false",
                "```",
                "",
                "- SeeAlso: ``MediaType``",
            ],
            otherCase: []
        },
        caseDoc: [
            "Represents the `text` media type.",
            "",
            "Represents textual only data. Common examples: `text/css`, `text/html`.",
            "",
            "For the whole family of `text` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#text) documentation."
        ]
    },
    video: {
        typeDoc: {
            description: [
                "Represents the `video` media type. See the",
                "[official documentation](https://www.iana.org/assignments/media-types/media-types.xhtml#video) for details.",
                "",
                "You typically use ``Video`` as a ``MediaType``.",
                "",
                "```swift",
                'let video = Video.mp4()',
                "let mediaType = MediaType.video(video) // Creates: video/mp4",
                "```",
                "",
                "You can use standard `switch` statement to access video values.",
                "",
                "```swift",
                "func isSupported(video: Video) -> Bool {",
                "  switch video {",
                "  case .mp4, .H264: return true",
                "  default: return false",
                "  }",
                "}",
                "",
                "isSupported(audio: .mp4()) // Returns: true",
                "isSupported(audio: .H264()) // Returns: true",
                "isSupported(audio: .vc1()) // Returns: false",
                "```",
                "",
                "- SeeAlso: ``MediaType``",
            ],
            otherCase: []
        },
        caseDoc: [
            "Represents the `video` media type.",
            "",
            "Represents video data. Common examples: `video/mp4`, `video/H264`.",
            "",
            "For the whole family of `video` media types consult the",
            "[official IANA](https://www.iana.org/assignments/media-types/media-types.xhtml#video) documentation."
        ]
    }
}
