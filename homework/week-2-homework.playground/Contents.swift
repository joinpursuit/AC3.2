//: Playground - noun: a place where people can play

import UIKit

// movies is an Array of Dictionaries
// each element of movies is a Dictionary with the keys
// 'name','year', 'genre', 'cast' and 'description'
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


// ONE NOTE before you start consider this one movie element

let aMovie: [String:Any] = [
    "name": "Minions",
    "year": 2015,
    "genre": "animation",
    "cast": ["Sandra Bullock", "Jon Hamm", "Michael Keaton"],
    "description": "Evolving from single-celled yellow organisms at the dawn of time, Minions live to serve, but find themselves working for a continual series of unsuccessful masters, from T. Rex to Napoleon. Without a master to grovel for, the Minions fall into a deep depression. But one minion, Kevin, has a plan."
]

if let name = aMovie["name"] as? String, year = aMovie["year"] as? Int, cast = aMovie["cast"] as? [String] {
    print("\(year): \(name)")
    
    for actor in cast {
        print(actor)
    }
}

// WARM UPS
// 1. Print the name of the first movie.
//ANSWER:
if let firstMovie = movies[0]["name"] as? String {
print("\(firstMovie)")
}

// 2. Print a list of all movie names, preferably on one line.
//ANSWER:
for i in 0..<movies.count {
    if let movieList = movies[i]["name"] as? String {
        print("\(movieList),", terminator: " ")
    }
}

// 3. Print a list of all movie years and names as follows:
// 2015: Minions
// 2001: Shrek
// .
// .
// .
//ANSWER:
for i in 0..<movies.count {
if let year = movies[i]["year"] as? Int, name = movies[i]["name"] as? String {
print("\(year): \(name)")
        }
}

// 4. Iterate over all movies. Inside the loop use switch on genre. Print each title
// and add an appropriate emoji to represent its genre
//ANSWER:
for i in 0..<movies.count {
    if let name = movies[i]["name"] as? String, genre = movies[i]["genre"] as? String {
        switch genre {
            case "animation":
                print("\(name)"+"\u{1F63A}")
            case "action":
                print("\(name)"+"\u{1F525}")
            case "drama":
                print("\(name)"+"\u{1F62D}")
        default:
            print("This doesn't belong in any genre")
        }
    }
}

// 5. In code, not by literal initialization, create a new dictionary called moviesByName of type

// with the name as key. Sort by name.
//ANSWER:
var moviesByName = [String:[String:Any]]() //we can set up an array so it can copy the elements of movies, adding each to moviesByName later on

//for i in 0..<movies.count {
//    if let
//    name = movies[i]["name"] as? String,
//    year = movies[i]["year"] as? Int,
//    genre = movies[i]["genre"] as? [String],
//    cast = movies[i]["cast"] as? String,
//    description = movies[i]["description"] as? String {
//        moviesByName[name] = ["year": year, "genre": genre, "cast": cast, "description": description]
//    }
//}
//print(moviesByName.sort({$0.0 < $1.0}))//jay's method of sorting

for i in 0..<movies.count {
    if let name = movies[i]["name"] as? String {
        moviesByName[name] = movies[i]
    }
}
let sortedArray = Array(moviesByName.keys.sort())
print(sortedArray)

//// 6. Do the same thing as in (5) for year and genre, creating a new dictionary for each one.
//// What happens, and why? How might you change your approach? Creating a dictionary with an array of values to hold each genre as keys for each movie.
var movieByGenreDict: [String:[[String:Any]]]
var animations = [[String: Any]]()
var actions = [[String: Any]]()
var dramas = [[String: Any]]()

for i in 0..<movies.count {
    if var
        name = movies[i]["name"] as? String,
        year = movies[i]["year"] as? Int,
        cast = movies[i]["cast"] as? [String],
        genre = movies[i]["genre"] as? String,
        description = movies[i]["description"]{
        switch genre {
            case "animation":
            animations.append(["year": year, "genre": genre, "cast": cast, "description": description])
            case "action":
            actions.append(["year": year, "genre": genre, "cast": cast, "description": description])
            case "dramas":
            dramas.append(["year": year, "genre": genre, "cast": cast, "description": description])
        default:
            break
        }
}
}
movieByGenreDict = ["animation": animations, "action": actions, "drama": dramas]

//// THE PROJECT
//// Iterate over all movies and print a formatted blurb about each one. Use this out put of the
//// first movie as a guide:
////
//// Minions came out in 2015. It was an animation staring Sandra Bullock, Jon Hamm, and Michael Keaton.
//// Barack Obama was president that year.

//// Note how it should generate "an animation" in contrast to "a drama"
//// Similarly notice the "and" before the last member of the cast listed.
//// Get it to work any which way you can but try your best to follow these guidelines
////   * Don't use forced unwrapping
////   * Use multiple bindings in one "if let" (no pyramid of doom)
for i in 0..<movies.count {
    if let
    name = movies[i]["name"] as? String,
    year = movies[i]["year"] as? Int,
    cast = movies[i]["cast"] as? [String],
    genre = movies[i]["genre"] as? String,
    description = movies[i]["description"] as? String,
    president = presidentsByYear[year] {
        if genre == "animation" || genre == "action" || genre == "drama" {
            var casts = ""
            for (counter,i) in cast.enumerate(){
                
                if counter == (cast.count - 1) { //so we can add more casts
                    casts += " and"
                }
                casts += " \(i)"
            }
print("\(name) came out in \(year). It was a \(genre) starring \(cast)")
print("\(president) was president that year.")
        }
    }
}

//for i in 0..<movies.count {
//    if let
//        name = movies[i]["name"] as? String,
//        year = movies[i]["year"] as? Int,
//        cast = movies[i]["cast"] as? [String],
//        genre = movies[i]["genre"] as? String,
//        description = movies[i]["description"] as? String,
//        president = presidentsByYear[year] {
//        if genre == "animation" || genre == "action" || genre == "drama" {
//                       print("\(name) came out in \(year). It was a \(genre) starring \(cast[0]), \(cast[1]) and \(cast[2])")
//            print("\(president) was president that year.")
//        }
//    }
//}
