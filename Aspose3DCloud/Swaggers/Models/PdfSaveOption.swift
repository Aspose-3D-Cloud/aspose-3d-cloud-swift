//
// PdfSaveOption.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class PdfSaveOption: SaveOptions {

    /** Gets or sets to flip the coordinate system of the scene during exporting. */
    public var flipCoordinateSystem: Bool?
    /** Render mode specifies the style in which the 3D artwork is rendered. */
    public var renderMode: PdfRenderMode?
    /** LightingScheme specifies the lighting to apply to 3D artwork. */
    public var lightingScheme: PdfLightingScheme?

public enum CodingKeys: String, CodingKey {
        case flipCoordinateSystem = "FlipCoordinateSystem"
        case renderMode = "RenderMode"
        case lightingScheme = "LightingScheme"
    }

    public init(saveFormat: SaveFormat?, lookupPaths: [String]?, fileName: String?, fileFormat: String?, flipCoordinateSystem: Bool?, renderMode: PdfRenderMode?, lightingScheme: PdfLightingScheme?) {
        self.flipCoordinateSystem = flipCoordinateSystem
        self.renderMode = renderMode
        self.lightingScheme = lightingScheme
        super.init(saveFormat: saveFormat, lookupPaths: lookupPaths, fileName: fileName, fileFormat: fileFormat)
    }
    
    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(flipCoordinateSystem, forKey: "FlipCoordinateSystem")
        try container.encodeIfPresent(renderMode, forKey: "RenderMode")
        try container.encodeIfPresent(lightingScheme, forKey: "LightingScheme")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        flipCoordinateSystem = try container.decodeIfPresent(Bool.self, forKey: "FlipCoordinateSystem")
        renderMode = try container.decodeIfPresent(PdfRenderMode.self, forKey: "RenderMode")
        lightingScheme = try container.decodeIfPresent(PdfLightingScheme.self, forKey: "LightingScheme")
        try super.init(from: decoder)
    }


}
