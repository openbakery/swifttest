import Foundation;
import XCTest;

@testable import XCTestEngine

public class TestCaseWithNoMethods : XCTestCase {
	public var allTests: [(String, () -> Void)] { return [] }
}

public class TestCaseWithMethods : XCTestCase {
	public var allTests: [(String, () -> Void)] { 
		return [
			("test1", {}),
			("test2", {})
		]
	}
}

public class XCTestEngineTest : XCTestCase {
	public var allTests: [(String, () -> Void)] {
		return [
			("returnsNoTestsWhenNoTestCaseIsRegistered", returnsNoTestsWhenNoTestCaseIsRegistered),
			("returnsASingleTestDescriptorAfterAddingATestCase", returnsASingleTestDescriptorAfterAddingATestCase),
			("returnsATestDescriptorWithChildrenAfterAddingATestCaseWithTests", returnsATestDescriptorWithChildrenAfterAddingATestCaseWithTests)
		]
	}

	func returnsNoTestsWhenNoTestCaseIsRegistered() {
		let testEngine = XCTestEngine()
		XCTAssert(testEngine.tests.isEmpty)
	}

	func returnsASingleTestDescriptorAfterAddingATestCase() {
		let testEngine = XCTestEngine()
		testEngine.add(TestCaseWithNoMethods());

		XCTAssertEqual(testEngine.tests.count, 1)
		XCTAssertEqual(testEngine.tests[0].name, "TestCaseWithNoMethods")
	}

	func returnsATestDescriptorWithChildrenAfterAddingATestCaseWithTests() {
		let testEngine = XCTestEngine()
		testEngine.add(TestCaseWithMethods());

		XCTAssertEqual(testEngine.tests.count, 1)
		let test = testEngine.tests[0]
		XCTAssertEqual(test.children.count, 2)
		XCTAssertEqual(test.children[0].name, "test1")
		XCTAssertEqual(test.children[1].name, "test2")
	}
}