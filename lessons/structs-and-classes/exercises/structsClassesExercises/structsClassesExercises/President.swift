//
//  President.swift
//  structsClassesExercises
//
//  Created by Cris on 9/6/16.
//  Copyright © 2016 Cris. All rights reserved.
//

import Foundation

class President: Person {
    var yearEnteredOffice: Int = 0
    var yearleftOffice = 0

   
    
    var yearsInOffice: Int {
        get {
            return yearleftOffice - yearEnteredOffice
        }
        set(newValue) {
            if yearEnteredOffice != 0{
            yearleftOffice = yearEnteredOffice + newValue
            
            }
            else if yearleftOffice != 0 {
                yearEnteredOffice = yearleftOffice - newValue
            }
            
        }
    }
    
    init(entered: Int, left: Int, name: String, born: Int, died: Int?) {
        self.yearEnteredOffice = entered
        self.yearleftOffice = left
        super.init(name: name, born: born, died: died)
    }
    
    
    //Give president a convienence intialize that takes a year elected (year befre start) and a numbert of terms served
    convenience init(start: Int, terms: Int, name: String, born: Int, died: Int?) {
        self.init(entered: start, left: start + terms * 4, name: name, born: born, died: died)
    }
    
    
    
    func inOffice(year: Int) -> Bool {
        return year >= yearEnteredOffice && year <= yearleftOffice
    }
}