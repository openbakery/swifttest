//
// Created by vagrant on 4/4/16.
//

import Foundation
import PackageDescription

let package = Package(
    name: "SwiftTest",
            targets: [
                Target(name: "SwiftTest", dependencies: []),
                Target(name: "SwiftTestTests", dependencies: ["SwiftTest"])
            ]
)