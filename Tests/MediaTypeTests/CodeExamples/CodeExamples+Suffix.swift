import XCTest
import MediaType

extension CodeExamples {
  func test_suffix_use_cases() {
    XCTAssertEqual(MediaType.application(.jose(.json)),            "application/jose+json")
    XCTAssertEqual(MediaType.application(.jose(.other("custom"))), "application/jose+custom")
    XCTAssertEqual(MediaType.image(.svg("zip")),                   "image/svg+zip")
  }
}
