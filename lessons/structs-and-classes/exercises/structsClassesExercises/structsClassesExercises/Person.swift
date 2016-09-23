//
//  Person.swift
//  structsClassesExercises
//
//  Created by Simone Grant on 9/6/16.
//  Copyright © 2016 Simone Grant. All rights reserved.
//

import Foundation

    class Person {
        var name: String
        var yearBorn: Int
        var yearDied: Int?
        
    
    class var personalStatement: String {
        get {
            return "I am a human being"
        }
    }
    //need to define initializers or errors will occur & must be last
        init(name: String, born: Int, died: Int?) {
        self.name = name
        self.yearBorn = born
        self.yearDied = died
    }

}

  