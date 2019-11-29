//
//  BaseTest.swift
//  MiraclePillUITests
//
//  Created by Vijay Nirmal Jeromiyas on 29/11/19.
//  Copyright © 2019 Vijay Nirmal Jeromiyas. All rights reserved.
//

import Foundation
import XCTest

class BaseTest : XCTestCase {
    
    lazy var app : XCUIApplication = XCUIApplication(bundleIdentifier: "com.sjvijay.MiraclePill")
    
    override func setUp() {
        super.setUp()
        app.launch()
    }
    
    override func tearDown() {
        takeScreenShot(name: "Success page")
        app.terminate()
        super.tearDown()
    }
    
    func getApp() -> XCUIApplication {
        return self.app
    }
    
    func tapDoneBtn() {
        app.keyboards.buttons["Done"].tap()
    }
    
    func assertExists(element:XCUIElement){
        XCTAssert(element.exists)
    }
    
    func verifyLabelTxt(element:XCUIElement,textToVerify:String) -> Bool{
        XCTContext.runActivity(named: "Verify Label Text"){_ in
          }
        return element.label == textToVerify
    }
    
    func asserTrue(expression:Bool){
        XCTAssertTrue(expression)
    }
    }
