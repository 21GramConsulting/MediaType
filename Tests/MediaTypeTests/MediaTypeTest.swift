import Foundation
import MediaType
import XCTest

class MediaTypeTest: XCTestCase {
  func testYolo() {
    let type = MediaType<MediaTypeEnum.application>(subType: .json)
  }
}
