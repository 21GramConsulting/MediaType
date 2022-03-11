import XCTest
import MediaType

extension CodeExamples {
  func test_create_media_type_using_initializer() {
    XCTAssertEqual("\(MediaType.application(.json()))", "application/json")
  }

  func test_create_media_type_with_string_literal() {
    XCTAssertEqual("application/json", MediaType.application(.json()))
  }

  func test_audio_media_type() {
    XCTAssertEqual("\(MediaType.audio(.ac3()))", "audio/ac3")
    XCTAssertEqual("\(MediaType.audio(.mpeg()))", "audio/mpeg")
  }

  func test_application_json_with_json_suffix() {
    XCTAssertEqual("application/json+json", MediaType.application(.json(.json)))
  }

  func test_image_with_other_subtype() {
    XCTAssertEqual("image/json", MediaType.image(.other("json")))
  }

  func test_wildcard_media_type() {
    XCTAssertEqual("*/*", MediaType.anything(.anything()))
    XCTAssertEqual("*/dialog", MediaType.anything(.other("dialog")))
    XCTAssertEqual("*/response+xml", MediaType.anything(.other("response", .xml)))
  }

  func test_media_type_with_parameters() {
    XCTAssertEqual("audio/ac3;rate=32000", MediaType.audio(.ac3(nil, ["rate": 32000])))
    let mediaType: MediaType = "application/atom; charset=utf-8"
    XCTAssertEqual(mediaType, MediaType.application(.atom(nil, ["charset": "utf-8"])))
  }

  func test_media_type_with_suffix() {
    let mediaType: MediaType = "application/atom+xml"
    XCTAssertEqual(mediaType, MediaType.application(.atom(.xml)))
  }

  func test_media_type_with_suffix_and_parameters() {
    let mediaType: MediaType = "application/atom+xml; charset=utf-8"
    XCTAssertEqual(mediaType, MediaType.application(.atom(.xml, ["charset": "utf-8"])))
  }
}
