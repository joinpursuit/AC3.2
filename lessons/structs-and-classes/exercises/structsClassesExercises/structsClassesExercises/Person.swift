//
//  Person.swift
//  structsClassesExercises
//
//  Created by Tong Lin on 9/6/16.
//  Copyright © 2016 Tong Lin. All rights reserved.
//

import Foundation

class Person{
    var name: String
    var yearBorn: Int
    var yearDied: Int?
    
    class var personalStatement: String {
        get {
            return "I am a human being!"
        }
    }
    
    init(name: String, born: Int, died: Int?) {
        self.name = name
        self.yearBorn = born
        self.yearDied = died
    }
}
