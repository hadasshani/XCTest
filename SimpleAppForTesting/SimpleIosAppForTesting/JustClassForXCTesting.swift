//
//  JustClassForXCTesting.swift
//  SimpleAppForTesting
//
//  Created by Igor Gindin on 17/10/2017.
//  Copyright © 2017 Perfecto Mobile. All rights reserved.
//

//import Foundation

class JustClassForXCTesting {
    
    var str: String
    var num: Int
    
    init?(str: String, num: Int) {
        guard !str.isEmpty else {
            return nil
        }
        
        guard (num >= 0) && (num <= 5) else {
            return nil
        }
        
        self.str = str
        self.num = num
    }
    
}
