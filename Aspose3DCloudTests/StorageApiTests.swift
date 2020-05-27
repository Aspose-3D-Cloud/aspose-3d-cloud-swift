//
// StorageApiTests.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import XCTest
@testable import Aspose3DCloud


class StorageApiTests: Aspose3DCloudTests {
    
    override func setUp()
    {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let expectation = self.expectation(description: "StorageApiTestsSetUp")
        AuthAspose.checkAuth()
        {
            (authError) in
            guard authError == nil else {
                XCTFail("error StorageApiTestsSetUp")
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
    
    func testgetFileVersions()
    {
        let expectation = self.expectation(description: "testgetFileVersions")
        let path:String = LocalTestThreeDFile
        let storageName:String? = nil
        
        uploadFile(name: path) {
            ThreeDCloudAPI.getFileVersions(path: path, storageName: storageName)
            {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testgetFileVersions")
                    return
                }
                
                if let response = response {
                    //XCTAssertEqual(response.code, 200)
                    XCTAssertTrue(response.value!.count > 0)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    
    func testobjectExists()
    {
        let expectation = self.expectation(description: "testobjectExists")
        let path:String = LocalTestThreeDFile
        let storageName:String? = nil
        let versionId:String? = nil
        
        uploadFile(name: path) {
            ThreeDCloudAPI.objectExists(path: path, storageName: storageName, versionId: versionId)
            {
                (response, error) in
                guard error == nil else {
                    XCTFail("error testobjectExists")
                    return
                }
                
                if let response = response {
                    XCTAssertTrue(response.exists)
                    XCTAssertFalse(response.isFolder)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func teststorageExists()
    {
        let expectation = self.expectation(description: "teststorageExists")
        let storageName:String = STROAGR_NAME
        
        ThreeDCloudAPI.storageExists(storageName: storageName)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error teststorageExists")
                return
            }
            
            if let response = response {
                XCTAssertTrue(response.exists)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
    func testgetDiscUsage()
    {
        let expectation = self.expectation(description: "testgetDiscUsage")
        let storageName:String? = nil
        
        ThreeDCloudAPI.getDiscUsage(storageName: storageName)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testgetDiscUsage")
                return
            }
            
            if let response = response {
                //XCTAssertEqual(response.code, 200)
                print("Disc totalSize(Byte):" + String(response.totalSize))
                print("Disc usedSize(Byte):" + String(response.usedSize))
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
}
