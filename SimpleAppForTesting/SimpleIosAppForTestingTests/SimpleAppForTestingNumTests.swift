//
//  SimpleAppForTestingNumTests.swift
//  SimpleAppForTestingTests
//
//  Created by Igor Gindin on 17/10/2017.
//  Copyright © 2017 Perfecto Mobile. All rights reserved.
//

import Foundation

import XCTest
@testable import SimpleIosAppForTesting

class SimpleAppForTestingNumTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitializationWithCorrectNumber() {
        let correctNum = JustClassForXCTesting.init(str: "Not Empty String", num: 3)
        
        sleep(2)
        
        XCTAssertNotNil(correctNum)
    }
    
    // Intentionally failure test
    func testInitializationWithTooBigNumberFailureTest() {
        let tooBigNum = JustClassForXCTesting.init(str: "Not Empty String", num: 6)

        sleep(2)

        XCTAssertNotNil(tooBigNum)
    }
    
    func testInitializationWithNegativeNumber() {
        let negativeNum = JustClassForXCTesting.init(str: "Not Empty String", num: -4)
        
        sleep(2)
        
        XCTAssertNil(negativeNum)
    }
    
    func testInitializationWithNegativeNumberInCycle() {
        
        for _ in 1...30 {
            let negativeNum = JustClassForXCTesting.init(str: "Not Empty String", num: -4)
            sleep(1)
            XCTAssertNil(negativeNum)
        }
        
    }
    
}

