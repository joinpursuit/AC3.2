//: Playground - noun: a place where people can play

import UIKit

// Closures-One-Exercises

//1. Create a closure that has no parameters or values and returns "Hello Closures!". Check by passing closure's return to a variable


let hello = { () -> String in return "Hello Closures!" }
hello()


//2. Create a closure that takes one Int and returns the doubled value. Check by passing closure's return to a variable.


let doubler = { (x: Int) -> Int in return x * 2}
doubler(15)
doubler(10)
doubler(5)


//3. Create a closure that takes one Int and returns a bool whether or not it's divisible by 3.


let divisibleByThree = { (x: Int) -> Bool in return x % 3 == 0 }
divisibleByThree(9)
divisibleByThree(40)
divisibleByThree(17)


//4. Create a closure that takes two strings as input and returns the longest character count of the two strings.


let longestCharacterCount = { (x: String, y: String) -> Int in
    var xCount = x.characters.count
    var yCount = y.characters.count
    if xCount > yCount {
        return xCount
    } else {
        return yCount
    }
}
longestCharacterCount("Hello", "World!")


//5a. Create a closure that takes an array of Int as input and returns the largest element in the array


let largestElement = { (x: [Int]) -> Int in
    var largest = x[0]
    for i in x {
        if i > largest {
            largest = i
        }
    }
    return largest
}
largestElement([12, 2, 10, 50, 7, 35, 8])


//5b.  Create a closure that takes an array of Int and variable x: Int as input and returns the xth largest element in the array.  Assume x is always < the count of the array


var xthLargest = { (a: [Int], x: Int) -> Int in
    var sortedArray = a.sort { $0 > $1 }
    return sortedArray.removeAtIndex(x - 1)
}
xthLargest([12, 2, 10, 50, 7, 35, 8], 6)


//5c.  Rewrite 5b and add handling for cases where x >= the count of the array (Hint: Use optionals)

//Higher order functions

let myArray = [34,42,42,1,3,4,3,2,49]


var xthLargest5c = { (a: [Int], x: Int) -> Int? in
    var sortedArray = a.sort { $0 > $1 }
    if x > a.count {
        return nil
    } else {
        return sortedArray.removeAtIndex(x - 1)
    }
}
xthLargest5c(myArray, 9)
xthLargest5c(myArray, 5)
xthLargest5c(myArray, 50)


//6a. Sort myArray in ascending order by defining the constant ascendingOrder below.


//let myArray = [34,42,42,1,3,4,3,2,49]

let ascendingOrder = { (x: Int, y: Int) -> Bool in
    return x < y
}
let mySortedArray = myArray.sort(ascendingOrder)


//6b. Sort myArray in descending order by defining the constant descendingOrder below.


//let myArray = [34,42,42,1,3,4,3,2,49]

let descendingOrder = { (x: Int, y: Int) -> Bool in
    return x > y
}
let mySecondSortedArray = myArray.sort(descendingOrder)


//7a. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Assume each array will have at least 3 elements


let arrayOfArrays = [[3,65,2,4],[25,3,1,6],[245,2,3,5,74]]

arrayOfArrays.sort { (x: [Int], y: [Int]) -> Bool in
    return x[2] < y[2]
}


//7b. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Don't assume each array will have at least 3 elements.  Put all arrays that have less than 3 elements at the end in any order.


func arrayGreaterThan3 (x: [[Int]]) -> [[Int]] {
    var validArray : [[Int]] = []
    var invalidArray : [[Int]] = []
    var sortedValidArray : [[Int]] = []
    for i in x {
        if i.count >= 3 {
            validArray.append(i)
        } else {
            invalidArray.append(i)
        }
    }
    
    sortedValidArray = validArray.sort { (x: [Int], y: [Int] ) -> Bool in
        x[2] < y[2] }
    return sortedValidArray
}

var arr = [[1,2,3,4,5], [2,3,4,5,6], [3,4], [12], [1,3,5,6,7,9], [1,2]]
arrayGreaterThan3(arr)


//8a. Sort the string below in descending order according the dictionary letterValues


let letterValues = [
    "a" : 54,
    "b" : 24,
    "c" : 42,
    "d" : 31,
    "e" : 35,
    "f" : 14,
    "g" : 15,
    "h" : 311,
    "i" : 312,
    "j" : 32,
    "k" : 93,
    "l" : 203,
    "m" : 212,
    "n" : 41,
    "o" : 102,
    "p" : 999,
    "q" : 1044,
    "r" : 404,
    "s" : 649,
    "t" : 414,
    "u" : 121,
    "v" : 838,
    "w" : 555,
    "x" : 1001,
    "y" : 123,
    "z" : 432
]


