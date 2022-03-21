# MediaType

## Overview

MediaType is a library &ndash; developed by [21Gram Consulting](https://21gram.consulting) &ndash; that can be used to
create [Media Type](https://www.iana.org/assignments/media-types/media-types.xhtml)s in a type-safe manner.

Mainly intended &ndash; although not limited &ndash; to be used in [server-side Swift](https://www.swift.org/server)
applications.

## Creating Media Types

Media types are represented by the ``MediaType`` Swift type.

You can create a media type in a type-safe manner using one of the possible cases. You can also create media type
instances simply by using string literals.

```swift
MediaType.application(.json()) // is equivalent to
let mediaType: MediaType = "application/json"
```

It is also possible to create a ``MediaType`` instance from a string variable as shown in the following example.

```swift
let rawMediaType = "application/json"
let mediaType = MediaType(rawValue: rawMediaType)
```

### Suffixes and Parameters

Media type suffixes and parameters are supported both via string literals and ``MediaType`` cases.

```swift
MediaType.application(.atom(nil, ["charset": "utf-8"])) // is equivalent to
let mediaType: MediaType = "application/atom; charset=utf-8"

MediaType.application(.atom(.xml)) // is equivalent to
let mediaType: MediaType = "application/atom+xml"

MediaType.application(.atom(.xml, ["charset": "utf-8"])) // is equivalent to
let mediaType: MediaType = "application/atom+xml; charset=utf-8"
```

### Trees

You can create media type trees by using either the string literal syntax, or using the `other` case of a particular
media type.

```swift
MediaType.application(.other("vnd.efi.img")) // is equivalent to
let mediaType: MediaType = "application/vnd.efi.img"
```

## Using Media Types

### String Conversion

Since ``MediaType`` conforms to
the [`CustomStringConvertible`](https://developer.apple.com/documentation/swift/customstringconvertible) protocol it is
pretty straightforward to turn an instance into a string.

You can either call the ``MediaType/description`` computed property or simply embed an instance into an interpolated
string.

For example, you can request the list of available products in JSON from an imaginary store.

```swift
var request = URLRequest(url: URL(string: "https://example-store.com/products")!)
let contentType = MediaType.application(.json())

request.setValue("Content-Type", forHTTPHeaderField: contentType.description) // is equivalent to
request.setValue("Content-Type", forHTTPHeaderField: "\(contentType)")

let (_, response) = try await URLSession.shared.data(for: request)
```
