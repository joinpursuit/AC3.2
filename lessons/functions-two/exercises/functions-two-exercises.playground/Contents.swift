//: Playground - noun: a place where people can play

import UIKit

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

//1a) Write a function so that it will print out total cost after tip.

let itemCost = 45.00
let tipPercentage = 0.15

//Write your code below

func totalWithTip(shelfPrice x: Double?, tipPercent y: Double?) {
    if let x = x , y = y {
        let tip = x * y
        print(tip + x)
    } else {
        print("???")
    }
}

let myFinalCost = totalWithTip(shelfPrice: itemCost, tipPercent: tipPercentage)
myFinalCost

//1b)Write a function  that it will print out total cost after tip and tax
let taxPercentage = 0.09

//Write your code below

func totalWithTipAndTax(shelfPrice x: Double?, tipPercent y: Double?, taxRate z: Double?) {
    if let x = x , y = y, z = z {
        print((z * x) + (y * x) + x)
    } else {
        print("???")
    }

}

let myFinalCostWithTipAndTax = totalWithTipAndTax(shelfPrice: itemCost, tipPercent: tipPercentage, taxRate: taxPercentage)


//2a)Write a function takes an Int as input, and returns true if it is even, and false if it is odd

//Write your code below

func isEven(num:Int) -> Bool { // I literally just modified the code from the Pokemon random number generator in the Optionals exercises. Thanks!
    let test = num % 2
    if test == 0 {
        return true
    }
    return false
}

//2b) Using function above, write code that prints out whether dieRoll is even or odd

let dieRoll = Int(arc4random_uniform(6) + 1)
print(isEven(dieRoll))

//3)
/*
 Write a function that prints the numbers from 1 to x. EXCEPT:
 * If the number if a multiple of 3, print "Fizz" instead of the number
 * If the number is a multiple of 5, print "Buzz" instead of the number
 * If the number is a multiple of 3 AND 5, print "FizzBuzz" instead of the number
 
 Your function should take in one parameter: x (the number to count up to)
 */

func fizzBuzz(x: Int) {
    for num in 1...x {
        if num%3 == 0 && num%5 == 0{
            print("FizzBuzz")
        } else if num%3 == 0 {
            print("Fizz")
        } else if num%5 == 0{
            print("Buzz")
        } else {
            print(num)
        }
    }
}

fizzBuzz(30)

//4a) Write a function that takes [Int] as input.  It should return the largest Int in the array.

//Write your code below

func maxNumInArray(arr:[Int]) -> Int {
    var max = 0
    for num in arr {
        if num > max {
            max = num
        }
    }
    return max
}

maxNumInArray([7,1, 666, 178])

//4b)
let myArray = [3,5,1,3,532,1,4,91,20,30,92,143]

//Using your function in part a, use String interpolation to print a sentence that states what the largest Int in myArray is

var ourBiggest = maxNumInArray(myArray)

print("The largest number in myArray is \(ourBiggest).")

//4c)
//Using your solution to 2a), print a sentence that states whether the largest Int in myArray is even or odd

if isEven(ourBiggest) {
    print("The largest number in myArray is even.")
} else {
    print("The largest number in myArray is odd.")
}

//5a) Write a function that takes a String as input and returns the number of characters in the string

//Write your code below

func charCount(word: String) -> Int {
    return word.characters.count
}

charCount("c a t s")

func superCharCount64(sentence:String) -> Int {
    var count = 0
    for char in sentence.characters {
        if char == " " {
            continue
        } else {
            count += 1
        }
    }
    return count
}

superCharCount64("c a t s")

//5b) Using your function above, print how many characters are in myString

let myString = "Swift is a new programming language for iOS, OS X, watchOS, and tvOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility."

print("There are \(charCount(myString)) characters in this string, counting all whitespace.")
print("There are only \(superCharCount64(myString)) characters in this string, if we ignore all the whitespace, though.")

//5c) Write a function that counts how many characters in a String match a specific character.  (e.g: count how many "a"s are in a String, or count how many ","s are in a String.

