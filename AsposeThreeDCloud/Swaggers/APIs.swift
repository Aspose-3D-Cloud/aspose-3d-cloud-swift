// APIs.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

open class AsposeThreeDCloudAPI {
    public static var basePath = "https://api.aspose.cloud/v3.0"
    public static var appSid: String?
    public static var appKey: String?
    public static var credential: URLCredential?
    //public static var customHeaders: [String:String] = [:]
    public static var requestBuilderFactory: RequestBuilderFactory = AlamofireRequestBuilderFactory()
    public static var accessToken: String?
    public static var refreshToken: String?
}

open class RequestBuilder<T> {
    var credential: URLCredential?
    var headers: [String:String]
    public let parameters: [String:Any]?
    public let isBody: Bool
    public let method: String
    public let URLString: String

    /// Optional block to obtain a reference to the request's progress instance when available.
    public var onProgressReady: ((Progress) -> ())?

    required public init(method: String, URLString: String, parameters: [String:Any]?, isBody: Bool, headers: [String:String] = [:]) {
        self.method = method
        self.URLString = URLString
        self.parameters = parameters
        self.isBody = isBody
        self.headers = headers

        if (AsposeThreeDCloudAPI.accessToken != nil)
        {
            let str = "Bearer " + AsposeThreeDCloudAPI.accessToken!
            self.addHeaders(["Authorization": str])
        }
    }

    open func addHeaders(_ aHeaders:[String:String]) {
        for (header, value) in aHeaders {
            headers[header] = value
        }
    }

    open func execute(_ completion: @escaping (_ response: Response<T>?, _ error: Error?) -> Void) { }

    public func addHeader(name: String, value: String) -> Self {
        if !value.isEmpty {
            headers[name] = value
        }
        return self
    }

    open func addCredential() -> Self {
        self.credential = AsposeThreeDCloudAPI.credential
        return self
    }
}

public protocol RequestBuilderFactory {
    func getNonDecodableBuilder<T>() -> RequestBuilder<T>.Type
    func getBuilder<T:Decodable>() -> RequestBuilder<T>.Type
    func getBuilder<T:AnyObject>() -> RequestBuilder<T>.Type
}
