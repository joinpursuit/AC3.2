//
//  President.swift
//  structsClassesExercises
//
//  Created by Tong Lin on 9/6/16.
//  Copyright © 2016 Tong Lin. All rights reserved.
//

import Foundation

class President: Person{
    var yearEnteredOffice = 0
    var yearLeftOffice = 0
    
    func inOffice(year: Int) ->Bool{
        return (year >= yearEnteredOffice && year <= yearLeftOffice)
    }
}