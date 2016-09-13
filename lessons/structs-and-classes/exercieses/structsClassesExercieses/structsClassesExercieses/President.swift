//
//  President.swift
//  structsClassesExercieses
//
//  Created by Rukiye Karadeniz on 9/6/16.
//  Copyright © 2016 Rukiye Karadeniz. All rights reserved.
//

import Foundation

class President: Person {

    var yearEnteredOffice = 0
    var yearLeftOffice = 0
    
    
    // instance method
    func inOffice(year: Int) -> Bool {
    
        return year > yearEnteredOffice && year <= yearLeftOffice  // we were using if but return is shorter
        
        
    }
}


