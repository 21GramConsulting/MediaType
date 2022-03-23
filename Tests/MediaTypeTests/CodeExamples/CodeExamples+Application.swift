import XCTest
import MediaType

extension CodeExamples {
  func test_application() {
    let application = Application.atom(.xml, ["charset": "utf-8"])
    let mediaType = MediaType.application(application)
    XCTAssertEqual(mediaType, .application(.atom(.xml, ["charset": "utf-8"])))
  }

  func test_isSupportedApplication() {
    func isSupported(application: Application) -> Bool {
      switch application {
      case .senml(.cbor, _), .senml(.json, _), .senml(.xml, _): return true
      default: return false
      }
    }

    XCTAssertTrue(isSupported(application: .senml(.cbor)))
    XCTAssertTrue(isSupported(application: .senml(.json)))
    XCTAssertTrue(isSupported(application: .senml(.xml)))
    XCTAssertFalse(isSupported(application: .senml(.zip)))
    XCTAssertFalse(isSupported(application: .json()))
  }
}
