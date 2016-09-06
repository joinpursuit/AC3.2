//
//  President.swift
//  structsClassesExercises
//
//  Created by Cris on 9/6/16.
//  Copyright © 2016 Cris. All rights reserved.
//

import Foundation

class President: Person {
    var yearEnteredOffice = 0
    var yearleftOffice = 0

    func inOffice(year: Int) -> Bool {
        return year >= yearEnteredOffice && year <= yearleftOffice
    }
}