public protocol TestDescriptor {
	var name: String { get }
	var children: [TestDescriptor] { get }
}