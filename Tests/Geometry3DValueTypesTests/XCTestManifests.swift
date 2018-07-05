import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Position3DTests.allTests),
        testCase(Size3DTests.allTests),
        testCase(Position3DShortcutsTests.allTests),
        testCase(Size3DShortcutsTests.allTests),
    ]
}
#endif
