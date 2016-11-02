//: Playground - noun: a place where people can play

import UIKit
<<<<<<< HEAD
// movies is an Array of Dictionaries
// each element of movies is a Dictionary with the keys
// 'name','year', 'genre', 'cast' and 'description'

=======

// movies is an Array of Dictionaries
// each element of movies is a Dictionary with the keys
// 'name','year', 'genre', 'cast' and 'description'
>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093
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


<<<<<<< HEAD
// ONE NOTE before you start consider this one movie element
/*

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


if let name = movies[0]["name"] as? String{
    print(name)
}

// 2. Print a list of all movie names, preferably on one line.


    for i in 0..<movies.count {
        if let name = movies[i]["name"] as? String{
            print(name, terminator: " ")
    }
}

=======
// WARM UPS
// 1. Print the name of the first movie.

// 2. Print a list of all movie names, preferably on one line.

>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093
// 3. Print a list of all movie years and names as follows:
// 2015: Minions
// 2001: Shrek
// .
// .
// .

<<<<<<< HEAD
for i in 0..<movies.count {
    if let name = movies[i]["name"] as? String, year = movies[i]["year"] as? Int{
        print("\(year): \(name)")
    }
}

// 4. Iterate over all movies. Inside the loop use switch on genre. Print each title
// and add an appropriate emoji to represent its genre

for i in 0..<movies.count{
    if let name = movies[i]["name"] as? String, genre = movies[i]["genre"] as? String{
        switch genre {
        case "animation":
            print("\(name) \u{1F478}")
        case "drama":
            print("\(name) \u{1f3ad}")
        case "action":
            print("\(name) \u{2694}")
        default:
            break
        
        }
    }
}
=======
// 4. Iterate over all movies. Inside the loop use switch on genre. Print each title
// and add an appropriate emoji to represent its genre

>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093
// 5. In code, not by literal initialization, create a new dictionary called moviesByName of type
// [String:[String:Any]]. Copy the elements of movies, adding each to moviesByName
// with the name as key. Sort by name.

<<<<<<< HEAD
var moviesByName: [String:[String:Any]] = ["": [:]]
var namesSorted = [String]()

for i in 0..<movies.count {
    if let name = movies[i]["name"] as? String{
        movies[i]["name"] = nil
        moviesByName[name] = movies[i]
        namesSorted.append(name)
    }
}
print(namesSorted.sort())
 
 
// 6. Do the same thing as in (5) for year and genre, creating a new dictionary for each one.
// What happens, and why? How might you change your approach?


var moviesByYear = [Int:[String:Any]]()
var yearsSorted = [Int]()

for i in 0..<movies.count {
    if let year = movies[i]["year"] as? Int{
        movies[i]["year"] = nil
        moviesByYear[year] = movies[i]
        yearsSorted.append(year)
    }
}

print(yearsSorted.sort())

//In this instance none of the years ovverlap, but if they did then it would only print one value for the year since a key can only have a single value.

var moviesByGenre: [String:[String:Any]] = ["": [:]]
var genreSorted = [String]()

for i in 0..<movies.count {
    if let genre = movies[i]["genre"] as? String{
        movies[i]["genre"] = nil
        moviesByGenre[genre] = movies[i]
        genreSorted.append(genre)
    }
}
print(moviesByGenre.count)
print(genreSorted.sort())
//Here the multiple instances of drama keep overwriting the previous one since a dictionary key can only have one value. It would be better to use the moviesByName dictionary to sort into genre, because then it would provide dictionaries with seperate keys inside of the genre dictionary (the single value would be a dictionary, which itself would have keys which lead to further dictionaries).





=======
// 6. Do the same thing as in (5) for year and genre, creating a new dictionary for each one.
// What happens, and why? How might you change your approach?

>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093
// THE PROJECT
// Iterate over all movies and print a formatted blurb about each one. Use this out put of the
// first movie as a guide:

// Minions came out in 2015. It was an animation staring Sandra Bullock, Jon Hamm, and Michael Keaton.
// Barack Obama was president that year.


// Note how it should generate "an animation" in contrast to "a drama"
// Similarly notice the "and" before the last member of the cast listed.
// Get it to work any which way you can but try your best to follow these guidelines
//   * Don't use forced unwrapping
//   * Use multiple bindings in one "if let" (no pyramid of doom)
<<<<<<< HEAD

*/
for i in 0..<movies.count {
    if let name = movies[i]["name"] as? String, year = movies[i]["year"] as? Int, cast = movies[i]["cast"] as? [String], genre = movies[i]["genre"] as? String {
        var castMembers = ""
        for (index, actor) in cast.enumerate() {
            if index == cast.count - 1 && cast.count > 1 {
                castMembers.appendContentsOf("and \(actor)")
            } else {
                castMembers.appendContentsOf("\(actor), ")
            }
        }
    let vowels: [Character] = ["a", "e", "i", "o    ", "u"]
    var genreGrammar = ""
    for m in vowels {
        if m == genre[genre.startIndex] {
            genreGrammar = "an \(genre)"
            break
        } else {
            genreGrammar = "a \(genre)"
            
        }
    }
    for k in presidentsByYear where year == k.0{
            print("\(name) came out in \(year). It was \(genreGrammar) staring \(castMembers).\n\(k.1) was president that year.\n")
            }
        
    }
}







=======
>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093
