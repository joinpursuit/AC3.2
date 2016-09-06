//
//  main.swift
//  structsClassesExercises
//
//  Created by Tom Seymour on 06/09/2016.
//  Copyright © 2016 Tom Seymour. All rights reserved.
//

import Foundation

var movies: [[String:Any]] = [
    [
        "name": "Minions",
        "year": 2015,
        "genre": "animation",
        "cast": ["Sandra Bullock", "Jon Hamm", "Michael Keaton"],
        "description": "Evolving from single-celled yellow organisms at the dawn of time, Minions live to serve, but find themselves working for a continual series of unsuccessful masters, from T. Rex to Napoleon. Without a master to grovel for, the Minions fall into a deep depression. But one minion, Kevin, has a plan."
    ],
    [
        "name": "Shrek",
        "year": 2001,
        "genre": "animation",
        "cast": ["Mike Myers", "Eddie Murphy", "Cameron Diaz"],
        "description": "Once upon a time, in a far away swamp, there lived an ogre named Shrek whose precious solitude is suddenly shattered by an invasion of annoying fairy tale characters. They were all banished from their kingdom by the evil Lord Farquaad. Determined to save their home -- not to mention his -- Shrek cuts a deal with Farquaad and sets out to rescue Princess Fiona to be Farquaad\"s bride. Rescuing the Princess may be small compared to her deep, dark secret."
    ],
    [
        "name": "Zootopia",
        "year": 2016,
        "genre": "animation",
        "cast": ["Ginnifer Goodwin", "Jason Bateman", "Idris Elba"],
        "description": "From the largest elephant to the smallest shrew, the city of Zootopia is a mammal metropolis where various animals live and thrive. When Judy Hopps becomes the first rabbit to join the police force, she quickly learns how tough it is to enforce the law."
    ],
    [
        "name": "Avatar",
        "year": 2009,
        "genre": "action",
        "cast": ["Sam Worthington", "Zoe Saldana", "Sigourney Weaver"],
        "description": "On the lush alien world of Pandora live the Na\"vi, beings who appear primitive but are highly evolved. Because the planet\"s environment is poisonous, human/Na\"vi hybrids, called Avatars, must link to human minds to allow for free movement on Pandora. Jake Sully, a paralyzed former Marine, becomes mobile again through one such Avatar and falls in love with a Na\"vi woman. As a bond with her grows, he is drawn into a battle for the survival of her world."
    ],
    [
        "name": "The Dark Knight",
        "year": 2008,
        "genre": "action",
        "cast": ["Christian Bale", "Heath Ledger", "Aaron Eckhart"],
        "description": "With the help of allies Lt. Jim Gordon and DA Harvey Dent, Batman has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism."
    ],
    [
        "name": "Transformers",
        "year": 2007,
        "genre": "action",
        "cast": ["Shia LaBeouf", "Megan Fox", "Josh Duhamel"],
        "description": "The fate of humanity is at stake when two races of robots, the good Autobots and the villainous Decepticons, bring their war to Earth. The robots have the ability to change into different mechanical objects as they seek the key to ultimate power. Only a human youth, Sam Witwicky can save the world from total destruction."
    ],
    [
        "name": "Titanic",
        "year": 1997,
        "genre": "drama",
        "cast": ["Leonardo DiCaprio", "Kate Winslet", "Billy Zane"],
        "description": "The ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built. She was the most luxurious liner of her era -- the \"ship of dreams\" -- which ultimately carried over 1,500 people to their death in the ice cold waters of the North Atlantic in the early hours of April 15, 1912."
    ],
    [
        "name": "The Hunger Games",
        "year": 2012,
        "genre": "drama",
        "cast": ["Jennifer Lawrence", "Josh Hutcherson", "Liam Hemsworth"],
        "description": "Katniss Everdeen voluntarily takes her younger sister\"s place in the Hunger Games, a televised competition in which two teenagers from each of the twelve Districts of Panem are chosen at random to fight to the death."
    ],
    [
        "name": "American Sniper",
        "year": 2014,
        "genre": "drama",
        "cast": ["Bradley Cooper", "Sienna Miller", "Kyle Gallner"],
        "description": "Navy S.E.A.L. sniper Chris Kyle\"s pinpoint accuracy saves countless lives on the battlefield and turns him into a legend. Back home to his wife and kids after four tours of duty, however, Chris finds that it is the war he can\"t leave behind."
    ]
]


