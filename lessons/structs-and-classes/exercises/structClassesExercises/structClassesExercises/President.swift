//
//  President.swift
//  structClassesExercises
//
//  Created by Karen Manzanares Fuentes on 9/6/16.
//  Copyright © 2016 Karen Fuentes. All rights reserved.
//

import Foundation

import Foundation
class President:Person {
    var yearEnteredOffice = 0
    var yearLeftOffice = 0
    
    func inOffice(year:Int) -> Bool {
        return year >= yearEnteredOffice && year <= yearLeftOffice
    }
}


