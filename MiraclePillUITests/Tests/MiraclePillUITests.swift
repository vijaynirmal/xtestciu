//
//  MiraclePillUITests.swift
//  MiraclePillUITests
//
//  Created by Vijay Nirmal Jeromiyas on 23/11/19.
//  Copyright © 2019 Vijay Nirmal Jeromiyas. All rights reserved.
//

import XCTest

class MiraclePillUITests: BaseTest {

    var homePage = HomePage()
    
        func testExample() {
        
            XCUIDevice.shared.orientation = .faceUp
            
            let app = XCUIApplication()
            
            XCTAssert(homePage.getFullNameTextField().exists)
            homePage.getFullNameTextField().tap()
            homePage.getFullNameTextField().typeText("Vijay")
            
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
