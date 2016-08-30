//: Playground - noun: a place where people can play

import UIKit

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

func binaryConverter(bi: [Int]) -> Int {
    let base = 2
    var sum = 0
    for index in 0...bi.count-1 {
        if bi[index] == 0 {
            continue
        } else {
            // sum += baseindex I want this to raise two to the power of the index number...
        }
    }
    return sum
}

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
