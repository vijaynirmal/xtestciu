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
    
    func textField(name:String) -> XCUIElement {
        return baseTest.getApp().textFields[name]
    }
    
    func button(name:String) -> XCUIElement {
        return baseTest.getApp().buttons[name]
    }
    
    func label(name:String) -> XCUIElement {
        return baseTest.getApp().staticTexts[name]
    }
   
}
