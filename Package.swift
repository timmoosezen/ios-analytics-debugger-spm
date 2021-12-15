// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "IosAnalyticsDebugger",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "IosAnalyticsDebugger",
            targets: ["IosAnalyticsDebugger"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "IosAnalyticsDebugger",
            dependencies: [],
            resources: [
                .process("resources/Assets.xcassets"),
                .process("resources/BarDebugger.xib"),
                .process("resources/BubbleDebuggerXIB.xib"),
                .process("resources/EventsListScreenViewController.xib"),
                .process("resources/EventTableViewCell.xib"),
                .process("resources/EventTableViewSecondaryCell.xib")
            ])
    ]
)
