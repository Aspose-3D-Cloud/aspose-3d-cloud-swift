//
// FolderApiTests.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import XCTest
@testable import Aspose3DCloud


class FolderApiTests: Aspose3DCloudTests {
    
    override func setUp()
    {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let expectation = self.expectation(description: "FolderApiTestsSetUp")
        AuthAspose.checkAuth()
        {
            (authError) in
            guard authError == nil else {
                XCTFail("error FolderApiTestsSetUp")
                return
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    override func tearDown()
    {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testcreateFolder()
    {
        let expectation = self.expectation(description: "testcreateFolder")
        let path:String = SwiftTestFOLDER + "New"
        let storageName:String? = nil
        
        ThreeDCloudAPI.createFolder(path: path, storageName: storageName)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testcreateFolder")
                return
            }
            
            if response != nil {
                //XCTAssertEqual(response.code, 200)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testcopyFolder()
    {
        let expectation = self.expectation(description: "testcopyFolder")
        let srcPath:String = SwiftTestFOLDER
        let destPath:String = SwiftTestFOLDER_COPY
        let srcStorageName:String? = nil
        let destStorageName:String? = nil
        
        ThreeDCloudAPI.copyFolder(srcPath: srcPath, destPath: destPath, srcStorageName: srcStorageName, destStorageName: destStorageName)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testcopyFolder")
                return
            }
            
            if response != nil {
                //XCTAssertEqual(response.code, 200)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testdeleteFolder()
    {
        let expectation = self.expectation(description: "testdeleteFolder")
        let path:String = SwiftTestFOLDER + "New"
        let storageName:String? = nil
        let recursive:Bool? = nil
        
        ThreeDCloudAPI.deleteFolder(path: path, storageName: storageName, recursive: recursive)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testdeleteFolder")
                return
            }
            
            if response != nil {
                //XCTAssertEqual(response.code, 200)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testgetFilesList()
    {
        let expectation = self.expectation(description: "testgetFilesList")
        let path:String = SwiftTestFOLDER_COPY
        let storageName:String? = nil
        
        ThreeDCloudAPI.getFilesList(path: path, storageName: storageName)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testgetFilesList")
                return
            }
            
            if let response = response {
                XCTAssertTrue(response.value!.count >= 0)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testmoveFolder()
    {
        let expectation = self.expectation(description: "testmoveFolder")
        let srcPath:String = SwiftTestFOLDER_COPY
        let destPath:String = SwiftTestFOLDER + "Dest"
        let srcStorageName:String? = nil
        let destStorageName:String? = nil
        
        ThreeDCloudAPI.moveFolder(srcPath: srcPath, destPath: destPath, srcStorageName: srcStorageName, destStorageName: destStorageName)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testmoveFolder")
                return
            }
            
            if response != nil {
                //XCTAssertEqual(response.code, 200)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
}