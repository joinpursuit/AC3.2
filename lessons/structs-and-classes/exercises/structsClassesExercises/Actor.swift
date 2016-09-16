//
//  Actor.swift
//  structsClassesExercises
//
//  Created by Cris on 9/6/16.
//  Copyright © 2016 Cris. All rights reserved.
//

import Foundation

class Actor: Person {
    
    var breakOutYear: Int
    var breakOutRole: String


init(breakYear: Int, breakRole: String, name: String, born: Int, died: Int?) {
    self.breakOutYear = breakYear
    self.breakOutRole = breakRole
    super.init(name: name, born: born, died: died)
}

}