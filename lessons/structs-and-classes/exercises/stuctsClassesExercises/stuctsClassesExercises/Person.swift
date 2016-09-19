//
//  Person.swift
//  stuctsClassesExercises
//
//  Created by Annie Tung on 9/6/16.
//  Copyright © 2016 Annie Tung. All rights reserved.
//

import Foundation

//Create a Person class
class Person {
    
    var name: String
    var yearBorn: Int
    var yearDied: Int?
    
    class var personalStatement: String {
        get {
            return "I am a human being"
        }
    }
    
    init(name: String, born: Int, died: Int?) {
        self.name = name
        self.yearBorn = born
        self.yearDied = died
    }
}

//    class var personalStatement: String {
//        get {
//            
//        }
//    }
//}