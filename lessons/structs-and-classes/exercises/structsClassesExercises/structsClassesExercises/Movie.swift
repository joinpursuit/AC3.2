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
    
    convenience init(movie: Dictionary<String,Any>){
        var tupleActor = [(name: String(), born: Int(), died: Int?(), breakoutYear: Int(), breakoutRole: String())]
        //var arrString = [String]()
        var year = 0
        var name = "", genre = "", description = ""
            if let n = movie["name"] as? String,
                y = movie["year"] as? Int,
                g = movie["genre"] as? String,
                cast = movie["cast"] as? [String],
                d = movie["description"] as? String{
                name = n
                year = y
                genre = g
                description = d
                for i in cast{
                    let cc = Actor(name: i, born: 1999, died: nil, breakoutYear: 2011, breakoutRole: "Actor")
                    let actor = (name: cc.name, born: cc.yearBorn, died: cc.yearDied, breakoutYear: cc.breakoutYear, breakoutRole: cc.breakoutRole)
                    tupleActor.append(actor)
                }
            }
        self.init(name: name, year: year, genre: genre, cast: tupleActor, description: description)
    }
}