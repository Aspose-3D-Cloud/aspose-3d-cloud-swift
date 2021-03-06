//
// Vector3.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A vector with three components.              */

public struct Vector3: Codable {

    /** The x component. */
    public var x: Double?
    /** The y component. */
    public var y: Double?
    /** The z component. */
    public var z: Double?
    /** Gets the square of the length.              */
    public var length2: Double?
    /** Gets the length of this vector. */
    public var length: Double?

public enum CodingKeys: String, CodingKey { 
        case x = "x"
        case y = "y"
        case z = "z"
        case length2 = "Length2"
        case length = "Length"
    }

    public init(x: Double?, y: Double?, z: Double?, length2: Double?, length: Double?) {
        self.x = x
        self.y = y
        self.z = z
        self.length2 = length2
        self.length = length
    }


}

