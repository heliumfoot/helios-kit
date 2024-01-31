// swift-tools-version:5.7.1
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
        .package(name: "java_swift", url: "https://github.com/readdle/java_swift", .upToNextMinor(from: "2.2.0")),
//		.package(path: "../java_swift"),
        .package(name: "Java", url: "https://github.com/readdle/swift-java", .upToNextMinor(from: "2.0.0")),
//		.package(path: "../swift-java"),
		.package(name: "JavaCoder", url: "https://github.com/readdle/swift-java-coder", .revision("b0b66fa90d7b04c7214da15a17ec5ba14df61c8d")),
//            .package(name: "JavaCoder", url: "https://github.com/readdle/swift-java-coder", .branch("dev/kotlin-support")),
//        .package(name: "JavaCoder", path: "../swift-java-coder"),
        .package(name: "AnyCodable", url: "https://github.com/readdle/swift-anycodable.git", .upToNextMinor(from: "1.0.2"))
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
