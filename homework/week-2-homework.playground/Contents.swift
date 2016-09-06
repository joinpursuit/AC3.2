//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
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

//let aMovie: [String:Any] = [
//    "name": "Minions",
//    "year": 2015,
//    "genre": "animation",
//    "cast": ["Sandra Bullock", "Jon Hamm", "Michael Keaton"],
//    "description": "Evolving from single-celled yellow organisms at the dawn of time, Minions live to serve, but find themselves working for a continual series of unsuccessful masters, from T. Rex to Napoleon. Without a master to grovel for, the Minions fall into a deep depression. But one minion, Kevin, has a plan."
//]
//
//if let name = aMovie["name"] as? String, year = aMovie["year"] as? Int, cast = aMovie["cast"] as? [String] {
//    print("\(year): \(name)")
//
//    for actor in cast {
//        print(actor)
//    }
//}
/*
 // WARM UPS
 // 1. Print the name of the first movie.
 /*
 
 if let name = aMovie["name"] as? String {
 print("The name of first movie is \(name)")
 }
 
 
 // 2. Print a list of all movie names, preferably on one line.
 var movieNames = [String]()
 for dict in movies {
 if var movname = dict["name"] as? String {
 movieNames.append(movname)
 }
 }
 for i in 0..<movieNames.count {
 print(movieNames[i], terminator: " ")
 }
 
 
 print(" ")
 
 if let name = movies[0]["name"] {
 print(name)
 }
 
 print(movies[0]["name"])
 */
 
 for movie in movies {
 if let name = movie ["name"] {
 print(name, terminator: " ")
 }
 }
 
 
 
 
 
 // 3. Print a list of all movie years and names as follows:
 // 2015: Minions
 // 2001: Shrek
 // .
 // .
 // .
 
 for dict in movies {
 if var movname = dict["name"] as? String, movyear = dict["year"] as? Int { print("\(movyear): \(movname)")
 }
 }
 
 
 for i in 0..<movies.count {
 if let movieYear = movies[i]["year"] {
 if let movieTitle = movies[i]["name"] {
 print("\(movieYear): \(movieTitle)")
 }
 }
 }
 
 
 
 // 4. Iterate over all movies. Inside the loop use switch on genre. Print each title
 // and add an appropriate emoji to represent its genre
 
 for i in 0..<movies.count {
 if let name = movies[i]["name"] as? String, year = movies[i]["year"] as? Int, genre = movies[i]["genre"] as? String {
 switch genre {
 case "action":
 print("\u{1F52B}" + name + ":\(genre)")
 case "animation":
 print("\u{1F3A8}" + name + ":\(genre)")
 case "drama":
 print("\u{1F3AD}" + name + ":\(genre)")
 default:
 print("There are no such genre")
 }
 }
 }
 
 
 // 5. In code, not by literal initialization, create a new dictionary called moviesByName of type
 // [String:[String:Any]]. Copy the elements of movies, adding each to moviesByName
 // with the name as key. Sort by name.
 
 var moviesByName = [String: [String:Any]]()
 var sortedMovies = [String] ()
 
 
 for i in 0..<movies.count {
 if let name = movies[i]["name"] as? String {
 movies[i]["name"] = nil
 moviesByName[name] = movies[i]
 sortedMovies.append(name)
 }
 }
 print(sortedMovies.sort())
 
 //print(moviesByName)
 
 // 6. Do the same thing as in (5) for year and genre, creating a new dictionary for each one.
 // What happens, and why? How might you change your approach?
 
 
 
 
 // WARM UPS
 // 1. Print the name of the first movie.
 
 if let name = aMovie["name"] as? String {
 print("The name of first movie is \(name)")
 }
 
 
 // 2. Print a list of all movie names, preferably on one line.
 var movieNames = [String]()
 for dict in movies {
 if var movname = dict["name"] as? String {
 movieNames.append(movname)
 }
 }
 for i in 0..<movieNames.count {
 print(movieNames[i], terminator: " ")
 }
 
 
 print(" ")
 
 // 3. Print a list of all movie years and names as follows:
 // 2015: Minions
 // 2001: Shrek
 // .
 // .
 // .
 
 for dict in movies {
 if var movname = dict["name"] as? String, movyear = dict["year"] as? Int { print("\(movyear): \(movname)")
 }
 }
 
 
 
 
 // 4. Iterate over all movies. Inside the loop use switch on genre. Print each title
 // and add an appropriate emoji to represent its genre
 
 
 
 // 5. In code, not by literal initialization, create a new dictionary called moviesByName of type
 // [String:[String:Any]]. Copy the elements of movies, adding each to moviesByName
 // with the name as key. Sort by name.
 */


