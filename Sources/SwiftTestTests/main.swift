//
// Created by vagrant on 4/15/16.
//

import Foundation
import SwiftTest
@testable import XCTestEngineTests
import XCTest

SwiftTestEngine.engine.add(XCTestRunnerTest())
//XCTMain(XCTestRunner.compileTests(SwiftTestEngine.engine))

XCTMain([XCTestEngineTest()])
