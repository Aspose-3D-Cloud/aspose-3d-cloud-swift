//
// OAuthAPITests.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import XCTest
@testable import Aspose3DCloud


class OAuthAPITests: Aspose3DCloudTests {
    
    override func setUp()
    {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
    }
    
    override func tearDown()
    {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testoAuthPost()
    {
        let expectation = self.expectation(description: "testoAuthPost")
        let grantType:String = "client_credentials"
        let clientId:String = AsposeThreeDCloudAPI.appSid!
        let clientSecret:String = AsposeThreeDCloudAPI.appKey!
        
        ThreeDCloudAPI.oAuthPost(grantType: grantType, clientId: clientId, clientSecret: clientSecret)
        {
            (response, error) in
            guard error == nil else {
                XCTFail("error testoAuthPost")
                return
            }
            
            if let response = response {
                AsposeThreeDCloudAPI.accessToken = response.accessToken
                AsposeThreeDCloudAPI.refreshToken = response.refreshToken
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
    
}