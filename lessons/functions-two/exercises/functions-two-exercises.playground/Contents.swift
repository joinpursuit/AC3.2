//: Playground - noun: a place where people can play

import UIKit

//1a) Write a function so that it will print out total cost after tip.

let itemCost = 45
let tipPercentage = 0.15

//Write your code below

func totalWithTip(cost: Double, tip: Double = 0.15) -> Double {
    let totalCost = cost + (cost*tip)
    return totalCost
}



let myFinalCost = totalWithTip(45)
print(myFinalCost)   //Fill in the arguments

//1b)Write a function  that it will print out total cost after tip and tax
let taxPercentage = 0.09


//Write your code below
func myFinalCostWithTipAndTax(cost: Double, tip: Double = 0.15, tax: Double = 0.09) -> Double {
    let finalCost = ((cost * tip) + (cost*tax) + cost)
    return finalCost
}
print(myFinalCostWithTipAndTax(45))


//2a)Write a function takes an Int as input, and returns true if it is even, and false if it is odd
func isItAnEven(number: Int) -> Bool {
    if number % 2 == 0 {
        return true }
            else { return false
            }
        }
isItAnEven(3)


//Write your code below

//2b) Using function above, write code that prints out whether dieRoll is even or odd

let dieRoll = Int(arc4random_uniform(6) + 1)

isItAnEven(dieRoll)

//3)
/*
 Write a function that prints the numbers from 1 to x. EXCEPT:
 * If the number if a multiple of 3, print "Fizz" instead of the number
 * If the number is a multiple of 5, print "Buzz" instead of the number
 * If the number is a multiple of 3 AND 5, print "FizzBuzz" instead of the number
 
 Your function should take in one parameter: x (the number to count up to)
 */
func countUpTo(x: Int){
    for i in 1...x {switch i {
    case _ where i%5==0 && i%3==0:
        print("FizzBuzz")
    case _ where i%5 == 0:
        print("Buzz")
    case _ where i%3==0:
        print("Fizz")
    default:
        print(i)
    }
}
}
countUpTo(30)

//4a) Write a function that takes [Int] as input.  It should return the largest Int in the array.

//Write your code below

func largestInt(anArray: [Int]) -> Int {
    var max = 0
    for i in 0...anArray.count-1{
    if anArray[i] > max {
        max = anArray[i]
    }
}
    return max
}
largestInt([3,45,4,5])

//4b)
let myArray = [3,5,1,3,532,1,4,91,20,30,92,143]
largestInt(myArray)
//Using your function in part a, use String interpolation to print a sentence that states what the largest Int in myArray is
print("The largest integer in myArray is \(largestInt(myArray)).")

//4c)
//Using your solution to 2a), print a sentence that states whether the largest Int in myArray is even or odd
if isItAnEven(largestInt(myArray)) {
    print("The largest integer is even")
}   else {
    print("The largest integer is odd")
}

//5a) Write a function that takes a String as input and returns the number of characters in the string

//Write your code below

func howManyChars(thisString: String) -> Int {
    return thisString.characters.count
}

//5b) Using your function above, print how many characters are in myString

let myString = "Swift is a new programming language for iOS, OS X, watchOS, and tvOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility."
print(howManyChars(myString))

//5c) Write a function that counts how many characters in a String match a specific character.  (e.g: count how many "a"s are in a String, or count how many ","s are in a String.

//Sample input:
let fiveCString = "This is a test string for your code"
//let targetCharacter = "i"

//Sample output:
//3
func howManyOf (thisChar: Character, inString: String) -> Int {
    var i = 0
    for char in inString.characters {
        if char == thisChar {
        i += 1
        }
    }
     return i
}
howManyOf("i", inString: fiveCString)



//5d) Write a function that counts how many characters in a String match one of several possible characters.  (e.g: count how many vowels are in a String, or count how many "a"s "b"s and "c"s are in a String)

//Sample input:
//let FiveDString = "This one is a little more complicated"
//let targetCharacters = ["a", "e", "i", "o" "u"]

//Sample output:
//13


//Write your code below
func multipleChars ( thatString: String, targetChars: [Character]) -> Int {
   var counter = 0
    for i in targetChars  {
        for j in thatString.characters {
            if i == j {
                counter += 1 }
        }
    }
    return counter
}
multipleChars(fiveCString, targetChars: ["k", "h", "i"])
//6) Write a function that returns the number of unique Ints in an array of Ints
//Sample input:
let inputArray = [3,1,4,1,3,2,6,1,9]

func uniqueInts (theArray: [Int]) -> Int {
    var counter = 0
    for i in 0..<theArray.count {
        var didFindDuplicate = false
        for j in (0)..<theArray.count {
            if i == j {
                continue
            }
            if theArray[i] == theArray[j] {
              didFindDuplicate = true
              break
            }
        }
        if didFindDuplicate == false {
         counter += 1
        }
    }
    return counter
}
uniqueInts(inputArray)

//Sample output:
//4

//Explanation:
//2, 4, 6, 9 are unique in the array.  Every other number is not unique.


//7) Write a function that converts a binary number into decimal.  The binary number will be given as an array of Ints.

//Sample input:
//let binaryArray = [1,0,1,1,1,0,1]
func binaryConversion(binary: [Int]) -> Double {
    let number(binary, radix: 2)
}


//Sample output:
//93

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
