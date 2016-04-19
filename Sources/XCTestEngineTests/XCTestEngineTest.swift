import Foundation;
import XCTest;

@testable import XCTestEngine

public class TestCaseWithNoMethods : XCTestCase {
	public var allTests: [(String, () -> Void)] { return [] }
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

		XCTAssertEqual(testEngine.tests.count, 1)
		XCTAssertEqual(testEngine.tests[0].name, "TestCaseWithNoMethods")
	}

}