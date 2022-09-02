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
        .package(name: "java_swift", url: "https://github.com/readdle/java_swift", .upToNextMinor(from: "2.1.9")),
//		.package(path: "../java_swift"),
        .package(name: "Java", url: "https://github.com/readdle/swift-java", .upToNextMinor(from: "0.2.5")),
//		.package(path: "../swift-java"),
        .package(name: "JavaCoder", url: "https://github.com/heliumfoot/swift-java-coder", from: "1.0.20"),
//            .package(name: "JavaCoder", url: "https://github.com/readdle/swift-java-coder", .branch("dev/kotlin-support")),
//        .package(name: "JavaCoder", path: "../swift-java-coder"),
        .package(name: "AnyCodable", url: "https://github.com/readdle/swift-anycodable.git", .upToNextMinor(from: "1.1.0"))
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
