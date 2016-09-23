//
//  Movie.swift
//  structsClassesExercises
//
//  Created by Simone Grant on 9/6/16.
//  Copyright © 2016 Simone Grant. All rights reserved.
//

import Foundation

class Movie {    // create/initialize a class called movie to add values
    var name = String() // or " "
    var year = Int() // 0
    var genre = String() // " "
    var cast = [String]() // [ ]
    var description = String() // " "
    
    var classString: String{
        get{
            var string = ""
            for i in 0..<cast.count {
                if i == cast.count - 1 {
                    string += "and \(cast[i])"
                }else{
                    string += "\(cast[i]), "
                }
            }
            return string
        }
    }
}

let oneMovie = movieArray[1]
//print(oneMovie.classString)




