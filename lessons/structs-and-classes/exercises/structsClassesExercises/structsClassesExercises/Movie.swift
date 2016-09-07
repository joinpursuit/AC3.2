//
//  Movie.swift
//  structsClassesExercises
//
//  Created by Tong Lin on 9/6/16.
//  Copyright © 2016 Tong Lin. All rights reserved.
//

import Foundation

class Movie{
    var name: String
    var year: Int
    var genre: String
    var cast = [(name: String(), born: Int(), died: Int?(), breakoutYear: Int(), breakoutRole: String())]
    var description: String
    
    init (name: String, year: Int, genre: String, cast: [(name: String, born: Int, died: Int?, breakoutYear: Int, breakoutRole: String)], description: String){
        self.name = name
        self.year = year
        self.genre = genre
        self.cast = cast
        self.description = description
    }
    
    convenience init(name: String, year: Int, genre: String, cast: [String], description: String){
        var tupleActor = [(name: String(), born: Int(), died: Int?(), breakoutYear: Int(), breakoutRole: String())]
        for i in cast{
            let cc = Actor(name: i, born: 1999, died: nil, breakoutYear: 2011, breakoutRole: "Actor")
            let actor = (name: cc.name, born: cc.yearBorn, died: cc.yearDied, breakoutYear: cc.breakoutYear, breakoutRole: cc.breakoutRole)
            tupleActor.append(actor)
        }
        self.init(name: name, year: year, genre: genre, cast: tupleActor, description: description)
    }
    
//    var castString: String{
//        get{
//            return "\(cast[0].name), \(cast[1].name) and \(cast[2].name)"
//        }
//        set(actorString){
//            let temp = actorString.componentsSeparatedByString(", ")
//            for name in temp{
//                let tempActor = Actor()
//                tempActor.name = name
//                cast.append(tempActor)
//            }
//        }
//    }
};