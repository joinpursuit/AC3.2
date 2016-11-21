////: Playground - noun: a place where people can play
//
//import UIKit
//
////1a) Write a function so that it will print out total cost after tip.
//
//let itemCost: Double = 45
//let tipPercentage = 0.15
//
////Write your code below
//
//func totalWithTip (x: Double, tip: Double = 0.15) -> Double {
//    return x * (1 + tip)
//}
//
//
//let myFinalCost = totalWithTip(itemCost) //Fill in the arguments
//
//
//
////1b)Write a function  that it will print out total cost after tip and tax
//let taxPercentage = 0.09
//
////Write your code below
//
//
//func totalWithTipAndTax (x: Double, tip: Double = 0.15, tax: Double = 0.09) -> Double {
//    let taxNoTip = x * (tax + 1)
//    return taxNoTip * (tip + 1)
//}
//
//
//
//let myFinalCostWithTipAndTax = totalWithTipAndTax(itemCost) //Fill in the arguments
//
//
//
//
////2a)Write a function takes an Int as input, and returns true if it is even, and false if it is odd
//
////Write your code below
//
//
//func evenIsTrue (x : Int) -> Bool {
//    if x % 2 == 0 {
//        return true
//    }
//    return false
//}
//
//evenIsTrue(45)
//
//
//
////2b) Using function above, write code that prints out whether dieRoll is even or odd
//
//
//let dieRoll = Int(arc4random_uniform(6) + 1)
//
//
//if evenIsTrue(dieRoll) == true {
//    print("Die roll was even")
//} else {
//    print("Die roll was odd")
//}
//
////3)
///*
// Write a function that prints the numbers from 1 to x. EXCEPT:
// * If the number if a multiple of 3, print "Fizz" instead of the number
// * If the number is a multiple of 5, print "Buzz" instead of the number
// * If the number is a multiple of 3 AND 5, print "FizzBuzz" instead of the number
// 
// Your function should take in one parameter: x (the number to count up to)
// */
//
//func fizzBuzz (x: Int) {
//    for i in 1...x {
//        switch i {
//        case _ where i % 5 == 0 && i % 3 == 0:
//            print("FizzBuzz")
//        case _ where i % 5 == 0:
//            print("Buzz")
//        case _ where i % 3 == 0:
//            print("Fizz")
//        default:
//            print(i)
//        }
//    }
//}
//
//fizzBuzz(120)
//
//
////4a) Write a function that takes [Int] as input.  It should return the largest Int in the array.
//
////Write your code below
//
//func largestInt (x: [Int]) -> Int {
//    var largest = x[0]
//    for i in x {
//        if i > largest {
//            largest = i
//        }
//    }
//    return largest
//}
//
//print(largestInt([5, 7, 15, 0, -4, -100000, 100]))
//
////4b)
//let myArray = [3,5,1,3,532,1,4,91,20,30,92,143]
//
////Using your function in part a, use String interpolation to print a sentence that states what the largest Int in myArray is
//
//var largestIntInArray = largestInt(myArray)
//
//var sentence4B = "The largest Int in myArray: \(myArray) is \(largestIntInArray)"
//
//print(sentence4B)
//
////4c)
////Using your solution to 2a), print a sentence that states whether the largest Int in myArray is even or odd
//
//sentence4B += ". It is \(evenIsTrue(largestInt(myArray))) that \(largestIntInArray) is even"
//print(sentence4B)
//
////5a) Write a function that takes a String as input and returns the number of characters in the string
//
////Write your code below
//
//
//func numberofChar (x: String) -> Int {
//    return x.characters.count
//}
//
//numberofChar("aaaaaaavvvvvddsdfs")
//
////5b) Using your function above, print how many characters are in myString
//
//
//let myString = "Swift is a new programming language for iOS, OS X, watchOS, and tvOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility."
//
//print(numberofChar(myString))
//
//
////5c) Write a function that counts how many characters in a String match a specific character.  (e.g: count how many "a"s are in a String, or count how many ","s are in a String.
//
////Sample input:
//let FiveCString = "This is a test string for your code"
//let targetCharacter = "i"
//
////Sample output:3
//
//func howManyTimes (x: String, within: String) -> Int {
//    var count = 0
//    let y = x[x.startIndex]
//    for i in within.characters where y == i {
//        count += 1
//    }
//    return count
//}
//
//print(howManyTimes(targetCharacter, within: FiveCString))
//
////5d) Write a function that counts how many characters in a String match one of several possible characters.  (e.g: count how many vowels are in a String, or count how many "a"s "b"s and "c"s are in a Sting)
//
//
//
////Sample input:
////let FiveDString = "This one is a little more complicated"
////let targetCharacters = ["a", "e", "i", "o" "u"]
//
////Sample output:
////13
//
//
////Write your code below
//
//
//func howManyTimes2 (x: String..., within: String) -> Int {
//    var count = 0
//    for i in within.characters {
//        for y in x where y[y.startIndex] == i{
//            count += 1
//        }
//    }
//    return count
//}
//
//print(howManyTimes2("a", "e", "i", "o", "u", within: FiveCString))
//
//
//
//
////6) Write a function that returns the number of unique Ints in an array of Ints
////Sample input:
//let inputArray = [3,1,4,1,3,2,6,1,9]
//
//
////Sample output:
////4
//
////Explanation:
////2, 4, 6, 9 are unique in the array.  Every other number is not unique.
//
//func uniqueInts (x: [Int]) -> Int {
//    var counter = 0
//    var check = [Int](count: x.count, repeatedValue: 0)
//    for i in x {
//        check[i - 1] += 1
//    }
//    for i in check where i == 1{
//        counter += 1
//    }
//    return counter
//}
//
//uniqueInts(inputArray)
//
////7) Write a function that converts a binary number into decimal.  The binary number will be given as an array of Ints.
//
////Sample input:
//let binaryArray = [1,0,1,1,1,0,1]
//
////Sample output:
////93
//
//func binaryConverter (x: [Int]) -> Double {
//    var baseTen: Double = 0
//    for (index, value) in x.enumerate() where value == 1{
//        baseTen += pow(Double(2), Double(index))
//    }
//    return baseTen
//}
//binaryConverter(binaryArray)
//
//func binaryConverter2 (x: [Int]) -> Double {
//    var baseTen = 0.0
//    for (i, v) in x.reverse().enumerate() where v == 1 {
//        baseTen += pow(Double(2), Double(i))
//        print(i, v)
//    }
//    return baseTen
//}
//
//binaryConverter2(binaryArray)

