import XCTest
@testable import Geometry3DValueTypes

final class Position3DTests: XCTestCase {
  func test_zero () {
    let zero = Position3D.zero
    XCTAssert(zero.x == 0 && zero.y == 0 && zero.z == 0)
  }
}

// MARK: - Init Tests
extension Position3DTests {
  func test_init () {
    let position: Position3D = .init(x: 1, y: 2, z: 3)
    XCTAssert(position.x == 1 && position.y == 2 && position.z == 3)
  }
  func test_initWithoutLabels () {
    XCTAssert(Position3D(1, 2, 3) == Position3D(x: 1, y: 2, z: 3))
  }
}

// MARK: - Translation Tests
extension Position3DTests {
  func test_translatedBy () {
    let position = Position3D(1, 2, 3)
    XCTAssert(position.translated(by: .init(3, 2, 1)) == .init(4, 4, 4))
  }
  func test_translatedByWithoutLabels () {
    let position = Position3D(1, 2, 3)
    XCTAssert(position.translated(by: position.x, position.y, position.z) == position.translated(by: position))
  }
}

// MARK: - Value Substitution Tests
extension Position3DTests {
  func test_withX () {
    let position = Position3D(1, 2, 3)
    XCTAssert(position.with(x: 4) == Position3D(4, 2, 3))
  }
  func test_withY () {
    let position = Position3D(1, 2, 3)
    XCTAssert(position.with(y: 4) == Position3D(1, 4, 3))
  }
  func test_withZ () {
    let position = Position3D(1, 2, 3)
    XCTAssert(position.with(z: 4) == Position3D(1, 2, 4))
  }
}

// MARK: - Operator Tests
extension Position3DTests {
  func test_plusOperator () {
    let position = Position3D(1, 2, 3)
    XCTAssert(position + position == Position3D(2, 4, 6))
  }
  func test_minusOperator () {
    let position = Position3D(1, 2, 3)
    XCTAssert(position - position == .zero)
  }
}


#if os(Linux)
extension Position3DTests {
  static var allTests : [(String, Position3DTests -> () throws -> Void)] {
    return [
      ("test_Position3D_zero", test_Position3D_zero),
      ("test_translatedBy", test_translatedBy),
    ]
  }
}
#endif
