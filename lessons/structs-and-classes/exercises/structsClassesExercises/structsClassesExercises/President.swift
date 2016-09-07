//
//  President.swift
//  structsClassesExercises
//
//  Created by Marcel Chaucer on 9/6/16.
//  Copyright © 2016 Marcel Chaucer. All rights reserved.
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
    //Designated initializer
    init(entered: Int, left: Int, name: String, born: Int, died: Int?) {
        self.yearEnteredOffice = entered
        self.yearLeftOffice = left
        super.init(name: name, born: born, died: died)
    }
     //Give President a convenience initializer that takes a start year and a number of terms served.    
    convenience init(start: Int, terms: Int, name: String, born: Int, died: Int?) {
        self.init(entered: start, left: start + terms * 4, name: name, born: born, died: died)
    //Give President a convenience initializer that takes a start year and a number of years served.
//        convenience init (start: int, left: Int, served: Int, name: String, born: Int, died: Int?) {
//            self.init(entered: start, left: start + terms * 4, served: left - entered, name: name, born: born, died: died)
//        }
//    }
    
    func inOffice(year: Int) -> Bool {
        return year >= yearEnteredOffice && year <= yearLeftOffice
    }
    }}