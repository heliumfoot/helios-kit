@_exported import Foundation
@_exported import CJavaVM
@_exported import Java
@_exported import JavaCoder
@_exported import AnyCodable

public fileprivate(set) var AndroidPackage: String = ""

public protocol Bootable {
	static func boot(packageName: String, cachePath: String)
}

public extension Bootable {
	static func boot(packageName: String, cachePath: String) {
		AndroidPackage = packageName.replacingOccurrences(of: ".", with: "/")
		NSLog("[\(String(describing: self))] - Android Package = \(AndroidPackage)")
		
		setenv("TMPDIR", cachePath, 1)
		// Required for SSL to work
		setenv("URLSessionCertificateAuthorityInfoFile", cachePath + "/cacert.pem", 1)
	}
	
	static func printDiagnostics() {
		NSLog("""
		[Main Bundle Path] = \(Bundle.main.bundlePath)
		[AndroidPackage] = \(AndroidPackage)
		""")
	}
}
