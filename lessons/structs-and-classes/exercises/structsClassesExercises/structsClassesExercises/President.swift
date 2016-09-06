//
//  President.swift
//  structsClassesExercises
//
//  Created by Tom Seymour on 06/09/2016.
//  Copyright © 2016 Tom Seymour. All rights reserved.
//

import Foundation

class President: Person {
    var yearEnteredOffice = 0
    var yearLeftOffice = 0
    
    func inOffice(year: Int) -> Bool {
        return year >= yearEnteredOffice && year <= yearLeftOffice
    }
}