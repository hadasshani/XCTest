//
//  UITestsNegative.swift
//  SimpleAppForTestingUITests
//
//  Created by Igor Gindin on 17/10/2017.
//  Copyright © 2017 Perfecto Mobile. All rights reserved.
//

//import Foundation
import XCTest

class UITestsNegative: SimpleAppForTestingUITests {
    
    func testButtonNotExists() {
        XCTAssertFalse(app.buttons["incorrect button"].exists)
    }
    
    // Intentionally failed test
    func testStaticTextNotExistsFailureTest() {
        
        XCTAssertTrue(app.staticTexts["incorrect label"].exists)
    }
    
    func testEnterEmptyValue() {
        app.buttons[buttonSetNewText].tap()
        sleep(1)
        
        XCTAssertFalse(app.staticTexts[defaultText].exists)
    }
    
    func testClearText() {

        let textField = app.textFields["Enter something"]
        let text = "Completely Different Text"

        textField.tap()
        textField.typeText(text)

        app.buttons[buttonSetNewText].tap()
        app.buttons[buttonClearText].tap()
        app.buttons[buttonSetNewText].tap()

        XCTAssertFalse(false)

    }
    
    func testTextDeleted() {
        let textField = app.textFields["Enter something"]
        let text = "Completely Different Text"
        
        textField.tap()
        textField.typeText(text)
        
        app.buttons[buttonSetNewText].tap()
        sleep(1)
        app.buttons[buttonSetDefaultText].tap()
        
        XCTAssertTrue(app.staticTexts[text].exists)
    }
    
    func testDefaultValueNotDouble() {
        app.buttons[buttonSetDefaultText].tap()
        app.buttons[buttonSetDefaultText].tap()
        
        XCTAssertFalse(app.staticTexts["SomethingSomething"].exists)
    }
}

