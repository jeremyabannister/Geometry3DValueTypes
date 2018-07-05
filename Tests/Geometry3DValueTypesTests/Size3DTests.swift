import XCTest
@testable import Geometry3DValueTypes

final class Size3DTests: XCTestCase {
  func test_zero () {
    let zero = Size3D.zero
    XCTAssert(zero.width == 0 && zero.height == 0 && zero.depth == 0)
  }
}

// MARK: - Init Test
extension Size3DTests {
  func test_init () {
    let size: Size3D = .init(width: 1, height: 2, depth: 3)
    XCTAssert(size.width == 1 && size.height == 2 && size.depth == 3)
  }
}

// MARK: - Value Substitution Tests
extension Size3DTests {
  func test_withWidth () {
    let size = Size3D(width: 1, height: 2, depth: 3)
    XCTAssert(size.with(width: 4) == Size3D(width: 4, height: 2, depth: 3))
  }
  func test_withHeight () {
    let size = Size3D(width: 1, height: 2, depth: 3)
    XCTAssert(size.with(height: 4) == Size3D(width: 1, height: 4, depth: 3))
  }
  func test_withDepth () {
    let size = Size3D(width: 1, height: 2, depth: 3)
    XCTAssert(size.with(depth: 4) == Size3D(width: 1, height: 2, depth: 4))
  }
}


#if os(Linux)
extension Size3DTests {
  static var allTests : [(String, Size3DTests -> () throws -> Void)] {
    return [
      ("test_Position3D_zero", test_Position3D_zero),
      ("test_translatedBy", test_translatedBy),
    ]
  }
}
#endif
