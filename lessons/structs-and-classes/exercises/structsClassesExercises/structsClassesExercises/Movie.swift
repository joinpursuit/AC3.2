//
//  Movie.swift
//  structsClassesExercises
//
//  Created by Marcel Chaucer on 9/6/16.
//  Copyright © 2016 Marcel Chaucer. All rights reserved.
//

import Foundation

class Movie {
    var name: String
    var year = Int()
    var genre = String()
    var cast = [String]()
    var description = String()
    
    //Give Movie a designated initializer that allows you to set each property.
    init(name: String, year: Int, genre: String, cast: [String], description: String) {
        self.name = name
        self.year = year
        self.genre = genre
        self.cast = cast
        self.description = description
    }

//Create a convenience initializer that takes in a dictionary and constructs a Movie object. Refactor (i.e. move) the code that is doing this in main.swift inside this initializer.
    convenience init(movieDict: [String:Any]) {
        if let name = movieDict["name"] as? String,
        year = movieDict["year"] as? Int,
        genre = movieDict["genre"] as? String,
        cast = movieDict ["cast"] as? [String],
            description = movieDict["description"] as? String {
            self.init(name: name, year: year, genre: genre, cast: cast, description: description)
        }
    }
}



