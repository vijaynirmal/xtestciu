//
//  UtilityProtocols.swift
//  MiraclePillUITests
//
//  Created by Vijay Nirmal Jeromiyas on 28/11/19.
//  Copyright © 2019 Vijay Nirmal Jeromiyas. All rights reserved.
//

import Foundation
import XCTest

extension XCTestCase {
    func takeScreenShot(name : String) {
        let screenshot = XCUIScreen.main.screenshot()
        let attachment = XCTAttachment(screenshot: screenshot, quality: XCTAttachment.ImageQuality.original)
        attachment.name = "Screenshot-\(name)-\(UIDevice.current.name).png"
        attachment.lifetime = .keepAlways
        add(attachment)
           }
}
