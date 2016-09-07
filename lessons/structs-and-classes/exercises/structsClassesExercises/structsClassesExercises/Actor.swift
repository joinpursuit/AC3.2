//
//  Actor.swift
//  structsClassesExercises
//
//  Created by Marcel Chaucer on 9/6/16.
//  Copyright © 2016 Marcel Chaucer. All rights reserved.
//

import Foundation

class Actor: Person {
    class var personalStatement: String {
        get {
            return "I play pretend"
        }
    }
    var breakoutYear = 0
    var breakoutRole = String()
    
    init(yearBrokeOut: Int, roleBrokeOut: String, name: String, born: Int, died: Int?) {
        self.breakoutYear = yearBrokeOut
        self.breakoutRole = roleBrokeOut
        super.init(name: name, born: born, died: died)

}
}
