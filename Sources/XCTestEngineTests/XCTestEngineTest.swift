#if os(Linux) || os(FreeBSD)
	import XCTest
	import Foundation
#else
	import SwiftXCTest
	import SwiftFoundation
#endif

@testable import XCTestEngine

public class TestCaseWithNoMethods : XCTestCase {
	static var allTests: [(String, (TestCaseWithNoMethods) -> () throws -> Void)] {
		return []
	}
}

public class TestCaseWithMethods : XCTestCase {
	static var allTests: [(String, (TestCaseWithMethods) -> () throws -> Void)] { 
		return [
			("test1", test1),
			("test2", test2)
		]
	}

	public func test1() {}
	public func test2() {}
}

public class XCTestEngineTest : XCTestCase {
	static var allTests: [(String, (XCTestEngineTest) -> () throws -> Void)] {
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
		testEngine.add(testCase(TestCaseWithNoMethods.allTests))

		XCTAssertEqual(testEngine.tests.count, 1)
		//XCTAssertEqual(testEngine.tests[0].name, "TestCaseWithNoMethods")
	}

	func returnsATestDescriptorWithChildrenAfterAddingATestCaseWithTests() {
		let testEngine = XCTestEngine()
		testEngine.add(testCase(TestCaseWithMethods.allTests))

		XCTAssertEqual(testEngine.tests.count, 1)
		let test = testEngine.tests[0]
		XCTAssertEqual(test.children.count, 2)
		XCTAssertEqual(test.children[0].name, "test1")
		XCTAssertEqual(test.children[1].name, "test2")
	}
}