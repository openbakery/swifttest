import Foundation
import EngineApi
import XCTest

public class XCTestEngine : TestEngine {
	private var _tests: [TestDescriptor] = []
	public var tests: [TestDescriptor] {
		return _tests
	}

	public func add(testCase: XCTestCase) {
		_tests.append(XCTestDescriptor(name: String(testCase.dynamicType)))
	}
}
