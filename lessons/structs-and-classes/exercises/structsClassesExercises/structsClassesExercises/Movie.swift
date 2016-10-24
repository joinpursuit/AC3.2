//
//  Movie.swift
//  structsClassesExercises
//
//  Created by Erica Y Stevens on 9/6/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import Foundation

class Movie {
    var name: String
    var year: Int
    var cast: [Actor]
    var genre: Genre
    var description: String
    
    enum Genre: String {
        case Action = "action"
        case Animation = "animation"
        case Drama = "drama"
    }
    
    init(name: String, year: Int, genre: Genre, cast: [Actor], description: String) {
        self.name = name
        self.year = year
        self.genre = genre
        self.cast = cast
        self.description = description
    }
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
