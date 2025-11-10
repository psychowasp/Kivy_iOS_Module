// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let dev = false

let pykit_package: Package.Dependency = if dev {
    .package(url: "https://github.com/py-swift/PySwiftKit", branch: "development")
} else {
    .package(url: "https://github.com/py-swift/PySwiftKit", .upToNextMajor(from: .init(313, 0, 0)))
}

let package_dependencies: [Package.Dependency] = [
    pykit_package,
    .package(url: "https://github.com/py-swift/PyFileGenerator", from: .init(0, 0, 1)),
    // add other packages 
]



let package_targets: [Target] = [
    .target(
        name: "Kivy_iOS_Module",
        dependencies: [
            .product(name: "PySwiftKitBase", package: "PySwiftKit")
            // add other package products or internal targets
        ],
        resources: [

        ],
        swiftSettings: [
            .swiftLanguageMode(.v5)
        ]
    )
]



let package = Package(
    name: "Kivy_iOS_Module",
    platforms: [
        .iOS(.v13),
        .macOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Kivy_iOS_Module",
            targets: ["Kivy_iOS_Module"]),
    ],
    dependencies: package_dependencies,
    targets: package_targets
)
