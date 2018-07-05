import XCTest
@testable import Geometry3DValueTypes

final class Position3DShortcutsTests: XCTestCase {
  func test_getX () {
    let testValue = StructWithPosition(position: .init(1, 2, 3))
    XCTAssert(testValue.x == 1)
  }
  func test_setX () {
    var testValue = StructWithPosition(position: .init(1, 2, 3))
    testValue.x = 4
    XCTAssert(testValue.x == 4)
  }
  
  func test_getY () {
    let testValue = StructWithPosition(position: .init(1, 2, 3))
    XCTAssert(testValue.y == 2)
  }
  func test_setY () {
    var testValue = StructWithPosition(position: .init(1, 2, 3))
    testValue.y = 4
    XCTAssert(testValue.y == 4)
  }
  
  func test_getZ () {
    let testValue = StructWithPosition(position: .init(1, 2, 3))
    XCTAssert(testValue.z == 3)
  }
  func test_setZ () {
    var testValue = StructWithPosition(position: .init(1, 2, 3))
    testValue.z = 4
    XCTAssert(testValue.z == 4)
  }
}

private struct StructWithPosition: Position3DShortcuts {
  var position: Position3D
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
