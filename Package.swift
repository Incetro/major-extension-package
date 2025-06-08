// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "major_extension_package",
    platforms: [
      .iOS(.v13)
      ],
    products: [
        .library(
            name: "TCAExtensions",
            targets: ["TCAExtensions"]
        ),
        .library(
            name: "SwiftUIExtensions",
            targets: ["SwiftUIExtensions"]
        ),
        .library(
            name: "BaseTypeExtensions",
            targets: ["BaseTypeExtensions"]
        ),
        .library(
            name: "UIKitExtensions",
            targets: ["UIKitExtensions"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/Incetro/tca-extensions.git",
            branch: "master"
        ),
        .package(
            url: "https://github.com/Incetro/swiftui-extensions.git",
            branch: "master"
        ),
        .package(
            url: "https://github.com/Incetro/base-type-extensions.git",
            branch: "master"
        ),
        .package(
            url: "https://github.com/Incetro/uikit-extensions.git",
            branch: "master"
        )
    ],
    targets: [
        // TCA Extensions
        .target(
            name: "TCAExtensions",
            dependencies: [
                .product(
                    name: "tca-extensions",
                    package: "tca-extensions"
                )
            ]
        ),
        
        // SwiftUI Extensions
        .target(
            name: "SwiftUIExtensions",
            dependencies: [
                .product(
                    name: "swiftui-extensions",
                    package: "swiftui-extensions"
                )
            ]
        ),
        
        // Base Type Extensions
        .target(
            name: "BaseTypeExtensions",
            dependencies: [
                .product(
                    name: "base-type-extensions",
                    package: "base-type-extensions"
                )
            ]
        ),
        
        // UIKit Extensions
        .target(
            name: "UIKitExtensions",
            dependencies: [
                .product(
                    name: "uikit-extensions",
                    package: "uikit-extensions"
                )
            ]
        ),
        
        // Tests
        .testTarget(
            name: "major_extension_packageTests",
            dependencies: [
                "TCAExtensions",
                "SwiftUIExtensions",
                "BaseTypeExtensions",
                "UIKitExtensions"
            ]
        )
    ]
)
