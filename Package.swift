// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AuthBankConnect",
    platforms: [
        .iOS(.v13)
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "AuthBankConnect",
                      url: "https://github.com/authbank/authbank-connect-ios/releases/download/v0.0.1-alpha/AuthBankConnect.xcframework.zip",
                      checksum: "8cd866375ee860875f17509375a0d75c0a18df840b6f0583fd32fb7269641112")
    ]
)
