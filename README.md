# MediaType

## Overview

MediaType is a library that can be used to
create [Media Type](https://www.iana.org/assignments/media-types/media-types.xhtml)s in a type-safe manner.

Mainly intended &ndash; although not limited &ndash; to be used in [server-side Swift](https://www.swift.org/server)
applications.

## Creating Media Types

Media types are represented by the ``MediaType`` Swift type.

You can create a media type in a type-safe manner using one of the possible cases. You can also create media type
instances simply by using string literals.

```swift
let mediaType: MediaType = "application/json" // is equivalent to
MediaType.application(.json())
```

It is also possible to create a ``MediaType`` instance from a string variable as shown in the following example.

```swift
let rawMediaType = "application/json"
let mediaType = MediaType(rawValue: rawMediaType)
```

### Suffixes and Parameters

Media type ``Suffix``es and ``Parameters`` are supported both via string literals and ``MediaType`` cases.

```swift
let mediaType: MediaType = "application/atom; charset=utf-8" // is equivalent to
MediaType.application(.atom(nil, ["charset": "utf-8"]))

let mediaType: MediaType = "application/atom+xml" // is equivalent to
MediaType.application(.atom(.xml))

let mediaType: MediaType = "application/atom+xml; charset=utf-8" // is equivalent to
MediaType.application(.atom(.xml, ["charset": "utf-8"]))
```

### Trees

You can create media type trees by using either the string literal syntax, or using the `other` case of a particular
media type.

```swift
let mediaType: MediaType = "application/vnd.efi.img" // is equivalent to
MediaType.application(.other("vnd.efi.img"))
```

### Unregistered Media Types

Using this library you can create all the registered media types. The library is versatile enough to allow you to create
practically *any* media type, even ones that are *not* registered. A few examples of such cases:

```swift
let image: MediaType = "image/svg+gzip" // is equivalent to
MediaType.image(.svg(.gzip))

let application: MediaType = "application/myApp+json" // is equivalent to
MediaType.application(.other("myApp", .json))
```

## Using Media Types

You can use regular `switch` statements to test for media types and get access to their components. The following example
shows various ways to treat a media type.

```swift
func isSupported(_ mediaType: MediaType) -> Bool {
  switch mediaType {
  case .application(.json(_, _)): return true
  case .application(.atom("xml", _)): return true
  case .application(let subtype):
    switch subtype {
    case .xml(_, _): return true
    default: return false
    }
  default: return false
  }
}

isSupported("application/json") // Returns: true
isSupported("application/json+xml") // Returns: true
isSupported("application/json;charset=utf-8") // Returns: true
isSupported("application/json+xml;charset=utf-8") // Returns: true

isSupported("application/atom+xml") // Returns: true
isSupported("application/atom+xml;charset=utf-8") // Returns: true
isSupported("application/atom") // Returns: false
isSupported("application/atom;charset=utf-8") // Returns: false
```

### String Conversion

Since ``MediaType`` conforms to
the [`CustomStringConvertible`](https://developer.apple.com/documentation/swift/customstringconvertible) protocol it is
pretty straightforward to turn an instance into a string.

You can either call the ``MediaType/description`` computed property or simply embed an instance into an interpolated
string.

For example, you can request the list of available products in JSON from an imaginary store.

```swift
var request = URLRequest(url: URL(string: "https://example-store.com/products")!)
let contentType: MediaType = "application/json"

// The following two statements are equivalent
request.setValue("Content-Type", forHTTPHeaderField: "\(contentType)")
request.setValue("Content-Type", forHTTPHeaderField: contentType.description)

let (_, response) = try await URLSession.shared.data(for: request)
```

### Media Types are [`Hashable`](https://developer.apple.com/documentation/swift/hashable)

This means you can use ``MediaType``s in sets or dictionaries. For example, you can define the type of images your
application supports like so:

```swift
let supportedImages: Set<MediaType> = ["image/png", "image/gif", "image/jpeg"]
```

### Comparing Media Types

You can also compare media type for equality using the ``MediaType/==(lhs:rhs:)`` operator.

```swift
func canHandle(response: URLResponse) -> Bool {
  guard let mimeType = response.mimeType else { return false }
  let mediaType = MediaType(rawValue: mimeType)
  return mediaType == .application(.json())
}
```
