// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibraryTestAppKit",
    platforms: [.iOS(.v12), .macOS(.v12)],
    products: [
        .library(
            name: "MyLibraryTestAppKit",
            targets: ["MyLibraryTestAppKit"]),
        .library(
            name: "MyLibraryTestAppKitC",
            targets: ["MyLibraryTestAppKitC"]),
    ],
    targets: [
        .target(
            name: "MyLibraryTestAppKit",
            dependencies: ["HevSocks5Tunnel", "MyLibraryTestAppKitC"]
        ),
        .target(
            name: "MyLibraryTestAppKitC",
            publicHeadersPath: "."
        ),
        .binaryTarget(name: "HevSocks5Tunnel", path: "Sources/HevSocks5Tunnel.xcframework")
    ]
)
