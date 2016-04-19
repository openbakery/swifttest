import Foundation
import EngineApi
import XCTest

public class XCTestEngine : TestEngine {
	private var _tests: [TestDescriptor] = []
	public var tests: [TestDescriptor] {
		return _tests
	}

	public func add(testCase: XCTestCase) {
		let testDescriptor = XCTestDescriptor(name: String(testCase.dynamicType))
		_tests.append(testDescriptor)

		for test in testCase.allTests {
			testDescriptor.addChild(XCTestDescriptor(name: test.0))
		}
	}
}
