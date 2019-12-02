//
//  DataManager.swift
//  MiraclePillUITests
//
//  Created by Vijay Nirmal Jeromiyas on 01/12/19.
//  Copyright © 2019 Vijay Nirmal Jeromiyas. All rights reserved.
//

import Foundation
import XCTest

class DataManager {
    
    func jsonParser(fileName:String, key:String) -> String{
        var value = String()
        var dict = [String:String]()
        var errorString = String()
        
        guard let fileUrl = Bundle.main.url(forResource: "/PlugIns/MiraclePillUITests.xctest/" + fileName, withExtension: "json") else {
            errorString = "File could not be located at the given url"
            print(errorString)
            return errorString
        }
        
        do {
            // Get data from file
            let data = try Data(contentsOf: fileUrl)
            
            // Decode data to a Dictionary<String, Any> object
          let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            
            dict = (json as? [String:String])!
            value = dict[key]!

        } catch {
            // Print error if something went wrong
            print("Error: \(error)")
        }
        
        return value
    }
    
    
}
