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

public extension Dictionary {

		// Decoding SwiftValue type with JavaCoder
		static func from<K, V>(javaObject: jobject) throws -> Dictionary<K, V> where K: Decodable, V: Decodable {
				// ignore forPackage for basic impl
				return try JavaDecoder(forPackage: AndroidPackage, missingFieldsStrategy: .throw).decode(Dictionary<K, V>.self, from: javaObject)
		}

}

public extension Dictionary where Key: Encodable, Value: Encodable {

		// Encoding SwiftValue type with JavaCoder
		func javaObject() throws -> jobject {
				// ignore forPackage for basic impl
				return try JavaEncoder(forPackage: AndroidPackage, missingFieldsStrategy: .throw).encode(self)
		}

}
