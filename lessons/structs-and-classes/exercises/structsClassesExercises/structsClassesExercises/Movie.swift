//
//  Movie.swift
//  structsClassesExercises
//
//  Created by Cris on 9/6/16.
//  Copyright © 2016 Cris. All rights reserved.
//

import Foundation



class Movie {
    
//    enum Genre: String{
//    case Animation = "Animation"
//    case Action = "Action"
//    case Drama = "Drama"
//    }
    
    
    
    var name: String
    var year: Int
    var genre: String
    var cast: [Actor]
    var description: String
    
    
    var castString: String {
        get {
            var string = ""
            for i in 0..<cast.count{
                if i == cast.count - 1 {
                    string += "and \(cast[i].name)"
                } else {
                    string += "\(cast[i].name)"
                }
            }
         return string
    }
}

    init(name: String, year: Int, genre: String, cast: [Actor], description: String){
         self.name = name
        self.year = year
        self.genre = genre
        self.cast = cast
        self.description = description
       
    }

    convenience init(movieDict: [String: AnyObject]){
        let cast = movieDict["cast"] as! [String]
        var actors = [Actor]()
        for actor in cast {
            let newActor = Actor(breakYear: 2001, breakRole: "Harry Potter", name: actor, born: 1980, died: nil)
            actors.append(newActor)
        }
            self.init(name : movieDict["name"] as! String, year : movieDict["year"] as! Int, genre : movieDict["genre"] as! String, cast: actors, description : movieDict["description"] as! String)
    }
    

}


