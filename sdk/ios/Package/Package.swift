// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Picovoice",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Picovoice",
            targets: ["Picovoice"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ash-storyboard/rhino/binding/ios/Package", from: "3.0.1"),
        .package(url: "https://github.com/ash-storyboard/porcupine/binding/ios/Package", from: "3.0.1"),
        .package(url: "https://github.com/ash-storyboard/ios-voice-processor/sdk/ios/Package", from: "1.1.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Picovoice",
            dependencies: ["ios-voice-processor", "Porcupine", "Rhino"]),
    ]
)
