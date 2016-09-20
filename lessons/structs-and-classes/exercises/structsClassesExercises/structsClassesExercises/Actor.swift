//
//  Actor.swift
//  structsClassesExercises
//
//  Created by Tong Lin on 9/6/16.
//  Copyright © 2016 Tong Lin. All rights reserved.
//

import Foundation

class Actor: Person{
    var breakoutYear: Int
    var breakoutRole: String
    
    init(name: String, born: Int, died: Int?, breakoutYear: Int, breakoutRole: String) {
        self.breakoutYear = breakoutYear
        self.breakoutRole = breakoutRole
        super.init(name: name, born: born, died: died)
    }
}