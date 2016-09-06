//
//  President.swift
//  structsClassesExercise
//
//  Created by Victor Zhong on 9/6/16.
//  Copyright © 2016 Victor Zhong. All rights reserved.
//

import Foundation

class President: Person {
	var yearEnteredOffice = 0
	var yearLeftOffice = 0
	
	func inOffice(year: Int) -> Bool {
		return year >= yearEnteredOffice && year <= yearLeftOffice
	}
}