//
//  Actor.swift
//  structsClassesExercises
//
//  Created by Erica Y Stevens on 9/6/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import Foundation

class Actor: Person {
    var breakoutYear = Int()
    var breakoutRole = String()
    
    init(year: Int, role: String, name: Actor, born: Int, died: Int?) {
        self.breakoutRole = role
        self.breakoutYear = year
        super.init(name: name, born: born, died: died)
    }
}