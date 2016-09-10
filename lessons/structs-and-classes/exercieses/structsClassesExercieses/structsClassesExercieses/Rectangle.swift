//
//  Rectangle.swift
//  structsClassesExercieses
//
//  Created by Rukiye Karadeniz on 9/7/16.
//  Copyright © 2016 Rukiye Karadeniz. All rights reserved.
//

import Foundation

class Rectangle {
    
    var x = 0.0
    var y = 0.0
    var width = 0.0
    var height = 0.0
    
    
    var xPrime: Double {                //lower right of rectangle
    
        get{
            return x + width }
        set(newXPrime){
         width = newXPrime - x
        
        }
        
    }
    
    
    var yPrime: Double {                //lower right of rectangle
        
        get{
            return y + height }
        
        set(newXPrime){
            height = newXPrime - y
            
        }
        
    }

}


