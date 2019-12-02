//
//  HomePage.swift
//  MiraclePillUITests
//
//  Created by Vijay Nirmal Jeromiyas on 29/11/19.
//  Copyright © 2019 Vijay Nirmal Jeromiyas. All rights reserved.
//

import Foundation
import XCTest

class HomePage : BasePage {
    
    func getFullNameTextField() -> XCUIElement{
    return textField(name: "fullnameTxtBox")
    }
    
    func getAddressTextField() -> XCUIElement{
        return textField(name: "addressTxtBox")
    }
    
    func getZipTextField() -> XCUIElement{
        return textField(name: "zipPostalCodeTxtBox")
    }
    
    func getCoutryPickerBtn() -> XCUIElement{
        return button(name: "countryPickerBtn")
    }
    
    func tapCoutryPicker(value:String){
        getApp().pickerWheels.element.adjust(toPickerWheelValue: value)
    }
    
    func tapBuyNowBtn() {
        XCUIApplication().images["buyNowBtn"].tap()
    }
    
    
}
