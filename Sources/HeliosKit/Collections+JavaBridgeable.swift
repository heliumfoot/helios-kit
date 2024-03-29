import Foundation
import java_swift
import JavaCoder

public extension Array {
	// Decoding SwiftValue type with JavaCoder
	static func from<T>(javaObject: jobject) throws -> Array<T> where T: Decodable {
		// ignore forPackage for basic impl
		return try JavaDecoder(forPackage: AndroidPackage, missingFieldsStrategy: .ignore).decode(Array<T>.self, from: javaObject)
	}

}

public extension Array where Element: Encodable {
	// Encoding SwiftValue type with JavaCoder
	func javaObject() throws -> jobject {
		// ignore forPackage for basic impl
		return try JavaEncoder(forPackage: AndroidPackage, missingFieldsStrategy: .ignore).encode(self)
	}
}

public extension Dictionary where Key: Decodable, Value: Decodable {

		// Decoding SwiftValue type with JavaCoder
		static func from(javaObject: jobject) throws -> Dictionary<Key, Value> {
				return try JavaDecoder(forPackage: AndroidPackage, missingFieldsStrategy: .throw).decode(Self.self, from: javaObject)
		}

}

public extension Dictionary where Key: Encodable, Value: Encodable {

		// Encoding SwiftValue type with JavaCoder
		func javaObject() throws -> jobject {
				// ignore forPackage for basic impl
				return try JavaEncoder(forPackage: AndroidPackage, missingFieldsStrategy: .throw).encode(self)
		}

}

extension Set where Element: Decodable {
  // Decoding SwiftValue type with JavaCoder
  public static func from(javaObject: jobject) throws -> Self {
      return try JavaDecoder(forPackage: AndroidPackage, missingFieldsStrategy: .throw).decode(Self.self, from: javaObject)
  }
}

extension Set where Element: Encodable {
  public func javaObject() throws -> jobject {
    // ignore forPackage for basic impl
    return try JavaEncoder(forPackage: AndroidPackage, missingFieldsStrategy: .throw).encode(self)
  }
}
