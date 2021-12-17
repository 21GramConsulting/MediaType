import Foundation
import MediaType
import XCTest

class MediaTypeTest: XCTestCase {

  func baba(_ type: MediaType) {
    print("Received: \(type)")
    dump(type)
  }

  func testYolo() {
    baba("application/json; charset=utf-8")
  }
}
