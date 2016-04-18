import Foundation;
import XCTest;

public class XCTestEngineTest : XCTestCase {
	public var allTests: [(String, () -> Void)] {
		return [
			("returnsNoTestsWhenNoTestCaseIsRegistered", returnsNoTestsWhenNoTestCaseIsRegistered)
		]
	}

	func returnsNoTestsWhenNoTestCaseIsRegistered() {
		XCTFail("Implement me!")
	}
}