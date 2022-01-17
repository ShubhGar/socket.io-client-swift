// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SocketIO",
    products: [
        .library(name: "SocketIO",type: .dynamic, targets: ["SocketIO"])
    ],
    dependencies: [
        .package(name: "Starscream", url: "https://github.com/ShubhGar/Starscream", from: "5.0.0")
    ],
    targets: [
        .target(name: "SocketIO", dependencies: ["Starscream"]),
        .testTarget(name: "TestSocketIO", dependencies: ["SocketIO"]),
    ]
)
