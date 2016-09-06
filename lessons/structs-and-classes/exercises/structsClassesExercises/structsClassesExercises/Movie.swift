//
//  Movie.swift
//  structsClassesExercises
//
//  Created by Cris on 9/6/16.
//  Copyright © 2016 Cris. All rights reserved.
//

import Foundation



class Movie {
    
    enum Genre: String{
    case Animation = "Animation"
    case Action = "Action"
    case Drama = "Drama"
    }
    
    
    
    var name = String()
    var year = Int()
    
    func typeOfGenre(genre: String) -> String{
    if let genre = Genre(rawValue: "Animation"){
        switch genre{
        case .Animation:
            return "Animation"
        case .Action:
            return "Action"
        case .Drama:
            return "Drama"
        }
    }
       return typeOfGenre(genre)
    }
    var genre = String
    var cast = [Actor]()
    var description = String()
}


