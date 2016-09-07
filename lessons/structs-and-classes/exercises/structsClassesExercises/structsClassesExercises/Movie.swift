//
//  Movie.swift
//  structsClassesExercises
//
//  Created by Erica Y Stevens on 9/6/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import Foundation

class Movie {
    var name = String()
    var year = Int()
    var genre = String()
    var cast = [String]()
    var castString: String {
        get {
            return cast.joinWithSeparator(", ")
        }
    }
    var description = String()
    
    
}

//Ana's Solution:
//get{
//    var string = ""
//    for i in 0..<cast.count {
//        if i == cast.count - 1 {
//            string += "and \(cast[i].name)"
//        }else{
//            string += "\(cast[i].name), "
//        }
//    }
//    return string
//}