// 6. Do the same thing as in (5) for year and genre, creating a new dictionary for each one.
// What happens, and why? How might you change your approach?

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

print("k")

/*for i in 0..<movies.count {
 if let name = movies[i]["name"] as? String, year = movies[i]["year"] as? Int, genre = movies[i]["genre"] as? String, cast = movies[i]["cast"] as? [String], pres = presidentsByYear[year] {
 var casts = ""
 for (counter, casts) in cast.enumerate() {
 print(actor)
 casts += "\(actor)"
 if counter == (cast.count - 2) {
 casts += " ,and "
 }
 }
 
 }
 }
 */
/*for i in 0..<movies.count {
 if let name = movies[i]["name"] as? String, year = movies[i]["year"] as? Int, var cast = movies[i]["cast"] as? [String], genre = movies[i]["genre"] as? String, pres = presidentsByYear[year]
 */


//        if cast.count > 1 {
//            cast.insert("and", atIndex: cast.count - 1)
//        }
//        let casts = cast.joinWithSeparator(", ")
//        print(casts)

// var casts = ""
//        for (counter, actor) in cast.enumerate(){
//            casts += "\(actor)"
//            if counter == (cast.count - 2) {
//                casts += ", and "
//            } else if counter == cast.count - 1 {
//                continue
//            } else {
//                casts += ", "
//            }
//        }




//for i in 0..<movies.count {
//    if let name = movies[i]["name"] as? String, year = movies[i]["year"] as? Int, var cast = movies[i]["cast"] as? [String], genre = movies[i]["genre"] as? String, pres = presidentsByYear[year] {
//
//        var casts = " "
//      for (index, actor) in cast.enumerate() {
//            if index == cast.count - 1 && cast.count > 1 {
//                casts.appendContentsOf("and \(actor)")
//            } else {
//                casts.appendContentsOf("\(actor), ")
//            }
//
//        switch genre {
//        case "animation":
//            print("\(name) came out in \(year). It was an \(genre) staring \(casts).")
//        case "action":
//            print("\(name) came out in \(year). It was an \(genre) staring \(casts).")
//        case "drama":
//            print("\(name) came out in \(year). It was a \(genre) staring \(casts).")
//        default:
//            print("\(name) came out in \(year). It wasn't a \(genre) we found")}
//        break
// }
//var i=1
//while i<10 {
//    i+=1
//print(i)
//}


//let aSentence = "Whatever you are, be a good one."
//var sumc = 0
//
//for i in aSentence.characters {
//    if i == "a" || i == "e" || i == "o" || i == "u"
//

var i = 66
switch i {
case 100:
    print("Perfect score!")
case 90...99:
    print("A")
case 80..<90:
    print("B")
case 70..<80:
    print("C")
case 60..<70:
    print("D")
case 0..<60:
    print("Fail")
default:
    print("Invalid score")
    
}

print (i)


//Qd2

var subwayColors = ["1": "red", "2": "red", "4": "green"]

func helloWorld() -> Void {
    print("Hello world")
}
helloWorld()

func helloWorld(name: String){
    print("Hello \(name)")
}
helloWorld()

//
//    let itemCost = 45.0
//    let nyTax = 0.08775
//    func totalWithTax(cost cost: Double, tax: Double) -> Double {
//        return cost + (cost * tax)
//    }
//    print(totalWithTax(cost: itemCost, tax: nyTax))
//
//
//func saySomething(message: String, numTimes: Int) {
//    for _ in 1...numTimes {
//    print(message)
//    }
//}
//saySomething("something", numTimes: 3)

//
//let itemCost = 45.0
//let nyTax = 0.08775
//
//func totalWithTax( cost cost: Double, tax: Double) -> {
//return cost + (cost * tax)
//}
//
//print(totalWithTax(cost: itemCost , tax: nyTax) + 2.3)
//



/*
 todaysTemperature = 72
 
 if todaysTemperature <= 40 {
 print("It's cold out.")
 } else if todaysTemperature >= 85 {
 print("It's really warm.")
 } else {
 print("Weather is moderate.")
 }
 */


//var todaysTemperature = 72

/*func goodTemperature( temperature: Double, weather: String) -> String {
 return temperature <= 40
 print("It's cold out")
 
 }
 */

let todaysTemperature = 72
func temperature (degree: Int) -> String {
    if  degree <= 40 {
        return ("It's cold out.")
    } else if degree  >= 85 {
        return ("It's really warm.")
    } else {
        return ("Weather is moderate.")
    }
}
print(temperature(todaysTemperature))

