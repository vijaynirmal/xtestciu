//
//  MiraclePillUITests.swift
//  MiraclePillUITests
//
//  Created by Vijay Nirmal Jeromiyas on 23/11/19.
//  Copyright © 2019 Vijay Nirmal Jeromiyas. All rights reserved.
//

import XCTest

class MiraclePillUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        takeScreenShot(name: "successPage")
    }

        func testExample() {
        
            XCUIDevice.shared.orientation = .faceUp
            
            let app = XCUIApplication()
            
            XCTAssert(app.textFields["fullnameTxtBox"].exists)
            app.textFields["fullnameTxtBox"].tap()
            app.textFields["fullnameTxtBox"].typeText("Vijay")
            
            XCTAssertTrue(app.textFields["addressTxtBox"].exists)
            app.textFields["addressTxtBox"].tap()
            app.textFields["addressTxtBox"].typeText("Prisha Homes")
            
            
            app.keyboards.buttons["Done"].tap()
            
            XCTAssertFalse(!app.textFields["zipPostalCodeTxtBox"].exists)
            XCTAssert(app.textFields["zipPostalCodeTxtBox"].exists)
            app.textFields["zipPostalCodeTxtBox"].tap()
            app.textFields["zipPostalCodeTxtBox"].typeText("600100")
            
            app.keyboards.buttons["Done"].tap()
            
            app.images["buyNowBtn"].tap()
            

            
    }

}
