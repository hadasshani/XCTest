//
//  SimpleAppForTestingTests.swift
//  SimpleAppForTestingTests
//
//  Created by Igor Gindin on 15/10/2017.
//  Copyright © 2017 Perfecto Mobile. All rights reserved.
//

import XCTest
@testable import SimpleIosAppForTesting

class SimpleAppForTestingStringTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitializationWithString() {
        let notEmptyString = JustClassForXCTesting.init(str: "Not Empty String", num: 3)
        
        sleep(2)
        
        XCTAssertNotNil(notEmptyString)
    }
    
    func testInitializationWithEmptyString() {
        let emptyString = JustClassForXCTesting.init(str: "", num: 4)
        
        sleep(2)
        
        XCTAssertNil(emptyString)
    }
    
    func testInitializationWithStringInCycle() {
        
        for _ in 1...30 {
            let notEmptyString = JustClassForXCTesting.init(str: "Not Empty String", num: 3)
            sleep(1)
            XCTAssertNotNil(notEmptyString)
        }
        
    }
}
