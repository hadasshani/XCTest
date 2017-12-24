//
//  UITestsPositive.swift
//  SimpleAppForTestingUITests
//
//  Created by Igor Gindin on 17/10/2017.
//  Copyright © 2017 Perfecto Mobile. All rights reserved.
//

//import Foundation
import XCTest
//@testable import SimpleIosAppForTesting

class UITestsPositive: SimpleAppForTestingUITests {
    
    func testStaticTextExists() {
        XCTAssert(app.staticTexts[defaultText].exists, "Default text \(defaultText) not found")
    }
    
    func testButtonSetNewTextExists() {
        XCTAssert(app.buttons[buttonSetNewText].exists, "Button \(buttonSetNewText) not found")
    }
    
    func testButtonSetDefaultTextExists() {
        XCTAssert(app.buttons[buttonSetDefaultText].exists, "Button \(buttonSetDefaultText) not found")
    }
    
    func testTypeText() {
        let textField = app.textFields["Enter something"]
        let text = "Completely Different Text"
        
        textField.tap()
        textField.typeText(text)
        
        app.buttons[buttonSetNewText].tap()

    }
    
    func testTypeTextReturnDefaultValue() {
        let textField = app.textFields["Enter something"]
        let text = "Completely Different Text"
        
        textField.tap()
        textField.typeText(text)
        
        app.buttons[buttonSetNewText].tap()
        sleep(1)
        app.buttons[buttonSetDefaultText].tap()
        
        XCTAssert(app.staticTexts[defaultText].exists, "The text \(defaultText) not enter")
    }
    
}
