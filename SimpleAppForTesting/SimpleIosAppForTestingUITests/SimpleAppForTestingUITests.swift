//
//  SimpleAppForTestingUITests.swift
//  SimpleAppForTestingUITests
//
//  Created by Igor Gindin on 15/10/2017.
//  Copyright © 2017 Perfecto Mobile. All rights reserved.
//

import XCTest
//@testable import SimpleIosAppForTesting

class SimpleAppForTestingUITests: XCTestCase {
    let app = XCUIApplication()
    let defaultText = "Something"
    let buttonSetNewText = "Set New Text"
    let buttonSetDefaultText = "Set Default Text"
    let buttonClearText = "X"
    let emptyText = ""
        
    override func setUp() {
        super.setUp()
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
        app.terminate()
    }
    
    func waitForElementToAppear(_ element: XCUIElement, file: String = #file, line: UInt = #line) {
        let existsPredicate = NSPredicate(format: "exists == true")
        expectation(for: existsPredicate, evaluatedWith: element, handler: nil)
        
        waitForExpectations(timeout: 5) { (error) -> Void in
            if (error != nil) {
                let message = "Failed to find \(element) after 5 seconds."
                self.recordFailure(withDescription: message, inFile: file, atLine: Int(line), expected: true)
            }
        }
    }
    
}
