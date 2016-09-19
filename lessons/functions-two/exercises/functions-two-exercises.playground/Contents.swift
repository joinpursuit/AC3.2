//: Playground - noun: a place where people can play

import UIKit
import Foundation

//1a) Write a function so that it will print out total cost after tip.

let itemCost = 45
let tipPercentage = 0.15

//Write your code below

func totalWithTip(cost: Int, tip: Double)  {
    let totalTip = Double(cost) * tip
    let totalPrice = totalTip + Double(cost)
    print(totalPrice)
}

totalWithTip(itemCost, tip: tipPercentage)





let myFinalCost = totalWithTip(itemCost, tip: tipPercentage) //Fill in the arguments

//1b)Write a function  that it will print out total cost after tip and tax
let taxPercentage = 0.09

//Write your code below

func totalWithTipAndTax(cost: Int, tip: Double, tax: Double)  {
    let totalTax = (Double(cost) * tax)
    let totalTip = (Double(cost) + totalTax) * tip
    let totalPrice = Double(cost) + totalTax + totalTip
    print(totalPrice)
}

let myFinalCostWithTipAndTax = totalWithTipAndTax(itemCost, tip: tipPercentage, tax: taxPercentage) //Fill in the arguments


//2a)Write a function takes an Int as input, and returns true if it is even, and false if it is odd

//Write your code below

func evenOrOdd (x: Int) -> Bool {
    if x%2 == 0 {
        return true
    }
    return false
}

//2b) Using function above, write code that prints out whether dieRoll is even or odd

let dieRoll = Int(arc4random_uniform(6) + 1)

if evenOrOdd(dieRoll) == true {
print("Your die roll was even")
} else {
    print("Your die roll was odd")
}

//3)
/*
 Write a function that prints the numbers from 1 to x. EXCEPT:
 * If the number if a multiple of 3, print "Fizz" instead of the number
 * If the number is a multiple of 5, print "Buzz" instead of the number
 * If the number is a multiple of 3 AND 5, print "FizzBuzz" instead of the number
 
 Your function should take in one parameter: x (the number to count up to)
 */
//
//func fizzBuzz(x: Int) {
//    for i in 1...x{
//        if i%3 == 0 && i%5 == 0{
//            print("FizzBuzz")
//        } else if i%5 == 0{
//            print("Buzz")
//        } else if i%3 == 0{
//            print("Fizz")
//        } else {
//            print(i)
//        }
//    }
//
//}
//
//fizzBuzz(16)


//4a) Write a function that takes [Int] as input.  It should return the largest Int in the array.

//Write your code below

func largestInt (x: [Int]) -> Int{
    var largest = 0
    for i in x {
        if i > largest{
        largest = i
        }
    }
    return largest
}



//4b)
let myArray = [3,5,1,3,532,1,4,91,20,30,92,143]

//Using your function in part a, use String interpolation to print a sentence that states what the largest Int in myArray is

print("The largest Int in myArray is \(largestInt(myArray))")


//4c)
//Using your solution to 2a), print a sentence that states whether the largest Int in myArray is even or odd

if evenOrOdd(largestInt(myArray)) == true {
    print("\(largestInt(myArray)) is even")
} else {
    print("\(largestInt(myArray)) is odd")
}

//5a) Write a function that takes a String as input and returns the number of characters in the string

//Write your code below

func numberOfChar (x: String) -> Int {
    var count = 0
    for i in 0...x.characters.count {
         count = i
    }
    return count
}



//5b) Using your function above, print how many characters are in myString

let myString = "Swift is a new programming language for iOS, OS X, watchOS, and tvOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility."

print("\(numberOfChar(myString)) characters are in myString, including the whitespace")

//5c) Write a function that counts how many characters in a String match a specific character.  (e.g: count how many "a"s are in a String, or count how many ","s are in a String.

func characterMatch (x: Character, y: String) {
    var targetnumber = 0
    for i in y.characters {
        if x == i {
            targetnumber += 1
        }
        
    }
    print(targetnumber)
}
let test = "I am i am iiiiiii"
characterMatch("i", y: test)


//Sample input:
//let FiveCString = "This is a test string for your code"
//let targetCharacter = "i"

//Sample output:
//3

var array = ["s","c","v"]

//5d) Write a function that counts how many characters in a String match one of several possible characters.  (e.g: count how many vowels are in a String, or count how many "a"s "b"s and "c"s are in a Sting)

//Sample input:
//let FiveDString = "This one is a little more complicated"
//let targetCharacters = ["a", "e", "i", "o" "u"]

//Sample output:
//13


//Write your code below

func characterMatch (x: [String] , y: String) {
    var targetnumber = 0
    
    for v in x{
        for i in y.characters {
            if v == String(i) {
                targetnumber += 1
            }
        }
    }
    print(targetnumber)
    
}


characterMatch(["a", "e", "i", "o", "u"], y: "This one is a little more complicated")

//6) Write a function that returns the number of unique Ints in an array of Ints
//Sample input:
//let inputArray = [3,1,4,1,3,2,6,1,9]

//Sample output:
//4

//Explanation:
//2, 4, 6, 9 are unique in the array.  Every other number is not unique.

func uniqueNumber (x: [Int]) -> [Int] {
    let unique = Set(x)
    let uniqueArray = Array(unique.sort())
    return uniqueArray
}

//func uniqueNumber (x: [Int]) {
//    var amountOfUnique = 0
//    let sorted = x.sort()
//    var all = x(count: 9 , repeatedValue: nil )
//    
//    for i in sorted {
//        //if  i == i  {
//        print(i)
//        //amountOfUnique += 1
//        //}
//    }
//    //return amountOfUnique
//}
uniqueNumber([3,1,4,1,3,2,6,1,9])

//7) Write a function that converts a binary number into decimal.  The binary number will be given as an array of Ints.

//Sample input:
//let binaryArray = [1,0,1,1,1,0,1]

//Sample output:
//93

//func convert (x: [Int]) {
//    var y = ""
//    
//    for i in x{
//        y += String(i)
//    }
//    
//    let together = ("0b\(y)")
//    let optional = Int(together)!
//
//    print(optional)
//    
//}
//convert([1,0,1,1,1,0,1])
0b1011101


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