//8) Copy the movie dictionary from homework two and add another [String] to each movie.
//   Name it "locations" and add some dummy data. Use the re-factored nested function
//   from the full lesson (we didn't go over it) to print both the cast list and the 
//   locations.

//Write your code below

var movies: [[String:Any]] = [
    [
        "name": "Minions",
        "year": 2015,
        "locations": ["Hollywood", "Hollywood", "Hollywood"],
        "genre": "animation",
        "cast": ["Sandra Bullock", "Jon Hamm", "Michael Keaton"],
        "description": "Evolving from single-celled yellow organisms at the dawn of time, Minions live to serve, but find themselves working for a continual series of unsuccessful masters, from T. Rex to Napoleon. Without a master to grovel for, the Minions fall into a deep depression. But one minion, Kevin, has a plan."
    ],
    [
        "name": "Shrek",
        "year": 2001,
        "locations": ["Hollywood", "Hollywood", "Hollywood"],
        "genre": "animation",
        "cast": ["Mike Myers", "Eddie Murphy", "Cameron Diaz"],
        "description": "Once upon a time, in a far away swamp, there lived an ogre named Shrek whose precious solitude is suddenly shattered by an invasion of annoying fairy tale characters. They were all banished from their kingdom by the evil Lord Farquaad. Determined to save their home -- not to mention his -- Shrek cuts a deal with Farquaad and sets out to rescue Princess Fiona to be Farquaad\"s bride. Rescuing the Princess may be small compared to her deep, dark secret."
    ],
    [
        "name": "Zootopia",
        "year": 2016,
        "locations": ["Hollywood", "Hollywood", "Hollywood"],
        "genre": "animation",
        "cast": ["Ginnifer Goodwin", "Jason Bateman", "Idris Elba"],
        "description": "From the largest elephant to the smallest shrew, the city of Zootopia is a mammal metropolis where various animals live and thrive. When Judy Hopps becomes the first rabbit to join the police force, she quickly learns how tough it is to enforce the law."
    ],
    [
        "name": "Avatar",
        "year": 2009,
        "locations": ["Hollywood", "Hollywood", "Hollywood"],
        "genre": "action",
        "cast": ["Sam Worthington", "Zoe Saldana", "Sigourney Weaver"],
        "description": "On the lush alien world of Pandora live the Na\"vi, beings who appear primitive but are highly evolved. Because the planet\"s environment is poisonous, human/Na\"vi hybrids, called Avatars, must link to human minds to allow for free movement on Pandora. Jake Sully, a paralyzed former Marine, becomes mobile again through one such Avatar and falls in love with a Na\"vi woman. As a bond with her grows, he is drawn into a battle for the survival of her world."
    ],
    [
        "name": "The Dark Knight",
        "year": 2008,
        "locations": ["Hollywood", "Hollywood", "Hollywood"],
        "genre": "action",
        "cast": ["Christian Bale", "Heath Ledger", "Aaron Eckhart"],
        "description": "With the help of allies Lt. Jim Gordon and DA Harvey Dent, Batman has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism."
    ],
    [
        "name": "Transformers",
        "year": 2007,
        "locations": ["Hollywood", "Hollywood", "Hollywood"],
        "genre": "action",
        "cast": ["Shia LaBeouf", "Megan Fox", "Josh Duhamel"],
        "description": "The fate of humanity is at stake when two races of robots, the good Autobots and the villainous Decepticons, bring their war to Earth. The robots have the ability to change into different mechanical objects as they seek the key to ultimate power. Only a human youth, Sam Witwicky can save the world from total destruction."
    ],
    [
        "name": "Titanic",
        "year": 1997,
        "locations": ["Hollywood", "Hollywood", "Hollywood"],
        "genre": "drama",
        "cast": ["Leonardo DiCaprio", "Kate Winslet", "Billy Zane"],
        "description": "The ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built. She was the most luxurious liner of her era -- the \"ship of dreams\" -- which ultimately carried over 1,500 people to their death in the ice cold waters of the North Atlantic in the early hours of April 15, 1912."
    ],
    [
        "name": "The Hunger Games",
        "year": 2012,
        "locations": ["Hollywood", "Hollywood", "Hollywood"],
        "genre": "drama",
        "cast": ["Jennifer Lawrence", "Josh Hutcherson", "Liam Hemsworth"],
        "description": "Katniss Everdeen voluntarily takes her younger sister\"s place in the Hunger Games, a televised competition in which two teenagers from each of the twelve Districts of Panem are chosen at random to fight to the death."
    ],
    [
        "name": "American Sniper",
        "year": 2014,
        "locations": ["Hollywood", "Hollywood", "Hollywood"],
        "genre": "drama",
        "cast": ["Bradley Cooper", "Jennifer Lawrence", "Kyle Gallner"],
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

func printCastAndLocation (x: [[String:Any]]) -> String {
    
    func buildCommaSeparatedList(words: [String]) -> String {
        var output = ""
        for (i, word) in words.enumerate() {
            if i == words.count - 1 {
                output += "and \(word)"
            }
            else {
                output += "\(word), "
            }
        }
        return output
    }
    var string: String = ""
    for i in x {
        if let cast = i["cast"] as? [String], locations = i["locations"] as? [String] {
            let a = buildCommaSeparatedList(cast)
            let b = buildCommaSeparatedList(locations)
            string += a + " " + b + "\n"
        }
       
    }
    return string
}
print(printCastAndLocation(movies))



//9) Given one movie write a function that takes the movie (remember to use its type)
//   as its only argument and return a tuple that contains name, year and genre.

//Write your code below


func movieWhatever (x: [String:Any]) -> (String, Int, String)? {
    guard let name = x["name"] as? String, year = x["year"] as? Int, genre = x["genre"] as? String else {
    return nil
    }
    return (name, year, genre)

}
movieWhatever(movies[0])

//10) Define a function that takes the movie array that will call the function you just created 
//    in answer to the previous question. The new function should return an array of the
//    tuples: (name, year, genre).

//Write your code below

//func movieWhateverToAllMovies (x: [[String:Any]]) -> [(String, Int, String)] {
//    var myArray2 = [(String, Int, String)]()
//    func movieWhatever2 (y: [String:Any]) -> (String, Int, String)? {
//        guard let name = y["name"] as? String, year = y["year"] as? Int, genre = y["genre"] as? String else {
//            return nil
//        }
//        return (name, year, genre)
//        
//    }
//    for i in x {
//        myArray2.append(movieWhatever2(i)!)
//    }
//    return myArray2
//}
//print(movieWhateverToAllMovies(movies))

//11) Write a function that takes the movie as its only argument that lists all cast members across movies.
//    The tricky part: no duplicates. I think you'll need to edit the data to create some doubled actors in order
//    to test this. Return should be [String]?.


func noRepeatingActors (x: [[String:Any]]) -> [String]? {
    var actorString = [String]()
    var dictActors = [String:String]()
    for i in x {
        if let cast = i["cast"] as? [String]{
            for i in cast {
                dictActors[i] = i
            }
        }
    }
    for i in dictActors.keys {
        actorString.append(i)
    }
    
    return actorString
}


print(noRepeatingActors(movies)!)


//Write your code below
