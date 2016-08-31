//: Playground - noun: a place where people can play

import UIKit

// Closures-One-Exercises

//1. Create a closure that has no parameters or values and prints "Hello Closures!". Check by passing closure's return to a variable


var greetingClosure: () -> () = {
    print("Hello Closures!")
}

greetingClosure()

//2. Create a closure that takes one Int and returns the doubled value. Check by passing closure's return to a variable.

var double: (Int) -> Int = { (a: Int) -> Int in
    return 2 * a
}

print(double(9))


//3. Create a closure that takes one Int and returns a bool whether or not it's divisible by 3.

var isDivisibleByThree: (Int) -> Bool = { (a: Int) -> Bool in
    if a % 3 == 0 {
        return true
    }
    else {
        return false
    }
}

print(isDivisibleByThree(345))

//4. Create a closure that takes two strings as input and returns the longest character count of the two strings.

var longestCharCount: (String, String) -> Int = { (a:String, b:String ) -> Int in
    var counter = 0
    var aCount = a.characters.count
    var bCount = b.characters.count
    if  aCount > bCount {
        counter = aCount
    }
    else {
        counter = bCount
    }
    return counter
}

print(longestCharCount("Madushani", "Shashi"))


//5a. Create a closure that takes an array of Int as input and returns the largest element in the array

var largestElement: [Int] -> Int = { (myArray: [Int]) -> Int in
    var num = 0
    for element in myArray {
        if element > num {
            num = element
        }
    }
   return num
}

print(largestElement([2, 4, 65, 1, 56]))


//5b.  Create a closure that takes an array of Int and variable x: Int as input and returns the xth largest element in the array.  Assume x is always < the count of the array


var xthLargeElement: ([Int], Int) -> Int = { (myArray: [Int], x: Int) -> Int in
    
    var sortDescending = myArray.sort { (a: Int, b: Int) -> Bool in
        return a > b
        
    }
    var xthLargest = sortDescending[x-1]
    return xthLargest
}

print(xthLargeElement([5, 3, 87, 12, 56, 100], 3))


//5c.  Rewrite 5b and add handling for cases where x >= the count of the array (Hint: Use optionals)

//Higher order functions

//let myArray = [34,42,42,1,3,4,3,2,49]
//
//
//var xthLargeElementOptional: ([Int], Int) -> Int? = { (myArray: [Int], x: Int) -> Int? in
//    
//    var sortAscending = myArray.sort { (a: Int, b: Int) -> Bool in
//        return a > b
//        
//    }
//
//    var sortedArray = [Int?]()
//    if let xthLargest = sortedArray[x-1]{
//        var myEl = xthLargest
//    }
//    return myEl
//}
//
//print(xthLargeElement([5, 3, 87, 12, 56, 100], 9))

//6a. Sort myArray in ascending order by defining the constant ascendingOrder below.

var myArray = [4, 23, 12, 54,3,76]
let ascendingOrder = { (a: Int, b: Int) -> Bool in
    return a < b
}

let mySortedArray = myArray.sort(ascendingOrder)
print(mySortedArray)




//6b. Sort myArray in descending order by defining the constant descendingOrder below.

let descendingOrder = { (a: Int, b: Int) -> Bool in
    return a > b
}

let mySecondSortedArray = myArray.sort(descendingOrder)
print(mySecondSortedArray)




let arrayOfArrays = [[3,65,2,4],[25,3,1,6],[245,2,3,5,74]]

//7a. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Assume each array will have at least 3 elements


        let ascendingOrder1 = { (array1: [Int], array2: [Int]) -> Bool in
            var a = array1[2]
            var b = array2[2]
            return a < b
        }

print(arrayOfArrays.sort(ascendingOrder1))


//let sortByThirdElement: [[Int]] -> [[Int]] = {(myArrayOfArrays: [[Int]]) -> [[Int]] in

//for anArray in myArrayOfArrays {
//    }
//    return
//}
//



//7b. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Don't assume each array will have at least 3 elements.  Put all arrays that have less than 3 elements at the end in any order.



//
//let ascendingOrder2 = { (array1: [Int], array2: [Int]) -> Bool? in
//    var a: Int?
//    var b: Int?
//    a = array1[2]
//    b = array2[2]
//    
//    if let num1 = a, num2 = b {
//        return a < b
//    }
//    else {
//        return nil
//    }
//}
//
//if arrayOfArrays.count < 3 {
//    
//}

//print(arrayOfArrays1.sort(ascendingOrder1))


//var arrayOfArrays1 = [[3,65,2,4],[25,3,1,6],[245,2,3,5,74], [9]]
//
//let sortArray = { (myArray: [[Int]], trueOrFalse: Bool ) -> [[Int]] in
//    var makingASortedArray: [[Int]]
//    for array in myArray {
//        if array.count < 3 {
//            makingASortedArray.append(array)
//        }
//    
//        else {
//            let ascendingOrder2 = { (array1: [Int], array2: [Int]) -> Bool? in
//                var a: Int?
//                var b: Int?
//                a = array1[2]
//                b = array2[2]
//        
//                if let num1 = a, num2 = b {
//                    return a < b
//                }
//                else {
//                    return nil
//                }
//                
//            }
//        }
//    }
//    return myArray.sort(ascendingOrder2)
//}









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

//8a. Sort the string below in descending order according the dictionary letterValues

var codeString = "aldfjaekwjnfaekjnf"

let codeStringAsArr = Array(codeString.characters)

codeStringAsArr.sort{(a: Character, b: Character) -> Bool in
    let aValue = letterValues[String(a)]
    let bValue = letterValues[String(b)]
    return aValue > bValue
}


//8b.  Sort the string below in ascending order according the dictionary letterValues

var codeStringTwo = "znwemnrfewpiqn"

let codeStringAsArr1 = Array(codeStringTwo.characters)

codeStringAsArr1.sort{(a: Character, b: Character) -> Bool in
    let aValue = letterValues[String(a)]
    let bValue = letterValues[String(b)]
    return aValue < bValue
}

//9.  Write a function that takes a function as input and returns a function that doubles the output of the input function

//Input: (Int) -> Int
//Output: (Int) -> Int

//10.  Write a closure tripleNumber that takes no arguments and returns void.  It should multiply the global variable number by 3 each time the closure is run.

var number = 1

//var tripleNumber =



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
                 ("Annie", "Tung",	3203)]
// and so on...

// Build a sort comparison closure that will bring your name as close to the top as possible.
// We will use this to determine the order we use to access the microwave.
// Feel free to add fields to the tuple to accomplish this -- yes, this is a cheat.



//11. Create a closure that takes an two arrays of strings as input. Output a new string with the contents of the arrays in alternating order and separated by a space. If one array's length is longer than the other, append the rest of it's contents to the new string.

// eg: input array1: ["Hello", "My", "Friend"] array2: ["Darkness", "Old"]
//      output string: "Hello Darkness My Old Friend
