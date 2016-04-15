//
// Created by vagrant on 4/15/16.
//

import Foundation
import XCTest

public typealias XCTestCaseEntry = (String, () -> Void)

public class XCTestRunner {

    public static func compileTests(testEngine : TestEngine) -> [XCTestCase] {
        return []
    }

    /*
    var _allTests: [(String, () -> Void)] = []

    public var allTests: [(String, () -> Void)] {
        return _allTests
    }

    public func addTest(name: String, test: () -> Void) {
        _allTests.append((name, test))
    }
    */
}
