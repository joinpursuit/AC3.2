//
//  Actor.swift
//  structsClassesExercises
//
//  Created by Harichandan Singh on 9/6/16.
//  Copyright © 2016 Harichandan Singh. All rights reserved.
//

import Foundation

class Actor : Person {
    
    var breakoutYear: Int
    var breakoutRole: String
    
    init(name: String, born: Int, died: Int?, bYear: Int, bRole: String){
        self.breakoutYear = bYear
        self.breakoutRole = bRole
        super.init(name: name, born: born, died: died)
    }
}