/**
A TestEngine is responsible for knowing all tests that have been written using a certain technology and for providing a means to execute them. 
*/
public protocol TestEngine {
	var tests: [TestDescriptor] {get}
}