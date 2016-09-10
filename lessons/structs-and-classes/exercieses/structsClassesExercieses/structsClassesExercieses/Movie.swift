//
//  Movie.swift
//  structsClassesExercieses
//
//  Created by Rukiye Karadeniz on 9/6/16.
//  Copyright © 2016 Rukiye Karadeniz. All rights reserved.
//

import Foundation


//Create a Movie class using variables as existing types with default values.

//class VideoMode {
//    var resolution = Resolution()
//    var interlaced = false
//    var frameRate = 0.0
//    var name: String?
//}

class Movie {
    
    //719 record 43 min creating movie class
    
//    
    
        var name = String()
        var year = Int()
        var genre = String()
        var cast = [Actor]()
        var description = String()
    
    //annas code
    var castString: String{
        
        get{
            var string = ""
            
            for i in 0..<cast.count {
                if i == cast.count - 1 {
                    string += "and \(cast[i].name)"
                }
                else{
                    string += "\(cast[i].name), "
                }
            }
            return string
        }
    }
}

//let oneMovie = movieArray[1]
//print(oneMovie.classString)