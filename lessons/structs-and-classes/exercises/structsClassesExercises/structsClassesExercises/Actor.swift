//
//  Actor.swift
//  structsClassesExercises
//
//  Created by Simone Grant on 9/6/16.
//  Copyright © 2016 Simone Grant. All rights reserved.
//

import Foundation

class Actor: Person {
    var breakoutYear = 0 //using zero avoids optionals
    var breakoutRole = " "
    


    
    
    init(name: String, breakoutYear: Int, breakoutRole: String) {
//        self.breakoutRole = breakYear
//        self.breakoutYear = breakRole
//        super.init(name: name)
//    }

    
    init(breakYear: Int, breakRole: String, name: String, born: Int, died: Int?) {
        self.breakoutYear = breakYear
        self.breakoutRole = breakRole
        super.init(name: name)
    }
}