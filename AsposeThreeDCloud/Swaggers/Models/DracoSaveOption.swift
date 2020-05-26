//
// DracoSaveOption.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DracoSaveOption: SaveOptions {

    /** Quantization bits for position, default value is 14 */
    public var positionBits: Int32?
    /** Quantization bits for texture coordinate, default value is 12 */
    public var textureCoordinateBits: Int32?
    /** Quantization bits for vertex color, default value is 10 */
    public var colorBits: Int32?
    /** Quantization bits for normal vectors, default value is 10 */
    public var normalBits: Int32?
    /** Compression level, default value is Aspose.ThreeD.Formats.DracoCompressionLevel.Standard. */
    public var compressionLevel: DracoCompressionLevel?

public enum CodingKeys: String, CodingKey {
        case positionBits = "PositionBits"
        case textureCoordinateBits = "TextureCoordinateBits"
        case colorBits = "ColorBits"
        case normalBits = "NormalBits"
        case compressionLevel = "CompressionLevel"
    }

    public init(saveFormat: SaveFormat?, lookupPaths: [String]?, fileName: String?, fileFormat: String?,  positionBits: Int32?, textureCoordinateBits: Int32?, colorBits: Int32?, normalBits: Int32?, compressionLevel: DracoCompressionLevel?) {
        self.positionBits = positionBits
        self.textureCoordinateBits = textureCoordinateBits
        self.colorBits = colorBits
        self.normalBits = normalBits
        self.compressionLevel = compressionLevel
        super.init(saveFormat: saveFormat, lookupPaths: lookupPaths, fileName: fileName, fileFormat: fileFormat)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(positionBits, forKey: "PositionBits")
        try container.encodeIfPresent(textureCoordinateBits, forKey: "TextureCoordinateBits")
        try container.encodeIfPresent(colorBits, forKey: "ColorBits")
        try container.encodeIfPresent(normalBits, forKey: "NormalBits")
        
        try container.encodeIfPresent(compressionLevel, forKey: "CompressionLevel")
        try super.encode(to: encoder)
    }
 
    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        positionBits = try container.decodeIfPresent(Int32.self, forKey: "PositionBits")
        textureCoordinateBits = try container.decodeIfPresent(Int32.self, forKey: "TextureCoordinateBits")
        colorBits = try container.decodeIfPresent(Int32.self, forKey: "ColorBits")
        normalBits = try container.decodeIfPresent(Int32.self, forKey: "NormalBits")
        
        compressionLevel = try container.decodeIfPresent(DracoCompressionLevel.self, forKey: "CompressionLevel")
        try super.init(from: decoder)
    }

}

