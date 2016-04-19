import EngineApi

public class XCTestDescriptor : TestDescriptor {
	private let _name: String
	public var name: String { return _name }

	public init(name: String) {
		self._name = name;
	}
}