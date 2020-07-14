@_exported import Foundation
@_exported import CJavaVM
@_exported import Java
@_exported import JavaCoder
@_exported import AnyCodable

var AndroidPackage: String = ""

public protocol Bootable {
	static func boot(packageName: String, cachePath: String)
}

public extension Bootable {
	public static func boot(packageName: String, cachePath: String) {
		AndroidPackage = packageName
		setenv("TMPDIR", cachePath, 1)
		// Required for SSL to work
		setenv("URLSessionCertificateAuthorityInfoFile", cachePath + "/cacert.pem", 1)
	}
}
