//
//  movie.swift
//  structClassesExercises
//
//  Created by Karen Manzanares Fuentes on 9/6/16.
//  Copyright © 2016 Karen Fuentes. All rights reserved.
//

import Foundation

enum Genre : String {
    case Animation = "animation"
    case Action = "action"
    case Drama = "drama"
    }


class Movie {
    var name = String()
    var year = Int()
    var genre = Genre.self
    var cast = [Actor]()
    var description = String()
}



