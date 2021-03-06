//
// Cylinder.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Cylinder: Codable {

    /** Gets or sets the name of the cylinder              */
    public var name: String?
    /** Gets or sets the radius of cylinder's top cap. */
    public var radiusTop: Double
    /** Gets or sets the radius bottoof cylinder's bottom cap.              */
    public var radiusBottom: Double
    /** Gets or sets the height of the cylinder. */
    public var height: Double
    /** Gets or sets the radial segments. */
    public var radialSegments: Int32
    /** Gets or sets the height segments. */
    public var heightSegments: Int32
    /** Gets or sets a value indicating whether this Aspose.ThreeD.Entities.Cylinder open ended. The default value is false. */
    public var openEnded: Bool
    /** Gets or sets the theta start. The default value is 0.              */
    public var thetaStart: Double
    /** Gets or sets the length of the theta. The default value is 2p. */
    public var thetaLength: Double

public enum CodingKeys: String, CodingKey { 
        case name = "Name"
        case radiusTop = "RadiusTop"
        case radiusBottom = "RadiusBottom"
        case height = "Height"
        case radialSegments = "RadialSegments"
        case heightSegments = "HeightSegments"
        case openEnded = "OpenEnded"
        case thetaStart = "ThetaStart"
        case thetaLength = "ThetaLength"
    }

    public init(name: String?, radiusTop: Double, radiusBottom: Double, height: Double, radialSegments: Int32, heightSegments: Int32, openEnded: Bool, thetaStart: Double, thetaLength: Double) {
        self.name = name
        self.radiusTop = radiusTop
        self.radiusBottom = radiusBottom
        self.height = height
        self.radialSegments = radialSegments
        self.heightSegments = heightSegments
        self.openEnded = openEnded
        self.thetaStart = thetaStart
        self.thetaLength = thetaLength
    }


}

