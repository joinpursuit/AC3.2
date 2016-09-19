//
//  President.swift
//  stuctsClassesExercises
//
//  Created by Annie Tung on 9/6/16.
//  Copyright © 2016 Annie Tung. All rights reserved.
//

import Foundation

//Create a President class with Person as its parent. Add two fields, yearEnteredOffice and yearLeftOffice.
class President: Person {
    static let oath = "I do solemnly swear (or affirm) that I will faithfully execute the Office of President of the United States, and will to the best of my ability, preserve, protect and defend the Constitution of the United States."
    
    var yearEnteredOffice: Int
    var yearLeftOffice: Int
    
    //Instance method: Let's create a President class to illustrate an instance method inOffice(Int) -> Bool.
    
    var yearsInOffice: Int {
        get {
            return yearLeftOffice - yearEnteredOffice
        }
        set(newval) {
            if yearEnteredOffice != 0 {
                yearLeftOffice = yearEnteredOffice + newval
            }
            else if yearLeftOffice != 0 {
                yearEnteredOffice = yearLeftOffice - newval
            }
        }
    }
    //desinated initializer because it doesn't have the prefixed convenience
    init(entered: Int, left: Int, name: String, born: Int, died: Int?) {
        self.yearEnteredOffice = entered
        self.yearLeftOffice = left
        super.init(name: name, born: born, died: died)
    }
    
    //1. Give President a convenience initializer that takes a start year and a number of terms served.
    convenience init(start: Int, terms: Int, name: String, born: Int, died: Int?) {
            //we don't need to give the object the information, we can call it in our convenience initializer.
        self.init(entered: start, left: start + terms * 4, name: name, born: born, died: died)
    } //because president derives from person, we can't avoid passing them in
    
    //2. Give President a convenience initializer that takes a start year and a number of years served.
    convenience init(start: Int, years: Int, name: String, born: Int, died: Int?) {
        self.init(entered: start, left: start + years, name: name, born: born, died: died)
    }
    //3. Give President a convenience initializer that takes a year elected (year before start) and a number of terms served.
    convenience init(yearElected: Int, terms: Int, name: String, born: Int, died: Int?) {
        self.init(entered: yearElected + 1, left: yearElected + 1 + (terms * 4), name: name, born: born, died: died)
        
    }
    
    func inOffice(year: Int) -> Bool {
        return year >= yearEnteredOffice && year <= yearLeftOffice
    }

}


////Properties
//var yearsInOffice: Int {
//get {
//    return yearLeftOffice - yearEnteredOffice
//}
//}
//
//let io = georgeWashington.yearsInOffice
//
////
//var yearsInOffice: Int {
//get {
//    return yearLeftOffice - yearEnteredOffice
//}
//set(newValue) {
//    yearLeftOffice = yearEnteredOffice + newValue
//}
//}
