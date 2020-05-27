//
// Box.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Box Entity */

public struct Box: Codable {

    /** Gets or sets the length of the box              */
    public var length: Double
    /** Gets or sets the width of the box */
    public var width: Double
    /** Gets or sets the height of the box */
    public var height: Double
    /** Gets or sets the name of the box              */
    public var name: String?
    /** Gets or sets the lengthSegments of the box */
    public var lengthSegments: Int32
    /** Gets or sets the widthSegments of the box */
    public var widthSegments: Int32
    /** Gets or sets the heightSegments of the box */
    public var heightSegments: Int32

public enum CodingKeys: String, CodingKey { 
        case length = "Length"
        case width = "Width"
        case height = "Height"
        case name = "Name"
        case lengthSegments = "LengthSegments"
        case widthSegments = "WidthSegments"
        case heightSegments = "HeightSegments"
    }

    public init(length: Double, width: Double, height: Double, name: String?, lengthSegments: Int32, widthSegments: Int32, heightSegments: Int32) {
        self.length = length
        self.width = width
        self.height = height
        self.name = name
        self.lengthSegments = lengthSegments
        self.widthSegments = widthSegments
        self.heightSegments = heightSegments
    }


}
