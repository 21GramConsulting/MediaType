import Foundation
import MediaType
import XCTest

class MediaTypeTest: XCTestCase {

  func baba(_ type: MediaType) {
    print(type)
  }

  func testYolo() {
    baba(.application(.json(nil, ["charset": "utf-8"])))
    baba(.text(.other("plain")))
  }
}
