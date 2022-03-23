import XCTest
import MediaType

extension CodeExamples {
  func test_create_media_type_using_initializer() {
    XCTAssertEqual(MediaType.application(.json()), "application/json")
  }

  func test_create_media_type_with_string_literal() {
    XCTAssertEqual("application/json", MediaType.application(.json()))
  }

  func test_media_type_from_string_variable() {
    let rawMediaType = "application/json"
    XCTAssertEqual(MediaType(rawValue: rawMediaType), MediaType.application(.json()))
  }

  func test_audio_media_type() {
    XCTAssertEqual((MediaType.audio(.ac3())), "audio/ac3")
    XCTAssertEqual((MediaType.audio(.mpeg())), "audio/mpeg")
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
    XCTAssertEqual("application/atom; charset=utf-8", MediaType.application(.atom(nil, ["charset": "utf-8"])))
  }

  func test_media_type_with_suffix() {
    XCTAssertEqual("application/atom+xml", MediaType.application(.atom(.xml)))
  }

  func test_media_type_with_suffix_and_parameters() {
    XCTAssertEqual("application/atom+xml; charset=utf-8", MediaType.application(.atom(.xml, ["charset": "utf-8"])))
  }

  func test_vendor_tree() {
    XCTAssertEqual("application/vnd.efi.img", MediaType.application(.other("vnd.efi.img")))
  }

  func test_unregistered_media_types() {
    XCTAssertEqual(MediaType.image(.svg(.gzip)), "image/svg+gzip")
    XCTAssertEqual(MediaType.application(.other("myApp", .json)), "application/myApp+json")
  }

  func test_matching() {
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

    XCTAssertTrue(isSupported("application/json"))
    XCTAssertTrue(isSupported("application/json+xml"))
    XCTAssertTrue(isSupported("application/json;charset=utf-8"))
    XCTAssertTrue(isSupported("application/json+xml;charset=utf-8"))

    XCTAssertTrue(isSupported("application/atom+xml"))
    XCTAssertTrue(isSupported("application/atom+xml;charset=utf-8"))
    XCTAssertFalse(isSupported("application/atom"))
    XCTAssertFalse(isSupported("application/atom;charset=utf-8"))
  }

  func test_supported_media_types() {
    let supportedImages: Set<MediaType> = ["image/png", "image/gif", "image/jpeg"]
    XCTAssertEqual(supportedImages, [.image(.png()), .image(.jpeg()), .image(.gif())])
  }
}
