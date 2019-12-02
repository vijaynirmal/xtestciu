//
//  BasePage.swift
//  MiraclePillUITests
//
//  Created by Vijay Nirmal Jeromiyas on 29/11/19.
//  Copyright © 2019 Vijay Nirmal Jeromiyas. All rights reserved.
//

import Foundation
import XCTest

class BasePage {
    
    lazy var baseTest = BaseTest()
    lazy var datamanager = DataManager()
    
    
    func textField(name:String) -> XCUIElement {
        return getApp().textFields[name]
    }
    
    func button(name:String) -> XCUIElement {
        return getApp().buttons[name]
    }
    
    func label(name:String) -> XCUIElement {
        return getApp().staticTexts[name]
    }
   
    func getApp() -> XCUIApplication {
        return baseTest.getApp()
    }
}
