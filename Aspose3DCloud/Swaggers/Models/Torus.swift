//
// Torus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Torus Entity class */

public struct Torus: Codable {

    /** Gets or sets the Name of the torus. */
    public var name: String?
    /** Gets or sets the radius of the torus.              */
    public var radius: Double?
    /** Gets or sets the radius of the tube. */
    public var tube: Double?
    /** Gets or sets the radial segments. */
    public var radialSegments: Int32?
    /** Gets or sets the tubular segments. */
    public var tubularSegments: Int32?
    /** Gets or sets the arc. */
    public var arc: Double?

public enum CodingKeys: String, CodingKey { 
        case name = "Name"
        case radius = "Radius"
        case tube = "Tube"
        case radialSegments = "RadialSegments"
        case tubularSegments = "TubularSegments"
        case arc = "Arc"
    }

    public init(name: String?, radius: Double?, tube: Double?, radialSegments: Int32?, tubularSegments: Int32?, arc: Double?) {
        self.name = name
        self.radius = radius
        self.tube = tube
        self.radialSegments = radialSegments
        self.tubularSegments = tubularSegments
        self.arc = arc
    }


}

