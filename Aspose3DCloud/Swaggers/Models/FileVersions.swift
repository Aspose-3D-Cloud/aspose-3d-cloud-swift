//
// FileVersions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** File versions FileVersion. */

public struct FileVersions: Codable {

    /** File versions FileVersion. */
    public var value: [FileVersion]?

public enum CodingKeys: String, CodingKey { 
        case value = "Value"
    }

    public init(value: [FileVersion]?) {
        self.value = value
    }


}

