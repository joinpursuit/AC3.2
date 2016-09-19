//
//  Movie.swift
//  StuctsClassesExercises
//
//  Created by Annie Tung on 9/6/16.
//  Copyright © 2016 Annie Tung. All rights reserved.
//

import Foundation

//Make the genre field in Movie of type Genre, an enumeration.
enum Genre: String { //converting string into enum
    case Animation = "animation"
    case Action = "action"
    case Drama = "drama"
    case None = "none"
}

class Movie {
    var name: String
    var year: Int
    var genre: Genre ////setting it to optional so it could return nil or something
    var cast: [Actor]
    var castString: String {
        get {
            var string = ""
            for i in 0..<cast.count {
                if i == cast.count - 1 {
                    string += "and \(cast[i].name)."
            }
            else {
                    string += "\(cast[i].name),"
                }
            }
        return string
    }
}
//1. Give Movie a designated initializer that allows you to set each property.
    init(name: String, year: Int, genre: Genre, cast: [Actor]/*, castString: String*/) {
        self.name = name
        self.year = year
        self.genre = genre
        self.cast = cast
    }
//2. Create a convenience initializer that takes in a dictionary and constructs a Movie object. Refactor (i.e. move) the code that is doing this in main.swift inside this initializer.
    convenience init(name: String, year: Int, genre: Genre, cast: [Actor], description: String) {
        self.init()
    }

    var description = String()
}

////Exercise: Write a computed property castString` on Movie that prints the list of actors separated by commas, as we did earlier. It only needs a getter. Challenge: write a setter that takes a string
