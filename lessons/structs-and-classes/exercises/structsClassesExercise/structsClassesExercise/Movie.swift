//
//  Movie.swift
//  structsClassesExercise
//
//  Created by Victor Zhong on 9/6/16.
//  Copyright © 2016 Victor Zhong. All rights reserved.
//

import Foundation

//Make a Movie.swift file.
//Create a Movie class using variables as existing types with default values.
//Populate an array of Movie objects converted from the familiar array of dictionaries.

enum Genre: String {
	case Action = "action"
	case Animation = "animation"
	case Drama = "drama"
	case Unknown = "unknown"
}

class Movie {
	var name = String()
	var genre = Genre.Unknown
	var year = Int()
	var cast = [Actor()]
	var description = String()
}