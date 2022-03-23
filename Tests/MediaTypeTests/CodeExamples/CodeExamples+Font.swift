import XCTest
import MediaType

extension CodeExamples {
  func test_font() {
    let font = Font.ttf(nil, ["layout": "oat,aat"])
    let mediaType = MediaType.font(font)
    XCTAssertEqual(mediaType, "font/ttf;layout=oat,aat")
  }

  func test_isSupportedFont() {
    func isSupported(font: Font) -> Bool {
      switch font {
      case .woff, .woff2: return true
      case .ttf(_, let parameters?): return !parameters.isEmpty
      default: return false
      }
    }

    XCTAssertTrue(isSupported(font: .woff()))
    XCTAssertTrue(isSupported(font: .ttf(nil, ["layout": "oat,aat"])))
    XCTAssertFalse(isSupported(font: .ttf()))
  }
}
