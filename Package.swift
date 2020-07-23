// swift-tools-version:5.0
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
		.package(url: "https://github.com/readdle/java_swift", .upToNextMinor(from: "2.1.9")),
		.package(url: "https://github.com/readdle/swift-java", .upToNextMinor(from: "0.2.4")),
		.package(url: "https://github.com/readdle/swift-java-coder", .branch("dev/kotlin-support")),
		.package(url: "https://github.com/readdle/swift-anycodable.git", .upToNextMinor(from: "1.0.3"))
	],
	targets: [
		.target(
			name: "HeliosKit",
			dependencies: [
				"java_swift",
				"Java",
				"JavaCoder",
				"AnyCodable"
			]),
		.testTarget(
			name: "HeliosKitTests",
			dependencies: ["HeliosKit"]),
	]
)
