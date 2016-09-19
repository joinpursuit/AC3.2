//
//  main.swift
//  StuctsClassesExercises
//
//  Created by Annie Tung on 9/6/16.
//  Copyright © 2016 Annie Tung. All rights reserved.
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

//Full lesson: Populate an array of Movie objects converted from the familiar array of dictionaries.

var movieArray = [Movie]()                      //creating a new array
for movieDict in movies {                   //looping through the movie dictionary
    if let name = movieDict["name"] as? String,
        let year = movieDict["year"] as? Int,
        let genre = movieDict["genre"] as? String,
        let cast = movieDict["cast"] as? [String],
        let description = movieDict["description"] as? String {
        
        var myCast = [Actor]() // make an empty Actor, instantiating
        for actorName in cast {
            let newActor = Actor(name: actorName, born: 1981, died: nil, breakoutYear: 1997, breakoutRole: "Spongebob")// set the name of the Actor
            myCast.append(newActor) //appending the actor to each movie
        }
        
        let movie = Movie(name: name, year: year, genre: Genre(rawValue: genre)!, cast:myCast)
        
        //print("Movie: \(movie)")
        dump(movie)
//        movie.name = name
//        movie.year = year
//        movie.genre = Genre(rawValue: genre)! //convert string into genre, genre could be nil so we don't have to forcefully unwrap it, pass in the rawValue
//                        //        movie.cast = cast
//                        //        movie.description = description
//        movieArray.append(movie)
                        //        print("Name: \(movie.name) Year: \(movie.year)")
    }
}
//print(movieArray)
//dump(movieArray) ////shows everything breakdown

//for m in movieArray {
//    print("\(m.name): \(m.castString)")
//}

//print(President.oath)
//print(President.personalStatement)
//print(Actor.personalStatement)
//print(President.personalStatement)

let ronaldReagan = President(entered: 1981, left: 1987, name: "Ronald Reagan", born: 1900, died: 2000)
//ronaldReagan.name = "Ronald Reagan"
ronaldReagan.yearEnteredOffice = 1981
ronaldReagan.yearLeftOffice = 1987

var b = ronaldReagan.inOffice(1903)
b = ronaldReagan.inOffice(1983)
b = ronaldReagan.inOffice(1999)

dump(ronaldReagan)

var p = President(start: 1200, terms: 9, name: "Genghis Khan", born: 1180, died: 1260)
p = President(start: 1200, terms: 56, name: "Genghis Khan Jr", born: 1240, died: 1249)
p = President(yearElected: 1240, terms: 5, name: "Ms Khan", born: 1220, died: 1300)
dump(p)

//Work Actor class into the Movie class by making cast type [Actor] and populating it.

//process cast
//for movie in movies {
//    if let casts = movie["cast"] as? [String] {
//        let movie = Movie(name: , year: <#T##Int#>, genre: <#T##Genre#>, cast: <#T##[Actor]#>)
//        for castMember in casts {
//                    // make an empty Actor, instantiating
//            let actor = Actor(name: "Annie Tung", born: 1992, died: 2092, breakoutYear: 0, breakoutRole: "Actor") //creating an object
//                    // set the name of the Actor
//            actor.name = castMember
//            movie.cast.append(actor) //appending the actor to each movie
//        }
//    }
//}

//var m = Movie(name: "Minions", year: 2015, genre: "Animation", cast: ["Sandra Bullock", "Jon Hamm", "Michael Keaton"])

var presidentsByYear = [1997 : "Bill Clinton",
                        1998 : "Bill Clinton",
                        1999 : "Bill Clinton",
                        2000 : "Bill Clinton",
                        2001 : "G. W. Bush",
                        2002 : "G. W. Bush",
                        2003 : "G. W. Bush",
                        2004 : "G. W. Bush",
                        2005 : "G. W. Bush",
                        2006 : "G. W. Bush",
                        2007 : "G. W. Bush",
                        2008 : "G. W. Bush",
                        2009 : "Barack Obama",
                        2011 : "Barack Obama",
                        2012 : "Barack Obama",
                        2013 : "Barack Obama",
                        2014 : "Barack Obama",
                        2015 : "Barack Obama",
                        2016 : "Barack Obama"
]
//Build a presidents array (of type [President])by processing this array of Strings:
let presidentData = ["1993, 2000, Bill Clinton",
                     "2001, 2008, George W. Bush",
                     "2009, 2016, Barack Obama"]

var presidents = [President]()
for president in presidentData {
    let presidentInfo = president.componentsSeparatedByString(", ")
}
    // initialize the president object
    
    // set the proper data into the president object
//    let enterYear = presidentInfo[0] as String
//    let leftYear = presidentInfo[1] as String
//    let name = presidentInfo[2] as String
//    president.yearEnteredOffice = Int(enterYear)!
//    president.yearLeftOffice = Int(leftYear)!
//    president.name = name
//    
//    // and then what? 
//    let president = President(entered: <#T##Int#>, left: <#T##Int#>, name: <#T##String#>, born: <#T##Int#>, died: <#T##Int?#>)
//    presidents.append(president)
//}

//var r = Rectangle()// classes are reference types. The address or r is constant. Its member properties can be changeable as long as they are var.
//r.x = 100.0
//r.y = 100.0
//r.width = 200
//r.height = 100
//
//dump(r)
//
//print("The bottom right is \(r.xPrime), \(r.yPrime)")
//
//r.xPrime = 600
//r.yPrime = 50
//
//print("The bottom right is \(r.xPrime), \(r.yPrime)")
//print("Width \(r.width), \(r.height)")