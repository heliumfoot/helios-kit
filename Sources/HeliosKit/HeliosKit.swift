@_exported import Foundation
@_exported import CJavaVM
@_exported import Java
@_exported import JavaCoder
@_exported import AnyCodable

public struct Helios {
	public static func bootstrap(cachePath: String) {
		 setenv("TMPDIR", cachePath, 1)
		 // Required for SSL to work
		 setenv("URLSessionCertificateAuthorityInfoFile", cachePath + "/cacert.pem", 1)
	}
}
