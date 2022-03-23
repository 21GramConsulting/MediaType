import XCTest
import MediaType

extension CodeExamples {
  func test_suffix_use_cases() {
    XCTAssertEqual(MediaType.application(.jose(.json)), "application/jose+json")
    XCTAssertEqual(MediaType.application(.jose(.other("custom"))), "application/jose+custom")
    XCTAssertEqual(MediaType.image(.svg("zip")), "image/svg+zip")
  }

  func test_getting_suffix() {
    let mediaType = MediaType.application(.calendar(.xml))
    switch mediaType {
    case .application(.calendar(let suffix, _)):
      guard let suffix = suffix else { break }
      XCTAssertEqual("Suffix: \(suffix)", "Suffix: +xml")
    default:
      XCTFail("Unsupported media type: \(mediaType)")
    }
  }
}
