//
//  AsposeThreeDCloudTests.swift
//  AsposeThreeDCloudTests
//
//  Copyright © 2020 AsposeCloud. All rights reserved.
//

import XCTest
@testable import AsposeThreeDCloud

class AsposeThreeDCloudTests: XCTestCase {

    internal let TEMPFOLDER = "Temp"
    internal let testTimeout: TimeInterval = 60.0
    internal let LocalTestThreeDFile = "threeD.pdf"
    internal let SwiftTestFOLDER = "Swift"
    internal let SwiftTestFOLDER_COPY = "SwiftCopy"
    internal let STROAGR_NAME = "First Storage"

    //This is only for test, please set your licence here
    //***************************************************
    //****Note:Please replace your AppID and AppKey here
    //***************************************************
    internal let _appSid = "****your AppID****"
    internal let _appKey = "****your AppKey****"

    override func setUp() {
        super.setUp()
        
        // read App Key and App Sid from setup.json file
        // Get App key and App SID from https://cloud.aspose.com
        readSettings()
    }

    override func tearDown() {
        super.tearDown()
    }
    
    private func readSettings() {
        AsposeThreeDCloudAPI.appSid = self._appSid
        AsposeThreeDCloudAPI.appKey = self._appKey
    }

    internal func uploadFile(name: String, folder: String = "", completion: @escaping ()->Void) {
        
        var path = ""
        if (folder != "")
        {
            path = "\(folder)/\(name)"
        }
        else
        {
            path = name
        }
        
        let url: URL? = getURL(name)
        if (nil == url) {
            XCTFail("no file found \(name)")
            return
        }
        
        self.putCreate(path: path, file: url!) {
            (response, error) in
            guard error == nil else {
                XCTFail("error uploading file \(name)")
                return
            }
            if let response = response, response.uploaded!.count > 0 {
                completion()
            } else {
                XCTFail("error uploading file \(name)")
            }
            
        }
        
    }
    
    internal func getURL(_ name: String) -> URL? {
        let bundle = Bundle(for: type(of: self))
        return bundle.url(forResource: name, withExtension: nil)
    }
    
    internal func putCreate(path: String, file: URL, versionId: String? = nil, storage: String? = nil, completion: @escaping ((_ data: FilesUploadResult?,_ error: Error?) -> Void)) {
        
        ThreeDCloudAPI.uploadFileWithRequestBuilder(path: path, file: file, storageName: storage).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
        
    }

    internal func deleteFile(name: String, folder: String = "", completion: @escaping ()->Void) {
        
        var path = ""
        if (folder != "")
        {
            path = "\(folder)/\(name)"
        }
        else
        {
            path = name
        }
        
        ThreeDCloudAPI.deleteFileWithRequestBuilder(path: path).execute { (response, error) -> Void in
            guard error == nil else {
                XCTFail("error delete file \(path)")
                return
            }
            if response != nil {
                completion()
            } else {
                XCTFail("error delete file \(name)")
            }
        }
        
    }
    
    internal func GetErrorDataInfo(error: ErrorResponse) -> String?
    {
        if case let ErrorResponse.error(_, data, _) = error {
            let errorinfo = String(data: data!, encoding: String.Encoding.utf8)
            return errorinfo
        }
        return nil
    }
    
    
}
