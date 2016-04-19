/**
A test descriptor contains information about a test or a group of tests that is known by a test engine. 
*/
public protocol TestDescriptor {
	var name: String { get }
	var children: [TestDescriptor] { get }
}