// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "MotionGrid",
    platforms: [
        .iOS(.v15), .macOS(.v12)
    ],
    products: [
        .library(name: "MotionGridCore", targets: ["MotionGridCore"]),
        .library(name: "MotionGridUI", targets: ["MotionGridUI"]),
    ],
    targets: [
        .target(
            name: "MotionGridCore",
            path: "Sources/MotionGridCore"
        ),
        .target(
            name: "MotionGridUI",
            dependencies: ["MotionGridCore"],
            path: "Sources/MotionGridUI"
        ),
        .testTarget(
            name: "MotionGridTests",
            dependencies: ["MotionGridCore"],
            path: "Tests/MotionGridTests"
        )
    ]
)
