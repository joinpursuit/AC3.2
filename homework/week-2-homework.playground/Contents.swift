//: Playground - noun: a place where people can play

import UIKit

//: Playground - noun: a place where people can play


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

//if let name = aMovie["name"] as? String, year = aMovie["year"] as? Int, cast = aMovie["cast"] as? [String] {
//    print("\(year): \(name)")
//
//    for actor in cast {
//        print(actor)
//    }
//}

// WARM UPS
// 1. Print the name of the first movie.
if let firstMovie = movies[0]["name"]{
    print(firstMovie)
}

// 2. Print a list of all movie names, preferably on one line.

for item in 0..<movies.count {
    if let movie = movies[item]["name"]{
        print("\(movie),",terminator: " ")
    }
    if item == movies.count - 1 {
        if let movie = movies[item]["name"]{
            print("\(movie).",terminator: " ")
        }
    }
}

print("")

// 3. Print a list of all movie years and names as follows:
// 2015: Minions
// 2001: Shrek
// .
// .
// .

for item in 0..<movies.count {
    if let movie = movies[item]["name"], let year = movies[item]["year"] {
        print("\(year): \(movie)")
    }
}

// 4. Iterate over all movies. Inside the loop use switch on genre. Print each title
// and add an appropriate emoji to represent its genre

let dramaEmoji = "\u{1F61e}"
let animationEmoji = "\u{1F916}"
let actionEmoji = "\u{1F6b5}\u{1f3ff}"

for item in 0..<movies.count {
    if let movie = movies[item]["name"] as? String, let genre = movies[item]["genre"] as? String {
        switch genre {
        case "animation":
            print("\(movie): \(genre)\(animationEmoji)")
        case "action":
            print("\(movie): \(genre)\(actionEmoji)")
        case "drama":
            print("\(movie): \(genre)\(dramaEmoji)")
        default:
            print("default")
        }
    }
}


// 5. In code, not by literal initialization,
// create a new dictionary called moviesByName of type[String:[String:Any]].
// Copy the elements of movies, adding each to moviesByName with the name as key.
// Sort by name.


var moviesByName: [String:[String:Any]] = [:]


for i in 0..<movies.count - 1{
    for (key, value) in movies[i] {
        if let title = movies[i]["name"] as? String, var innerDict = movies[i] as? Dictionary  {
            moviesByName.updateValue(innerDict, forKey: title)
        }
    }
}

print(moviesByName)


// 6. Do the same thing as in (5) for year and genre, creating a new dictionary for each one.
// What happens, and why? How might you change your approach?



// THE PROJECT
// Iterate over all movies and print a formatted blurb about each one. Use this out put of the
// first movie as a guide:

// Minions came out in 2015. It was an animation staring Sandra Bullock, Jon Hamm, and Michael Keaton.
// Barack Obama was president that year.



for i in 0..<movies.count {
    if let title = movies[i]["name"] as? String, let year = movies[i]["year"] as? Int, let genre = movies[i]["genre"] as? String, var cast = movies[i]["cast"]      as? [String], let president = presidentsByYear[year] {
        
        for i in 0...2 {
            if cast[i] == cast[2] {
                cast.insert("and", atIndex: 2)
            }
        }
        
        let stringCast = cast.joinWithSeparator(", ")
        
        switch genre {
        case "drama", "action":
            print("\(title) came out in \(year). It was a \(genre) starring \(stringCast). \(president) was the president that year.")
        case "animation":
            print("\(title) came out in \(year). It was an \(genre) starring \(stringCast). \(president) was the president that year.")
        default:
            print("default")
        }
    }
}


// Note how it should generate "an animation" in contrast to "a drama"
// Similarly notice the "and" before the last member of the cast listed.
// Get it to work any which way you can but try your best to follow these guidelines
//   * Don't use forced unwrapping
//   * Use multiple bindings in one "if let" (no pyramid of doom)

