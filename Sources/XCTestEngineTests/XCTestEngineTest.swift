import Foundation;
import XCTest;

@testable import XCTestEngine

public class XCTestEngineTest : XCTestCase {
	public var allTests: [(String, () -> Void)] {
		return [
			("returnsNoTestsWhenNoTestCaseIsRegistered", returnsNoTestsWhenNoTestCaseIsRegistered)
		]
	}

	private let testEngine = XCTestEngine()

	func returnsNoTestsWhenNoTestCaseIsRegistered() {
		XCTAssert(testEngine.tests.isEmpty)
	}
}