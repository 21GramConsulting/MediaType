import XCTest
import MediaType

extension CodeExamples {
  func test_description() {
    XCTAssertEqual(
      MediaType.text(.css()).description,
      "text/css"
    )
    XCTAssertEqual(
      MediaType.audio(.ac3(nil, ["rate": 32000])).description,
      "audio/ac3;rate=32000"
    )
    XCTAssertEqual(
      MediaType.application(.atom(.xml, ["charset": "utf-8"])).description,
      "application/atom+xml;charset=utf-8"
    )
  }
}
