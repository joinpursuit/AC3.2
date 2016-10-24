//
//  President.swift
//  structsClassesExercises
//
//  Created by Erica Y Stevens on 9/6/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import Foundation

class President: Person {
    var yearEnteredOffice: Int
    var yearLeftOffice: Int
    
    var yearsInOffice: Int {
        get {
            return yearLeftOffice - yearEnteredOffice
        }
        set(newValue) {
            if yearEnteredOffice != 0 {
                yearLeftOffice = yearEnteredOffice + newValue
            }
            else if yearLeftOffice != 0 {
                yearEnteredOffice = yearLeftOffice - newValue
            }
        }
    }
    
    //DESIGNATED INITIALIZER, as indicated by lack of the prefix "convenience"
    
    init(entered: Int, left: Int, name: String, born: Int, died: Int?) {
        self.yearEnteredOffice = entered
        self.yearLeftOffice = left
        super.init(name: name, born: born, died: died)
    }
//An init of a subclass must give values to each of its parameters including those from the superclass
    
    //Give President a convenience initializer that takes a start year and a number of terms served.
    convenience init(start: Int, terms: Int, name: String, born: Int, died: Int?) {
        self.init(entered: start, left: start + (terms * 4), name: name, born: born, died: died )
    }
    
    //Give President a conveniece initializer that takes a start year and a number of years served.
    convenience init(start: Int, numOfYears: Int, name: String, born: Int, died: Int?) {
        self.init(entered: start, left: start + numOfYears, name: name, born: born, died: died)
    }
    
    //Give President a convenience initializer that takes a year elected (year before start) and a number of terms served
    convenience init(yearElected: Int, termsServed: Int, name: String, born: Int, died: Int?) {
        self.init(entered: yearElected, left: (yearElected + 1) + (termsServed * 4 ), name: name, born: born, died: died)
    }
    
    
    func inOffice(year: Int) -> Bool {
        if year >= yearLeftOffice || year < yearEnteredOffice{
            return false
        } else {
            return true
        }
    }
}

//func inOffice(year: Int) -> Bool {
//  year >= yearEnteredOffice && year < yearLeftOffice
//}