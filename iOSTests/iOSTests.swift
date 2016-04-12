import XCTest
@testable import iOS

class iOSTests: XCTestCase {
    func testIsRunning() {
        XCTAssertTrue(TestCheck.isTesting)
    }
}