var codeString = "aldfjaekwjnfaekjnf"
var arrCodeString = Array(codeString.characters)

arrCodeString.sort { ( x: Character, y: Character ) -> Bool in
    var aVal = letterValues[String(x)]
    var bVal = letterValues[String(y)]
    return aVal > bVal
}


//8b.  Sort the string below in ascending order according the dictionary letterValues


var codeStringTwo = "znwemnrfewpiqn"
var arrCodeStringTwo = Array(codeStringTwo.characters)

arrCodeStringTwo.sort { ( x: Character, y: Character ) -> Bool in
    var aVal = letterValues[String(x)]
    var bVal = letterValues[String(y)]
    return aVal < bVal
}


//9.  Write a function that takes a function as input and returns a function that doubles the output of the input function

//Input: (Int) -> Int
//Output: (Int) -> Int

//10.  Write a closure tripleNumber that takes no arguments and returns void.  It should multiply the global variable number by 3 each time the closure is run.


var number = 1

var tripleNumber = { () -> Void in
    number *= 3
}
tripleNumber()
tripleNumber()
tripleNumber()
print(number)


//9. Given a tuple representation of our names from before:

let firstAndLastTuples = [("Johann S.", "Bach"),
                                 ("Claudio", "Monteverdi"),
                                 ("Duke", "Ellington"),
                                 ("W. A.", "Mozart"),
                                 ("Nicolai","Rimsky-Korsakov"),
                                 ("Scott","Joplin"),
                                 ("Josquin","Des Prez")]

// sort the array of tuples by last name. Print the sorted array using string interpolation so that
// the output looks like:
// Bach, Johann S.
// Des Prez, Josquin
// .
// .
// .


var sortedByLast = firstAndLastTuples.sort { ( x: (String, String), y: (String, String)) -> Bool in
    return x.1 < y.1
}

for i in sortedByLast {
    print("\(i.1), \(i.0)")
}


//10. Build an array of tuples representing everyone in the class. Here you are sorted by first name:
//

//Amber Spadafora	3201
//Ana Ma	3202
//Annie Tung	3203
//Cristopher Chavez	3204
//Eashir Arafat	3205
//Edward Anchundia	3206
//Emily Chu	3207
//Eric Chang	3208
//Erica Stevens	3209
//Fernando Ventura	3210
//Harichandan Singh	3211
//Ilmira Estil	3212
//Jermaine Kelly	3213
//Gabriel Breshears	3214
//Kadell Gregory	3215
//Kareem James	3216
//Karen  Manzanares Fuentes 	3217
//Leandro Nunez	3218
//Liam Kane	3219
//Luz Loayza Herrera	3220
//Madushani Lekam Wasam Liyanage	3221
//Marcel Chaucer	3222
//Margaret Ikeda	3223
//Maria Scutaru	3224
//Marty Avedon	3225
//Michael Pinnock	3226
//Miti  Shah	3227
//Rukiye Karadeniz	3228
//Sabrina Ip	3229
//Simone Grant	3230
//Sophia Barrett	3231
//Thinley  Dorjee	3232
//Tom Seymour	3233
//Tong Lin	3234
//Tyler Newton	3235
//Victor Zhong	3236

// Here's an example of how to start:
let ac32folks = [("Amber", "Spadafora",	3201),
                 ("Ana", "Ma",	3202),
                 ("Annie", "Tung",	3203),
                 ("Cristopher", "Chavez", 3204),
                 ("Eashir", "Arafat", 3205),
                 ("Edward", "Anchundia", 3206),
                 ("Emily", "Chu", 3207),
                 ("Eric", "Chang", 3208),
                 ("Erica", "Stevens", 3209),
                 ("Fernando", "Ventura", 3210),
                 ("Harichandan", "Singh", 3211)
]

// and so on...

// Build a sort comparison closure that will bring your name as close to the top as possible.
// We will use this to determine the order we use to access the microwave.
// Feel free to add fields to the tuple to accomplish this -- yes, this is a cheat.


var sortedFolks = ac32folks.sort { (x: (String, String, Int), y: (String, String, Int)) -> Bool in
    x.1 == "Singh"
}


//11. Create a closure that takes an two arrays of strings as input. Output a new string with the contents of the arrays in alternating order and separated by a space. If one array's length is longer than the other, append the rest of it's contents to the new string.

// eg: input array1: ["Hello", "My", "Friend"] array2: ["Darkness", "Old"]
//      output string: "Hello Darkness My Old Friend



//var alternatingString = { (x: [String], y: [String]) -> String in
//    var outputString : String = ""
//    var bigCount = x.count
//    var smallCount = y.count
//    
//    
//}

//alternatingString(["Hello", "My", "Friend"], ["Darkness", "Old"])









