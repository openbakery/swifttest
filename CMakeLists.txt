cmake_minimum_required(VERSION 3.5)
project(swifttest)

add_custom_target(SwiftTestTests
        COMMAND /home/vagrant/swift/usr/bin/swift build
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        SOURCES Package.swift Sources/SwiftTest/__main.swift Sources/SwiftTest/SwiftTestEngine.swift Sources/SwiftTest/XCTestRunner.swift Sources/SwiftTest/TestGroup.swift Sources/SwiftTest/TestEngine.swift Sources/Tests/FooTest.swift)
