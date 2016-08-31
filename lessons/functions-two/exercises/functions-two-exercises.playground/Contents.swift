//: Playground - noun: a place where people can play

import UIKit

//1a) Write a function so that it will print out total cost after tip.

let ic = 45.0
let tp = 0.15

//Write your code below
func totalWithTip(priceOfItem itemCost: Double, tipCost tipPercentage: Double) -> Double {
    return itemCost + tipPercentage
}
print(totalWithTip(priceOfItem: Double(ic), tipCost: tp))

let myFinalCost = totalWithTip(priceOfItem: Double(ic), tipCost: tp) //Fill in the arguments

//1b)Write a function  that it will print out total cost after tip and tax
let taxPercentage = 0.09

//Write your code below
func totalWithTipAndTax(priceOfItem itemCost: Double, tipCost tipPercentage: Double, taxCost taxPercentage: Double) -> Double {
    return itemCost * (taxPercentage + 1) + tipPercentage
}
print(totalWithTipAndTax(priceOfItem: Double(ic), tipCost: tp, taxCost: taxPercentage))

let myFinalCostWithTipAndTax = totalWithTipAndTax(priceOfItem: Double(ic), tipCost: tp, taxCost: taxPercentage) //Fill in the arguments

//2a)Write a function takes an Int as input, and returns true if it is even, and false if it is odd

//Write your code below
func EvenOdd(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    }else{
        return false
    }
}
EvenOdd(2)

//2b) Using function above, write code that prints out whether dieRoll is even or odd

let dieRoll = Int(arc4random_uniform(6) + 1)
if EvenOdd(dieRoll) {
    print("even")
}
else {
    print("odd")
}

//3)
/*
 Write a function that prints the numbers from 1 to x. EXCEPT:
 * If the number if a multiple of 3, print "Fizz" instead of the number
 * If the number is a multiple of 5, print "Buzz" instead of the number
 * If the number is a multiple of 3 AND 5, print "FizzBuzz" instead of the number
 
 Your function should take in one parameter: x (the number to count up to)
 */
func fb(x: Int) {
    for num in 1...x {
        if num % 3 == 0 && num % 5 == 0 {
            print("FizzBuzz")
        }else if num % 3 == 0 {
            print("Fizz")
        } else if num % 5 == 0 {
            print("Buzz")
        } else {
            print(num)
        }
    }
}

//4a) Write a function that takes [Int] as input.  It should return the largest Int in the array.

//Write your code below
func array(numbers: [Int]) -> Int {
    var largestInt = numbers[0]
    for num in numbers {
        if num > largestInt {
            largestInt = num
        }
    }
    return largestInt
}

//4b)
let myArray = [3,5,1,3,532,1,4,91,20,30,92,143]

//Using your function in part a, use String interpolation to print a sentence that states what the largest Int in myArray is

array(myArray)
var largestIntInMyArray = array(myArray)
print("The largest Int in myArray is \(largestIntInMyArray)")

//4c)
//Using your solution to 2a), print a sentence that states whether the largest Int in myArray is even or odd
if array(myArray) % 2 == 0 {
    print("The largest Int is even")
}
else {
    print("The largest Int in odd")
}

//5a) Write a function that takes a String as input and returns the number of characters in the string

//Write your code below
func myStringOne(i: String) -> Int {
    return i.characters.count
}


//5b) Using your function above, print how many characters are in myString

let myString = "Swift is a new programming language for iOS, OS X, watchOS, and tvOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility."
myStringOne(myString)

//5c) Write a function that counts how many characters in a String match a specific character.  (e.g: count how many "a"s are in a String, or count how many ","s are in a String.

//Sample input:
let fiveCString = "This is a test string for your code"
let targetCharacter: Character = "i"

//Sample output:
//3

//func howManyCharacterMatch(char: Character, with thisString: String) {
//    
//}
//
//howManyCharacterMatch(targetCharacter, with: fiveCString)

func howManyCharacters(sentence: String, compareChar: Character) -> Int {
    var i = 0
    for char in sentence.characters {
        if char == compareChar {
            i += 1
        }
    }
    return i
}
howManyCharacters(fiveCString, compareChar: targetCharacter)

//5d) Write a function that counts how many characters in a String match one of several possible characters.  (e.g: count how many vowels are in a String, or count how many "a"s "b"s and "c"s are in a Sting)

//Sample input:
let fiveDString = "This one is a little more complicated"
let targetCharacters = ["a", "e", "i", "o", "u"]

//Sample output:
//13
//Write your code below
func howManyCharMatch(st: String, ch: Character) -> Int {
    var j = 0
    for char in st.characters {
        if char == "a" || char == "e" || char == "i" || char == "o" || char == "u" {
            j += 1
        }
    }
    return j
}
howManyCharMatch(fiveDString, ch: targetCharacter)


//6) Write a function that returns the number of unique Ints in an array of Ints
//Sample input:
let inputArray = [3,1,4,1,3,2,6,1,9]

[4,4,5,6]

[4,5,6]

//Sample output:
//4

//Explanation:
//2, 4, 6, 9 are unique in the array.  Every other number is not unique.

func arrayOfInt(array: [Int]) -> [Int] {
    let uniqueSet = Set(array)
    let uniqueArray = Array(uniqueSet)
    return uniqueArray
}

//func uniqueArray(array: [Int]) -> [Int] {
//    var uniqueArray = [Int]()
//    for num in array {
//        for uniqueNum in uniqueArray {
//            if num != uniqueNum {
//                uniqueArray.append(num)
//            } else {
//                continue
//            }
//        }
//    }
//}

arrayOfInt(inputArray)

//7) Write a function that converts a binary number into decimal.  The binary number will be given as an array of Ints.

//Sample input:
let binaryArray = [1,0,1,1,1,0,1]

//Sample output:
//93

func convertIntToString(nums: [Int]) -> String {
    var resultString = ""
    for num in nums {
        resultString += "\(num)"
    }
    return resultString
}
convertIntToString(binaryArray)

func binaryNum(b: [Int]) -> Double {
    let stringBinary = convertIntToString(b)
    let num = Int(stringBinary, radix: 2)!
//    guard let num = Int(stringBinary, radix: 2) else { return nil }
    
    return Double(num)
}
print(binaryNum(binaryArray))

//if let binaryNum = binaryNum(binaryArray) {
//    print(binaryNum)
//}



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
