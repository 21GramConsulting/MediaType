import XCTest
import MediaType

extension CodeExamples {
  func test_parameters_use_cases() {
    let mediaType_A = MediaType.audio(.ac3(nil, ["rate": 32_000]))
    let mediaType_B: MediaType = "audio/ac3;rate=32000"
    let rawMediaType = "audio/ac3;rate=32000"
    let mediaType_C = MediaType(rawValue: rawMediaType)

    XCTAssertEqual(mediaType_A, mediaType_B)
    XCTAssertEqual(mediaType_A, mediaType_C)
    XCTAssertEqual(mediaType_B, mediaType_C)
  }
}
