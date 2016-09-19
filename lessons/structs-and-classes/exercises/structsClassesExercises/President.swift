//
//  President.swift
//  structsClassesExercises
//
//  Created by Harichandan Singh on 9/6/16.
//  Copyright © 2016 Harichandan Singh. All rights reserved.
//

import Foundation

class President : Person {
    
    var yearEnteredOffice: Int
    var yearLeftOffice: Int

    static let oath = "I do solemnly swear (or affirm) that I will faithfully execute the Office of President of the United States, and will to the best of my ability, preserve, protect and defend the Constitution of the United States."
    
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
    
    init(entered: Int, left: Int, name: String, born: Int, died: Int?) {
        self.yearEnteredOffice = entered
        self.yearLeftOffice = left
        super.init(name: name, born: born, died: died)
    }
    
    convenience init(start: Int, terms: Int, name: String, born: Int, died: Int?) {
        self.init(entered: start, left: start + terms * 4, name: name, born: born, died: died)
    }
    
    convenience init(start: Int, years: Int, name: String, born: Int, died: Int?) {
        self.init(entered: start, left: start + years, name: name, born: born, died: died)
    }
    
    convenience init(yearElected: Int, terms: Int, name: String, born: Int, died: Int?) {
        self.init(entered: yearElected + 1, left: (yearElected + 1) + (terms * 4), name: name, born: born, died: died)
    }
    
    func inOffice(year: Int) -> Bool {
        return year >= yearEnteredOffice && year <= yearLeftOffice
    }
}