//
//  President.swift
//  structsClassesExercises
//
//  Created by Tong Lin on 9/6/16.
//  Copyright © 2016 Tong Lin. All rights reserved.
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
    
    convenience init(entered: Int, terms: Int, name: String, born: Int, died: Int?) {
        self.init(entered: entered, left: entered + (terms*4), name: name, born: born, died: died)
    }
    
    convenience init(entered: Int, year: Int, name: String, born: Int, died: Int?) {
        self.init(entered: entered, left: entered + year, name: name, born: born, died: died)
    }
    
    convenience init(elecYear: Int, terms: Int, name: String, born: Int, died: Int?) {
        self.init(entered: elecYear+1, left: elecYear+1+(terms*4), name: name, born: born, died: died)
    }
    
    func inOffice(year: Int) -> Bool {
        return year >= yearEnteredOffice && year <= yearLeftOffice
    }
}