//
//  Person.swift
//  structsClassesExercises
//
//  Created by Harichandan Singh on 9/6/16.
//  Copyright © 2016 Harichandan Singh. All rights reserved.
//

import Foundation

//class Person {
//    
//    var name = String()
//    var yearBorn = 0
//    var yearDied = 0
//    
//    
//}


class Person {
    var name: String
    var yearBorn: Int
    var yearDied: Int?
    
    init(name: String, born: Int, died: Int?) {
        self.name = name
        self.yearBorn = born
        self.yearDied = died
    }
}
