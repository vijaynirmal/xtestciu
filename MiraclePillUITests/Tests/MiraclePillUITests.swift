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
    var successPage = SuccessPage()
    
    
        func testExample() {
        
            XCUIDevice.shared.orientation = .faceUp
            
            assertExists(element: homePage.getFullNameTextField())
            homePage.getFullNameTextField().tap()
            homePage.getFullNameTextField().typeText("Vijay")
            
            assertExists(element: homePage.getAddressTextField())
            homePage.getAddressTextField().tap()
            homePage.getAddressTextField().typeText("Prisha Homes")
            
            
            tapDoneBtn()
            
            assertExists(element: homePage.getZipTextField())
            homePage.getZipTextField().tap()
            homePage.getZipTextField().typeText("600100")
            
            tapDoneBtn()
            
            homePage.tapBuyNowBtn()
            
            assertExists(element: successPage.getsuccessTxt())
            
            asserTrue(expression:verifyLabelTxt(element: successPage.getsuccessTxt(), textToVerify: "Order Successfully Placed"))
            
            
    }

}
