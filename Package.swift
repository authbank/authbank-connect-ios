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
                      url: "https://github.com/authbank/authbank-connect-ios/archive/refs/tags/0.0.3.zip",
                      checksum: "395129f3d898c584c1c826c1ed89b8c62093d003dfafdfc47ffce129d1c4247c")
    ]
)
