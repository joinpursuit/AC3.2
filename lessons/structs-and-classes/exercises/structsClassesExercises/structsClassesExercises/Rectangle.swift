//
//  Rectangle.swift
//  structsClassesExercises
//
//  Created by Cris on 9/7/16.
//  Copyright © 2016 Cris. All rights reserved.
//

import Foundation

class Rectangle {
    var x = 0.0
    var y = 0.0
    var width = 0.0
    var height = 0.0
    
    
    var xPrime: Double {
        get {
            return x + width
        }
        set(newXPrime){
            width = newXPrime - x
        }
    }

    
    var yPrime: Double {
        get {
            return x + width
        }
        set(newYPrime){
            height = newYPrime - y
        }
    }

    
}