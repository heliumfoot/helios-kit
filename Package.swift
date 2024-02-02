// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "HeliosKit",
	products: [
		.library(
			name: "HeliosKit",
			targets: ["HeliosKit"]),
	],
	dependencies: [
        .package(name: "Java", url: "https://github.com/readdle/swift-java", .upToNextMinor(from: "0.3.0")),
//		.package(path: "../swift-java"),
	],
	targets: [
		.target(
			name: "HeliosKit",
			dependencies: [
				"Java"
			]),
		.testTarget(
			name: "HeliosKitTests",
			dependencies: ["HeliosKit"]),
	]
)
