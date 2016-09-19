//
//  Actor.swift
//  stuctsClassesExercises
//
//  Created by Annie Tung on 9/6/16.
//  Copyright © 2016 Annie Tung. All rights reserved.
//

import Foundation

//Create an Actor class with Person as its parent. Add two fields, breakoutYear and breakoutRole.
class Actor: Person {
    
    var breakoutYear: Int
    var breakoutRole: String 
    
    override class var personalStatement: String { //not the same class, don't need to instance a person, type property,

        get {
            return "I play pretend"
        }
    }
    
    init(name: String, born: Int, died: Int?, breakoutYear: Int, breakoutRole: String) { //adding 2 derived/subclass to actor, adding on to the 3 properties of person
        self.breakoutYear = breakoutYear
        self.breakoutRole = breakoutRole
        super.init(name: name, born: born, died: died) //super is the primary class of person 
    }
}