//
// Created by vagrant on 4/15/16.
//


#if os(Linux) || os(FreeBSD)
	import Foundation
#else
	import SwiftFoundation
#endif

public class SwiftTestEngine : TestEngine {
	public static let engine = SwiftTestEngine()

	public init() {

	}

	public func add(_ testCase: TestCase) {

	}
}
