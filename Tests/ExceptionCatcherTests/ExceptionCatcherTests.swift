import XCTest
@testable import ExceptionCatcher

final class ExceptionCatcherTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        var caughtError: Error?
        
        do {
            try ExceptionCatcher.perform {
                
                let object = NSExpression(format: "")
                
                let value = object.expressionValue(with: nil, context: nil) as? NSNumber
                
                XCTAssertNil(value)
            }
        }
        catch {
            caughtError = error
        }
        
        XCTAssertNotNil(caughtError)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
