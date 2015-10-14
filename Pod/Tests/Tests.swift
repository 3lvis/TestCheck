import UIKit
import XCTest

class Tests: XCTestCase {
    func testIsRunning() {
        var isRunning = false

        if Test.isRunning() {
            isRunning = true
        }

        XCTAssertTrue(isRunning)
    }
}
