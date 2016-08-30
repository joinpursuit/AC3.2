//: Playground - noun: a place where people can play

import UIKit

//1a) Write a function so that it will print out total cost after tip.

let c = 45.0
let t = 0.15

//Write your code below

func totalWithTip(itemCost: Double, tipPercentage: Double) {
    let tCost = itemCost * tipPercentage + itemCost
    print(tCost)
}

totalWithTip(c, tipPercentage: t)

//let myFinalCost = totalWithTip() //Fill in the arguments



//1b)Write a function  that it will print out total cost after tip and tax
let taxPercentage = 0.09

//Write your code below

func costTipAndTax(itemTotal: Double, taxPercentage: Double) {
    let cost = itemTotal * taxPercentage + itemTotal
    print(cost)
}

costTipAndTax(45.0, taxPercentage: taxPercentage)



//2a)Write a function takes an Int as input, and returns true if it is even, and false if it is odd

//Write your code below

func trueOrFalse(num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    }
    return false
}

trueOrFalse(5)



//2b) Using function above, write code that prints out whether dieRoll is even or odd

let dieRoll = Int(arc4random_uniform(6) + 1)

print(trueOrFalse(dieRoll))



//3)
/*
 Write a function that prints the numbers from 1 to x. EXCEPT:
 * If the number if a multiple of 3, print "Fizz" instead of the number
 * If the number is a multiple of 5, print "Buzz" instead of the number
 * If the number is a multiple of 3 AND 5, print "FizzBuzz" instead of the number
 
 Your function should take in one parameter: x (the number to count up to)
 */



func fizzBuzz(numTwo: Int) {
    for num in 1...numTwo {
        if num % 3 == 0 && num % 5 == 0 {
            print("FizzBuzz")
        } else if num % 3 == 0 {
            print("Fizz")
        } else if num % 5 == 0 {
            print("Buzz")
        } else {
            print(num)
        }
    }
}

fizzBuzz(30)



//4a) Write a function that takes [Int] as input.  It should return the largest Int in the array.

//Write your code below

func largeArray(myArray: [Int]) -> Int {
    var num = 0
    for i in 0..<myArray.count {
        if myArray[i] > num {
            num = myArray[i]
        }
    }
    return num
}

largeArray([2,4,10,70])


//4b)
let myArray = [3,5,1,3,532,1,4,91,20,30,92,143]

//Using your function in part a, use String interpolation to print a sentence that states what the largest Int in myArray is

print("The largest number in myArray is \(largeArray(myArray)).")

//4c)
//Using your solution to 2a), print a sentence that states whether the largest Int in myArray is even or odd


func evenOrOdd(num: Int) -> String {
    if num % 2 == 0 {
    return "even"
    }
    return "odd"
}

evenOrOdd(5)

print("The number \(largeArray(myArray)) is \(evenOrOdd(532)). ")

//5a) Write a function that takes a String as input and returns the number of characters in the string

//Write your code below

func string2Char(myString: String) -> Int {
    var counter = 0
    for i in myString.characters {
        if i != " " {
            counter += 1
            }
    }
    return counter
}

string2Char("brand new day")



//5b) Using your function above, print how many characters are in myString

let myString = "Swift is a new programming language for iOS, OS X, watchOS, and tvOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility."

print(string2Char(myString))



//5c) Write a function that counts how many characters in a String match a specific character.  (e.g: count how many "a"s are in a String, or count how many ","s are in a String.

//Sample input:
//let FiveCString = "This is a test string for your code"
//let targetCharacter = "i"

//Sample output:
//3

func specificCharacter(myNewString: String, myChar: Character) -> Int {
    var counter = 0
    for i in myNewString.characters {
        if i == myChar {
            counter += 1
        }
    }
    return counter
}

specificCharacter(myString, myChar: "b")



//5d) Write a function that counts how many characters in a String match one of several possible characters.  (e.g: count how many vowels are in a String, or count how many "a"s "b"s and "c"s are in a Sting)

//Sample input:
//let FiveDString = "This one is a little more complicated"
//let targetCharacters = ["a", "e", "i", "o" "u"]

//Sample output:
//13


//Write your code below

var vowels: [Character] = ["a", "e", "i", "o", "u"]

func countChars(aString: String, newChar: [Character]) -> Int {
    var counter = 0
    for i in aString.characters {
        for a in 0..<newChar.count {
        if i == newChar[a] {
            counter += 1
            }
        }
        }
    return counter
}

countChars("Hello beautiful", newChar: vowels)



//6) Write a function that returns the number of unique Ints in an array of Ints
//Sample input:
//let inputArray = [3,1,4,1,3,2,6,1,9]

//Sample output:
//4

//Explanation:
//2, 4, 6, 9 are unique in the array.  Every other number is not unique.

func uniqueInts(myInt: [Int], compareInts: [Int]) -> Int {
    var counter = 0
    for num in 0..<myInt.count {
        for i in 0..<compareInts.count {
            if myInt[num] == compareInts[i] {
                counter += 1
            }
        }
    }
    return counter
}

var myInt: [Int] = [2,5,1,6,7,3,21,356,8,2]
let compareInts: [Int] = [2,4,6,8,10]

let sameInts = uniqueInts(myInt, compareInts: compareInts)
print(sameInts)

//7) Write a function that converts a binary number into decimal.  The binary number will be given as an array of Ints.

//Sample input:
//let binaryArray = [1,0,1,1,1,0,1]

//Sample output:
//93

infix operator ^^ { associativity left precedence 160 }
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

4^^2


func bin2Dec(binaryArray: [Int]) -> Int {
    var num = 0
    var sum = 0
    var counter = 0
    for i in 0..<binaryArray.count {
        if binaryArray[i] == 1 {
            num = i^^counter
            sum = sum + num
            counter += 1
        }
    }
    return sum
}



print(bin2Dec([1,0]))




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
