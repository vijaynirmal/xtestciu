//
//  SuccessPage.swift
//  MiraclePillUITests
//
//  Created by Vijay Nirmal Jeromiyas on 29/11/19.
//  Copyright © 2019 Vijay Nirmal Jeromiyas. All rights reserved.
//

import Foundation
import XCTest

class SuccessPage : BasePage{
    
    func getsuccessTxt() -> XCUIElement{
        return label(name: "successTxt")
    }
}
