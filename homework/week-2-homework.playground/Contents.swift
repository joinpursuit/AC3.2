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
aMovie["cast"].dynamicType
//if let name = aMovie["name"] as? String, year = aMovie["year"] as? Int, cast = aMovie["cast"] as? [String] {
//    print("\(year): \(name)")
//    
//    for actor in cast {
//        print(actor)
//    }
//}

// WARM UPS
// 1. Print the name of the first movie.
print("Question 1")
var firstMovieIndex = 0
if let name = movies[firstMovieIndex]["name"] as? String{
    print(name)
}

//print(movies[0]["name"]!)
//if let name = movies[0]["name"] as? String {
//    print(name)
//}
//if let name = movies[0]["name"] as? String, year = movies[0]["year"] as? Int, genre = movies[0]["genre"] as? String, cast = movies[0]["cast"] as? [String], description = movies[0]["description"] as? String{
//        print(name)
//}

// 2. Print a list of all movie names, preferably on one line.
print("Question 2")
for i in 0..<movies.count{
    if let name = movies[i]["name"] as? String{
        print(name, terminator:", ")
    }
}
print()
//for i in movies {
//    if let name = i["names"] as? String, year = i["year"] as? Int, cast = i["cast"] as? [String]{
//        print(i[0])
//        }
//}

//for i in movies{
//    print(i["name"]!, terminator: " ")
//}
//print()
//for i in 0..<movies.count{
//    print(movies[i]["name"]!, terminator: " ")
//}
//print()

// 3. Print a list of all movie years and names as follows:
// 2015: Minions
// 2001: Shrek
// .
// .
// .
print("Question 3")
for i in 0..<movies.count{
    if let name = movies[i]["name"] as? String, year = movies[i]["year"] as? Int{
        print("\(year): \(name)")
    }
}

// 4. Iterate over all movies. Inside the loop use switch on genre. Print each title
// and add an appropriate emoji to represent its genre
print("Question 4")
for i in 0..<movies.count{
    if let name = movies[i]["name"] as? String, year = movies[i]["year"] as? Int, genre = movies[i]["genre"] as? String{
        print("\(name)", terminator: " ")
        switch genre{
        case "animation":
            print("🐻")
        case "action":
            print("🎬")
        case "drama":
            print("💞")
        default:
            break
        }
    }
}
// 5. In code, not by literal initialization, create a new dictionary called moviesByName of type
// [String:[String:Any]]. Copy the elements of movies, adding each to moviesByName
// with the name as key. Sort by name.
//[Titanic:[Titanic:Any]]
print("Question 5")
var moviesByName : [String:[String:Any]] = [:]
for i in 0..<movies.count{
    if let name = movies[i]["name"] as? String{
        moviesByName[name]=movies[i]
    }
}
print(moviesByName) //sorted by name in random order in dictionary
let moviesSortedByNameInAlphabeticalOrder = moviesByName.sort{$0.0 < $1.0}
print(moviesSortedByNameInAlphabeticalOrder) //sorted by name in alphabetical order in array of tuples of string and dictionaries

// 6. Do the same thing as in (5) for year and genre, creating a new dictionary for each one.
// What happens, and why? How might you change your approach?
//When sorting by year, it wont work with[String:[String:Any]]. It needs to be[Int:[String:Any]], because year is a int.
//When done the same way, the genre one only printed 3 times, while the console ran 9 times already. Each genre's can only be there once. In order to fix it, we need additional information added to keys or put it in an array of dictionaries.
print("Question 6 sorted by genre with same method in number 5")
var moviesByGenre : [String:[String:Any]] = [:]
moviesByGenre.dynamicType
for i in 0..<movies.count{
    if let genre = movies[i]["genre"] as? String, name = movies[i]["name"] as? String{
        moviesByGenre[genre]=movies[i]
    }
}
print(moviesByGenre) //sorted by genre in random order in a dictionary
let moviesSortedByGenreInAlphabeticalOrder = moviesByGenre.sort{$0.0 < $1.0}
print(moviesSortedByGenreInAlphabeticalOrder) //sorted by genre in alphabetical order in an array of tuples of string and dictionaries

print("Question 6 sorted by genre a different apprach")
var movieByGenreOtherMethod: [String: [[String: Any]]] = [:]
var animation : [[String: Any]] = []
var action : [[String: Any]] = []
var drama : [[String: Any]] = []


for movie in movies {
    if let genre = movie["genre"] as? String, name = movie["name"] as? String, year = movie["year"] as? Int, cast = movie["cast"] as? [String], description = movie["description"] as? String{
        if genre == "animation" {
            animation.append(movie)
        }else if genre == "action" {
            action.append(movie)
        }else if genre == "drama"{
            drama.append(movie)
        }else{
            break
        }
    }
}
movieByGenreOtherMethod = ["animation": animation, "action": action, "drama": drama]
print(movieByGenreOtherMethod) //sorted by genre in a different approach

print("Question 6 By Year")
var moviesByYear : [Int:[String:Any]] = [:]
for i in 0..<movies.count{
    if let year = movies[i]["year"] as? Int{
        moviesByYear[year]=movies[i]
    }
}
print(moviesByYear) // sorted by year in a dictionary in random order
let moviesSortedByYearInAscendingOrder = moviesByYear.sort{$0.0 < $1.0}
print(moviesSortedByYearInAscendingOrder) //sorted by year in ascending order in an array of tuples of strings and dictionaries

////Another way of sorting by genre while attempint the another approach.
//var moviesByGenreMethod2 : [String:[[String:Any]]] = [:]
//for movie in movies {
//    //var define:[String:String, String:Int, String:String, String:[String], String:String] = movie
//    if let genre = movie["genre"] as? String, name = movie["name"] as? String, year = movie["year"] as? Int, cast = movie["cast"] as? [String], description = movie["description"] as? String{
//        if moviesByGenreMethod2[genre] == nil{
//            moviesByGenreMethod2[genre] = [movie]
//        }
//        //else{
//            //moviesByGenreMethod2.updateValue(moviesByGenreMethod2[genre]!.append([movie]), forKey: moviesByGenreMethod2[genre]!)
//        //}
//    }
//}
//let moviesSortedByGenreMethod2 = moviesByGenreMethod2.sort{$0.0 < $1.0}
//print(moviesSortedByGenreMethod2)

// THE PROJECT
// Iterate over all movies and print a formatted blurb about each one. Use this out put of the
// first movie as a guide:

// Minions came out in 2015. It was an animation staring Sandra Bullock, Jon Hamm, and Michael Keaton.
// Barack Obama was president that year.
print("The Project")
for i in 0..<movies.count{
    if let name = movies[i]["name"] as? String, year = movies[i]["year"] as? Int, genre = movies[i]["genre"] as? String, cast = movies[i]["cast"] as? [String]{
        var phrase = ""
        var anotherPhrase = "\(cast[0]), \(cast[1]), and \(cast[2])"
        switch genre{
        case "animation":
            phrase = "an animation"
        case "action":
            phrase = "an action"
        case "drama":
            phrase = "a drama"
        default:
            break
        }
        print("\(name) came out in \(year). It was \(phrase) staring \(anotherPhrase). ")
        for (key,value) in presidentsByYear {
            if key == year {
                print("\(value) was the president that year.")
            }
        }
    }
}

// Note how it should generate "an animation" in contrast to "a drama"
// Similarly notice the "and" before the last member of the cast listed.
// Get it to work any which way you can but try your best to follow these guidelines
//   * Don't use forced unwrapping
//   * Use multiple bindings in one "if let" (no pyramid of doom)
