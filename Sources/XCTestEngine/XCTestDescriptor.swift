import EngineApi

public class XCTestDescriptor : TestDescriptor {
	private let _name: String
	private var _children: [TestDescriptor] = []

	public var name: String { return _name }
	public var children: [TestDescriptor] { return _children }

	public init(name: String) {
		self._name = name;
	}

	public func addChild(_ child: XCTestDescriptor) {
		_children.append(child)
	}
}