//Sample input:
//let FiveCString = "This is a test string for your code"
//let targetCharacter = "i"

//Sample output:
//3

func symbolCounter(symbol x: Character, string y : String) -> Int {
    var count = 0
    for char in y.characters {
        if char == x {
            count += 1
        } else {
            continue
        }
    }
    return count
}

let sample = "The Quick brwn m m m m fox qwrtyuio iuy tre the lazy dog."

symbolCounter(symbol: "e", string: sample)

//5d) Write a function that counts how many characters in a String match one of several possible characters.  (e.g: count how many vowels are in a String, or count how many "a"s "b"s and "c"s are in a Sting)

//Sample input:
let FiveDString = "This one is a little more complicated"
let targetCharacters = ["a", "e", "i", "o", "u"]

//Sample output:
//13

func symbolCounterHelper(symbol x: Character, array y: [String]) -> Int{
    var count = 0
    for char in y {
        if Character(char) == x {
            count += 1
        } else {
            continue
        }
    }
    return count
}

func superSymbolCounter(targets x: [String], string y: String) -> Int {
    var count = 0
    for char in y.characters {
        count += symbolCounterHelper(symbol: char, array: x)
    }
    return count
}

superSymbolCounter(targets: targetCharacters, string: FiveDString)

//Write your code below
//
//func symbolArrayCounter(symbol x: [String], string y : String) -> Int {
//    var count = 0
//    var cheat = Array(arrayLiteral: y) // This is not in the spirit of Swift
//    for i in 0...y.characters.count-1 {
//        for j in 0...x.count - 1 {
//            if cheat[i] == x[j] {
//                count += 1
//            }
//        }
//    }
//    return count
//}
//
//symbolArrayCounter(symbol: targetCharacters, string: FiveDString)

/*
 Actually, we neeed to use the method .contains here
*/

//6) Write a function that returns the number of unique Ints in an array of Ints
//Sample input:
let inputArray = [3,1,4,1,3,2,6,1,9]

//Sample output:
//4

//Explanation:
//2, 4, 6, 9 are unique in the array.  Every other number is not unique.

/*
 What if we ran each number in the array through a helper function that figures out if there are any duplicates?
 A loop that calls this function for each number in turn, then increments a count if the helper returns 1
*/

func uniqueCounterHelper(symbol x: Int, array y: [Int]) -> Int{
    var count = 0
    for num in y {
        if num == x {
            count += 1
        } else {
            continue
        }
    }
    return count
}

func uniqueCounter(targets x: [Int]) -> Int {
    var count = 0
    var localCount: Int
    for num in x {
        localCount = 0
        localCount += uniqueCounterHelper(symbol: num, array: x)
        if localCount == 1 {
            count += 1
        }
    }
    return count
}

uniqueCounter(targets: inputArray)

//7) Write a function that converts a binary number into decimal.  The binary number will be given as an array of Ints.

//Sample input:
let binaryArray = [1,0,1,1,1,0,1]

//Sample output:
//93

//func binaryConverter(bi: [Int]) -> Int {
//    var base = 2
//    var sum = 0
//    for index in 0..<bi.count {
//        if bi[index] == 0 {
//            continue
//        } else {
//            //pow(1,4)
//        }
//    }
//    return sum
//}

binaryConverter(binaryArray)

//8) Copy the movie dictionary from homework two and add another [String] to each movie.
//   Name it "locations" and add some dummy data. Use the re-factored nested function
//   from the full lesson (we didn't go over it) to print both the cast list and the 
//   locations.

//Write your code below



//9) Given one movie write a function that takes the movie (remember to use its type)
//   as its only argument and return a tuple that contains name, year and genre.

//Write your code below


//10) Define a function that takes the movie array that will call the function you just created 
//    in answer to the previous question. The new function should return an array of the
//    tuples: (name, year, genre).

//Write your code below


//11) Write a function that takes the movie as its only argument that lists all cast members across movies.
//    The tricky part: no duplicates. I think you'll need to edit the data to create some doubled actors in order
//    to test this. Return should be [String]?.

//Write your code below
