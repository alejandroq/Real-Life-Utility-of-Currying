import XCTest
@testable import sample

final class sampleTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(sample().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