enum Genre: String {
    case Animation = "animation"
    case Action = "action"
    case Drama = "drama"
    case UnknownGenre = "unknownGenre"
}

func genreGenerator(genre: String) -> Genre {
    switch genre {
    case Genre.Animation.rawValue:
        return .Animation
    case Genre.Action.rawValue:
        return .Action
    case Genre.Drama.rawValue:
        return .Drama
    default:
        return .UnknownGenre
    }
}

var movieArray = [Movie]()

for m in movies {
    if let name = m["name"] as? String, year = m["year"] as? Int, cast = m["cast"] as? [String], genre = m["genre"] as? String, description = m["description"] as? String {
        
        let movie = Movie()
        movie.name = name
        movie.year = year
        movie.genre = genreGenerator(genre)
        movie.description = description
        
        movieArray.append(movie)
        
        for movieStar in cast {
            let actor = Actor()
            actor.name = movieStar
            movie.cast.append(actor)
        }
        
    }
}

//dump(movieArray)


let presidentData = ["1993, 2000, Bill Clinton", "2001, 2008, George W. Bush", "2009, 2016, Barack Obama"]

var presidentsByYear = [Int: String]()
var potusArray: [President] = []

for presiInfo in presidentData {
    var x = presiInfo.componentsSeparatedByString(", ")
    if let start = Int(x[0]), finish = Int(x[1]){
        let potus = President()
        potus.name = x[2]
        potus.yearEnteredOffice = start
        potus.yearLeftOffice = finish
        potusArray.append(potus)
        
        for i in start...finish {
            if potus.inOffice(i) {
              presidentsByYear[i] = potus.name
            }
        }
    }
}

//dump(potusArray)
//dump(presidentsByYear)


//Print the name of the first movie.
//

print(movieArray[0].name)


//Print a list of all movie names, preferably on one line.
//

for movie in movieArray {
    print("\(movie.name), ", terminator: "")
}
print("")

//Print a list of all movie years and names as follows: 2015: Minions 2001: Shrek . . .
//

for movie in movieArray {
    print("\(movie.year): \(movie.name)")
}

//Iterate over all movies. Inside the loop use switch on genre. Print each title and add an appropriate emoji to represent its genre
//

for movie in movieArray {
    switch movie.genre {
    case .Animation:
        print("\(movie.name) \u{1F52B}")
    case .Drama:
        print("\(movie.name) \u{1F622}")
    case .Action:
        print("\(movie.name) \u{1F430}")
    case .UnknownGenre:
        print("Unknown Genre")
   }
}

//THE PROJECT
//
//Iterate over all movies and print a formatted blurb about each one. Use this out put of the first movie as a guide:

for movie in movieArray {
    var movieStarString = ""
    if movie.cast.count >= 2 {
        for a in 0..<movie.cast.count {
            movieStarString += "\(movie.cast[a].name)"
        }
        movieStarString += "\(movie.cast[movie.cast.count - 2].name) and \(movie.cast[movie.cast.count - 1].name)"
    } else if movie.cast.count == 2 {
        movieStarString += "\(movie.cast[0].name) and \(movie.cast[1].name)"
    } else {
        movieStarString += "\(movie.cast[0].name)"
    }
    var genreLetter = movie.genre.rawValue[movie.genre.rawValue.startIndex.advancedBy(0)]
    if genreLetter == "a" || genreLetter == "e" || genreLetter == "i" || genreLetter == "o" || genreLetter == "u" {
        print("\(movie.name) came out in \(movie.year). It was an \(movie.genre) staring \(movieStarString).")
    } else {
        print("\(movie.name) came out in \(movie.year). It was a \(movie.genre) staring \(movieStarString).")
    }
    if let p = presidentsByYear[movie.year] {
        print("\(p) was President that year.")
    }
}








