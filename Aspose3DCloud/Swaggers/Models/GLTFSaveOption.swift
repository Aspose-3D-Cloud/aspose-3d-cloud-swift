//
// GLTFSaveOption.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class GLTFSaveOption: SaveOptions {

    /** The JSON content of GLTF file is indented for human reading, default value is false. */
    public var prettyPrint: Bool?
    /** Embed all external assets as base64 into single file in ASCII mode, default value is false. */
    public var embedAssets: Bool?
    /** Serialize materials using KHR common material extensions, default value is false. Set this to false will cause Aspose.3D export a set of vertex/fragment shader if Aspose.ThreeD.Formats.GLTFSaveOptions.ExportShaders */
    public var useCommonMaterials: Bool?
    /** Flip texture coordinate v(t) component, default value is true. */
    public var flipTexCoordV: Bool?
    /** The file name of the external buffer file used to store binary data. If this file is not specified, Aspose.3D will generate a name for you. This is ignored when export glTF in binary mode. */
    public var bufferFile: Bool?
    /** Save scene object&#39;s dynamic properties into 'extra' fields in the generated glTF file. This is useful to provide application-specific data. Default value is false.. */
    public var saveExtras: Bool?
    /** Gets or sets whether to enable draco compression. */
    public var dracoCompression: Bool?
    /** Gets or sets  of the FileContent type. */
    public var fileContentType: FileContentType?

public enum CodingKeys: String, CodingKey { 
        case prettyPrint = "PrettyPrint"
        case embedAssets = "EmbedAssets"
        case useCommonMaterials = "UseCommonMaterials"
        case flipTexCoordV = "FlipTexCoordV"
        case bufferFile = "BufferFile"
        case saveExtras = "SaveExtras"
        case dracoCompression = "DracoCompression"
        case fileContentType = "FileContentType"
    }

    public init(saveFormat: SaveFormat?, lookupPaths: [String]?, fileName: String?, fileFormat: String?, prettyPrint: Bool?, embedAssets: Bool?, useCommonMaterials: Bool?, flipTexCoordV: Bool?, bufferFile: Bool?, saveExtras: Bool?, dracoCompression: Bool?, fileContentType: FileContentType?) {
        self.prettyPrint = prettyPrint
        self.embedAssets = embedAssets
        self.useCommonMaterials = useCommonMaterials
        self.flipTexCoordV = flipTexCoordV
        self.bufferFile = bufferFile
        self.saveExtras = saveExtras
        self.dracoCompression = dracoCompression
        self.fileContentType = fileContentType
        super.init(saveFormat: saveFormat, lookupPaths: lookupPaths, fileName: fileName, fileFormat: fileFormat)
    }

    // Encodable protocol methods
    
    public override func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: String.self)
        
        try container.encodeIfPresent(prettyPrint, forKey: "PrettyPrint")
        try container.encodeIfPresent(embedAssets, forKey: "EmbedAssets")
        try container.encodeIfPresent(useCommonMaterials, forKey: "UseCommonMaterials")
        try container.encodeIfPresent(flipTexCoordV, forKey: "FlipTexCoordV")
        
        try container.encodeIfPresent(bufferFile, forKey: "BufferFile")
        try container.encodeIfPresent(saveExtras, forKey: "SaveExtras")
        try container.encodeIfPresent(dracoCompression, forKey: "DracoCompression")
        try container.encodeIfPresent(fileContentType, forKey: "FileContentType")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)
        
        prettyPrint = try container.decodeIfPresent(Bool.self, forKey: "PrettyPrint")
        embedAssets = try container.decodeIfPresent(Bool.self, forKey: "EmbedAssets")
        useCommonMaterials = try container.decodeIfPresent(Bool.self, forKey: "UseCommonMaterials")
        flipTexCoordV = try container.decodeIfPresent(Bool.self, forKey: "FlipTexCoordV")
        
        bufferFile = try container.decodeIfPresent(Bool.self, forKey: "BufferFile")
        saveExtras = try container.decodeIfPresent(Bool.self, forKey: "SaveExtras")
        dracoCompression = try container.decodeIfPresent(Bool.self, forKey: "DracoCompression")
        fileContentType = try container.decodeIfPresent(FileContentType.self, forKey: "FileContentType")
        try super.init(from: decoder)
    }
}

