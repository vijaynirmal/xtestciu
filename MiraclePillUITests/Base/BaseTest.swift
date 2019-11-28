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
        app.terminate()
        super.tearDown()
    }
    
    func getApp() -> XCUIApplication {
        return self.app
    }
}
