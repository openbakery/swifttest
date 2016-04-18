import Foundation;
import XCTest;

@testable import XCTestEngine

private class TestCaseWithNoMethods : XCTestCase {
	var allTests: [(String, () -> Void)] { return [] }
}

public class XCTestEngineTest : XCTestCase {
	public var allTests: [(String, () -> Void)] {
		return [
			("returnsNoTestsWhenNoTestCaseIsRegistered", returnsNoTestsWhenNoTestCaseIsRegistered),
			("returnsASingleTestDescriptorAfterAddingATestCase", returnsASingleTestDescriptorAfterAddingATestCase)
		]
	}

	private let testEngine = XCTestEngine()

	func returnsNoTestsWhenNoTestCaseIsRegistered() {
		XCTAssert(testEngine.tests.isEmpty)
	}

	func returnsASingleTestDescriptorAfterAddingATestCase() {
		testEngine.add(TestCaseWithNoMethods());

		XCTAssert(testEngine.tests.count == 1)
	}
}