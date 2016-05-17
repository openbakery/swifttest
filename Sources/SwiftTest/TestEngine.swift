//
// Created by vagrant on 4/15/16.
//

#if os(Linux) || os(FreeBSD)
	import Foundation
#else
	import SwiftFoundation
#endif

public protocol TestEngine {
	//var allTestGroups: [TestGroup] { get }
}
