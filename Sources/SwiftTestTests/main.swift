//
// Created by vagrant on 4/15/16.
//


#if os(Linux) || os(FreeBSD)
	import XCTest
	import Foundation
#else
	import SwiftFoundation
	import SwiftXCTest
#endif

import SwiftTest
@testable import XCTestEngineTests

SwiftTestEngine.engine.add(XCTestRunnerTest())
//XCTMain(XCTestRunner.compileTests(SwiftTestEngine.engine))

XCTMain([testCase(XCTestEngineTest.allTests)])
