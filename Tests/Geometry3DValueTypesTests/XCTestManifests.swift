import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Position3DTests.allTests),
        testCase(Size3DTests.allTests),
        testCase(HasPosition3DTests.allTests),
        testCase(HasSize3DTests.allTests),
    ]
}
#endif
