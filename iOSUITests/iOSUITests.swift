import XCTest

class iOSUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    // Disabled since there's no current way to check for ui tests
    /*
    func test() {
        let elementsQuery = XCUIApplication().childrenMatchingType(.Window).elementBoundByIndex(0).otherElements
        let textField = elementsQuery.childrenMatchingType(.TextField).element
        XCTAssertEqual(textField.value! as? String, "Testing enabled")
    }
    */
}
