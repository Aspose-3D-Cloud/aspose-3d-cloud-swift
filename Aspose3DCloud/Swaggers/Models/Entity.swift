//
// Entity.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Entity class              */

public struct Entity: Codable {

    /** Box/Cylinder/Sphere/Torus/Plane */
    public var type: String?
    /** Gets or sets Box entity */
    public var box: Box?
    /** Gets or sets Cylinder entity */
    public var cylinder: Cylinder?
    /** Gets or sets Sphere entity */
    public var sphere: Sphere?
    /** Gets or sets Torus entity */
    public var torus: Torus?
    /** Gets or sets Plane entity */
    public var plane: Plane?

public enum CodingKeys: String, CodingKey { 
        case type = "Type"
        case box = "Box"
        case cylinder = "Cylinder"
        case sphere = "Sphere"
        case torus = "Torus"
        case plane = "Plane"
    }

    public init(type: String?, box: Box?, cylinder: Cylinder?, sphere: Sphere?, torus: Torus?, plane: Plane?) {
        self.type = type
        self.box = box
        self.cylinder = cylinder
        self.sphere = sphere
        self.torus = torus
        self.plane = plane
    }


}

