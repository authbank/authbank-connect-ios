// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AuthBankConnect",
    platforms: [
        .iOS(.v14)
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "AuthBankConnect",
                      url: "https://github.com/authbank/authbank-connect-ios/releases/download/v0.0.2-alpha/AuthBankConnect.xcframework.zip",
                      checksum: "fbd4a72789843bfde436e4d1cad1989e1a2a528c50c570fa22756400771b1b54")
    ]
)
