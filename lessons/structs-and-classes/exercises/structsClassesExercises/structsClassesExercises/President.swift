//
//  President.swift
//  structsClassesExercises
//
//  Created by Simone Grant on 9/6/16.
//  Copyright © 2016 Simone Grant. All rights reserved.
//

import Foundation

class President: Person {
    static let oath = "I do solemnly swear (or affirm) that I will faithfully execute the Office of President of the United States, and will to the best of my ability, preserve, protect and defend the Constitution of the United States."
    
    var yearEnteredOffice: Int
    var yearLeftOffice: Int
    
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
    
    init(entered: Int, left: Int, name: String, born: Int, died: Int?) {
        self.yearEnteredOffice = entered
        self.yearLeftOffice = left
        super.init(name: name, born: born, died: died)
    }
    
    //Five pres convenience initializer that takes a start year and a number of terms served
    convenience init(start: Int, name: String, terms: Int, born: Int, died: Int?) {
        self.init(entered: start, left: start + terms * 4, name: name, born: born, died: died)
    }
    
    convenience init(start: Int, years: Int, name: String, born: Int, died: Int?) {
        self.init(entered: start, left: start + years, name: name, born: born, died: died)
    }
    
//    Give President a convenience initializer that takes a year elected (year before start) and a number of terms served
    convenience init(start: Int, years: Int, name: String, born: Int, died: Int?, terms: Int, elected: Int) {
        self.init(start: elected + 1, years: years, name: name, born: born, died: died, terms: terms, elected: elected)
    }
    
    func inOffice(year: Int) -> Bool {
        return year >= yearEnteredOffice && year <= yearLeftOffice
    }
}

