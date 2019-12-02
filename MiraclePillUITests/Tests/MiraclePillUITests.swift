//
//  MiraclePillUITests.swift
//  MiraclePillUITests
//
//  Created by Vijay Nirmal Jeromiyas on 23/11/19.
//  Copyright © 2019 Vijay Nirmal Jeromiyas. All rights reserved.
//

import XCTest

class MiraclePillUITests: BaseTest {

        func testExample() {
        
            XCUIDevice.shared.orientation = .faceUp
            
            assertExists(element: homePage.getFullNameTextField())
            homePage.getFullNameTextField().tap()
            homePage.getFullNameTextField().typeText(datamanager.jsonParser(fileName: "HomePage", key: "userName"))
           
            assertExists(element: homePage.getAddressTextField())
            homePage.getAddressTextField().tap()
            homePage.getAddressTextField().typeText(datamanager.jsonParser(fileName: "HomePage", key: "address"))
            
            
            tapDoneBtn()
            
            assertExists(element: homePage.getCoutryPickerBtn())
            homePage.getCoutryPickerBtn().tap()
            
            let country = datamanager.jsonParser(fileName: "HomePage", key: "country")
            homePage.tapCoutryPicker(value: country)
            
              asserTrue(expression:verifyLabelTxt(element: homePage.getCoutryPickerBtn(), textToVerify: country))
            
            assertExists(element: homePage.getZipTextField())
            homePage.getZipTextField().tap()
            homePage.getZipTextField().typeText(datamanager.jsonParser(fileName: "HomePage", key: "zipCode"))
            
            tapDoneBtn()
            
            homePage.tapBuyNowBtn()
            
            assertExists(element: successPage.getsuccessTxt())
            
            asserTrue(expression:verifyLabelTxt(element: successPage.getsuccessTxt(), textToVerify: "Order Successfully Placed"))
            
            
    }

}
