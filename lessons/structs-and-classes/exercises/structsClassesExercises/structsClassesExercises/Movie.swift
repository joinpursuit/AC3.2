//
//  Movie.swift
//  structsClassesExercises
//
//  Created by Harichandan Singh on 9/6/16.
//  Copyright © 2016 Harichandan Singh. All rights reserved.
//

import Foundation

class Movie {
    
    enum Genre: String {
        case Animation = "animation"
        case Action = "action"
        case Drama = "drama"
        case Unknown = "unknown"
    }
    
    
//    func genreGenerator(genre: String) -> Genre {
//        switch genre {
//        case "animation":
//            return .Animation
//        case "action":
//            return .Action
//        case "drama":
//            return .Drama
//        default:
//            return .Unknown
//        }
//    }
    
    
    var name: String
    var year: Int
    var genre: String
    var cast: [String]
    var description: String
    
    
    init(name: String, year: Int, genre: String, cast: [String], description: String) {
        self.name = name
        self.year = year
        self.genre = genre
        self.cast = cast
        self.description = description
    }
    
    convenience init?(movie: [String:Any]) {
        if let name = movie["name"] as? String, year = movie["year"] as? Int, genre = movie["genre"] as? String, cast = movie["cast"] as? [String], description = movie["description"] as? String {
            self.init(name: name, year: year, genre: genre, cast: cast, description: description)
        } else {
            return nil
        }
    }
    
//    convenience init (movies: [String:Any]){
//        if let name = movies["name"] as? String, year = movies["year"] as? Int, genre = movies["genre"] as? String, cast = movies["cast"] as? [String], description = movies["description"] as? String{
//            var arrayOfActors : [Actor] = []
//            
//            for actorName in cast{
//                let actor = Actor(breakoutYear: 1990, breakoutRole: "Role", name: actorName, born: 1980, died: nil)
//                arrayOfActors.append(actor)
//            }
//            self.init(name: name, year: year, genre: genre, cast: arrayOfActors, description: description)
//        } else {
//            self.init(name: "", year: 0, genre: "None", cast: [], description: "")
//        }
//    }
    
//    var castString: String {
//        get {
//            var str = String()
//            for i in 0..<cast.count {
//                if i == cast.count - 1 {
//                    str += "and \(cast[i].name)"
//                } else{
//                    str += "\(cast[i].name), "
//                }
//            }
//            return str
//        }
//    }
    
//    func castStringtoActorClass(inputCast: [String]) -> [Actor] {
//        var cast = [Actor]()
//        
//        for person in inputCast {
//            let actor = Actor(name: person, born: <#T##Int#>, died: <#T##Int?#>, bYear: <#T##Int#>, bRole: <#T##String#>)
//            cast.append(actor)
//        }
//        return cast
//    }
    
}

