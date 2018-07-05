import XCTest
@testable import Geometry3DValueTypes

final class HasSize3DTests: XCTestCase {
  func test_getWidth () {
    let testValue = StructWithSize(size: .init(width: 1, height: 2, depth: 3))
    XCTAssert(testValue.width == 1)
  }
  func test_setWidth () {
    var testValue = StructWithSize(size: .init(width: 1, height: 2, depth: 3))
    testValue.width = 4
    XCTAssert(testValue.width == 4)
  }
  
  func test_getHeight () {
    let testValue = StructWithSize(size: .init(width: 1, height: 2, depth: 3))
    XCTAssert(testValue.height == 2)
  }
  func test_setHeight () {
    var testValue = StructWithSize(size: .init(width: 1, height: 2, depth: 3))
    testValue.height = 4
    XCTAssert(testValue.height == 4)
  }
  
  func test_getDepth () {
    let testValue = StructWithSize(size: .init(width: 1, height: 2, depth: 3))
    XCTAssert(testValue.depth == 3)
  }
  func test_setDepth () {
    var testValue = StructWithSize(size: .init(width: 1, height: 2, depth: 3))
    testValue.depth = 4
    XCTAssert(testValue.depth == 4)
  }
}

private struct StructWithSize: HasSize3D {
  var size: Size3D
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
