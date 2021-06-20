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
                      url: "https://github.com/authbank/authbank-connect-ios/releases/download/0.0.2/AuthBankConnect.xcframework.zip",
                      checksum: "3e110f1c2767789550ad6df1bb1d6b40811e2a2e43f6d509097674fb7d04aaa9")
    ]
)
