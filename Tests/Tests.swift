import UIKit
import XCTest

class Tests: XCTestCase {
    func testIsRunning() {
        XCTAssertTrue(TestCheck.isTesting())
    }
}
