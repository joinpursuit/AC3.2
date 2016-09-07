//
//  main.swift
//  structsClassesExercises
//
//  Created by Tong Lin on 9/6/16.
//  Copyright © 2016 Tong Lin. All rights reserved.
//

import Foundation


var r = Rectangle()
r.x = 100
r.y = 100
r.height = 100
r.width = 100

dump(r)

print(r.xPrime, r.yPrime)
print(r.width, r.height)

r.xPrime = 600
r.yPrime = 50

print(r.xPrime, r.yPrime)
print(r.width, r.height)







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

var presidentsByYear = [1993 : "",
                        1994 : "",
                        1995 : "",
                        1996 : "",
                        1997 : "",
                        1998 : "",
                        1999 : "",
                        2000 : "",
                        2001 : "",
                        2002 : "",
                        2003 : "",
                        2004 : "",
                        2005 : "",
                        2006 : "",
                        2007 : "",
                        2008 : "",
                        2009 : "",
                        2011 : "",
                        2012 : "",
                        2013 : "",
                        2014 : "",
                        2015 : "",
                        2016 : ""
]

var presidentData = ["1993, 2000, Bill Clinton", "2001, 2008, George W. Bush", "2009, 2016, Barack Obama"]

enum Genre: String{
    case Drama = "drama"
    case Animation = "animation"
    case Action = "action"
}

var movieArray = [Movie]()
for movieDict in movies{
    if let name = movieDict["name"] as? String, year = movieDict["year"] as? Int, genre = movieDict["genre"] as? String, cast = movieDict["cast"] as? [String], description = movieDict["description"] as? String{
//        var actorArr = [Actor]()
//        movie.name = name
//        movie.year = year
//        movie.genre = genre
//        movie.description = description
//        if let a = Genre(rawValue: genre) {
//            switch a {
//            case .Drama:
//                movie.genre = a.rawValue
//            case .Animation:
//                movie.genre = a.rawValue
//            case .Action:
//                movie.genre = a.rawValue
//            }
//        }
//        var actorInString = ""
//        for i in cast{
//            actorArr.append(Actor(name: i, born: 1999, died: nil, breakoutYear: nil, breakoutRole: nil))
//            if i == cast.last{
//                actorInString += i
//            }else{
//                actorInString += "\(i), "
//            }
//        }
//        movie.cast = actorArr
//        for i in cast{
//            let actor = Actor()
//            actor.name = i
//            actorArr.append(actor)
//        }
//        movie.cast = actorArr
        let movie = Movie(name: name, year: year, genre: genre, cast: cast, description: description)
        movieArray.append(movie)
    }
}

var presidentArray = [President]()
for i in presidentData{
    var presidentDict = i.componentsSeparatedByString(", ")
    let president = President(entered: Int(presidentDict[0])!, left: Int(presidentDict[1])!, name: presidentDict[2], born: 1977, died: nil)
//    president.name = presidentDict[2]
//    president.yearEnteredOffice = Int(presidentDict[0])!
//    president.yearLeftOffice = Int(presidentDict[1])!
    presidentArray.append(president)
//    print(president.name, president.yearEnteredOffice, president.yearLeftOffice)
}


for year in presidentsByYear.keys{
    for president in presidentArray{
        let name = president.name
        if president.inOffice(year){
            presidentsByYear[year] = name
        }
    }
}

/*
//Print the name of the first movie.
print(movieArray[0].name)
//Print a list of all movie names, preferably on one line.
for movie in movieArray{
    print(movie.name, terminator: ", ")
}
//Print a list of all movie years and names as follows: 2015: Minions 2001: Shrek . . .
for movie in movieArray{
    print("\(movie.name): \(movie.year)", terminator: " ")
}
//Iterate over all movies. Inside the loop use switch on genre. Print each title and add an appropriate emoji to represent its genre
for movie in movieArray{
    let name = movie.name, genre = movie.genre
        switch genre{
        case "drama":
            print("\(name)😃")
        case "animation":
            print("\(name)🤗")
        case "action":
            print("\(name)😎")
        default:
            break
        }
}
//THE PROJECT
//Iterate over all movies and print a formatted blurb about each one. Use this out put of the first movie as a guide:
//Minions came out in 2015. It was an animation staring Sandra Bullock, Jon Hamm, and Michael Keaton. Barack Obama was president that year.
*/
for movie in movieArray{
    print("\(movie.name) came out in \(movie.year). It was ", terminator: "")
    let genre = movie.genre
    let year = movie.year
    if let a = Genre(rawValue: genre) {
        switch a {
        case .Drama:
            print("a \(movie.genre) staring ", terminator: "")
        case .Animation:
            print("an \(movie.genre) staring ", terminator: "")
        case .Action:
            print("an \(movie.genre) staring ", terminator: "")
        }
    }
    for actor in 0..<movie.cast.count{
        if actor == movie.cast.count-1{
            print("and \(movie.cast[actor].name). ", terminator: "")
        }else{
        print("\(movie.cast[actor].name), ", terminator: "")
        }
    }
    for (key, value) in presidentsByYear{
        if key == year{
            print("\(value) was president that year.")
        }
    }
    print("")
}







