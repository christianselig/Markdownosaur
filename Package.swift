// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Markdownosaur",
    platforms: [.iOS(.v13), .tvOS(.v15)],
    products: [
        .library(
            name: "Markdownosaur",
            targets: ["Markdownosaur"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-markdown.git", branch:"main")
    ],
    targets: [
        .target(
            name: "Markdownosaur",
            dependencies: [
                .product(name: "Markdown", package: "swift-markdown")
            ]
        ),
        .testTarget(
            name: "MarkdownosaurTests",
            dependencies: ["Markdownosaur"]),
    ]
)
