//
//  President.swift
//  structsClassesExercises
//
//  Created by Erica Y Stevens on 9/6/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import Foundation

class President: Person {
    var yearEnteredOffice = Int()
    var yearLeftOffice = Int()
    
    var yearsInOffice: Int {
        get {
            return yearLeftOffice - yearEnteredOffice
        }
        set(newValue) {
            if yearEnteredOffice != 0 {
                yearLeftOffice = yearEnteredOffice + newValue
            }
            else if yearLeftOffice != 0 {
                yearEnteredOffice = yearLeftOffice - newValue
            }
        }
    }
    
    func inOffice(year: Int) -> Bool {
        if year >= yearLeftOffice || year < yearEnteredOffice{
            return false
        } else {
            return true
        }
    }
}

//func inOffice(year: Int) -> Bool {
//  year >= yearEnteredOffice && year < yearLeftOffice
//}