import XCTest
@testable import XyBaseSdk

final class XyBaseSdkTests: XCTestCase {
    func testLogging() {
      let testObject = XYBase()
      XYBase.logInfo("Test Info - Static")
      testObject.logInfo("Test Info - Instance")
    }

    static var allTests = [
        ("testLogginf", testLogging),
    ]
}
