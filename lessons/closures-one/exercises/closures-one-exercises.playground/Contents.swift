//: Playground - noun: a place where people can play

import UIKit

// Closures-One-Exercises

//1. Create a closure that has no parameters or values and prints "Hello Closures!". Check by passing closure's return to a variable

var greeting = {
    print("Hello Closures!")
}

greeting()

//2. Create a closure that takes one Int and returns the doubled value. Check by passing closure's return to a variable.

var doubleInt = {(a: Int) -> Int in
    return a * 2
}

doubleInt(4)

//3. Create a closure that takes one Int and returns a bool whether or not it's divisible by 3.

var multipleOf3 = {(i: Int) -> Bool in
    if i % 3 == 0 {
        return true
    } else {
        return false
    }
}

multipleOf3(27)

//4. Create a closure that takes two strings as input and returns the longest character count of the two strings.

var longerStringCount = {(s1: String, s2: String) -> Int in
    if s1.characters.count > s2.characters.count {
        return s1.characters.count
    } else {
        return s2.characters.count
    }
}

longerStringCount("Hello", "Supercallifragillisticepialidocious")

//5a. Create a closure that takes an array of Int as input and returns the largest element in the array

var largestIntInArray = {(a: [Int]) -> Int in
  var max = 0
    for i in a {
        if i > max {
            max = i
        }
    }
    print(max)
    return max
}

let myArr = [2, 43, 54, 856, 23, 47]
largestIntInArray(myArr)

//5b.  Create a closure that takes an array of Int and variable x: Int as input and returns the xth largest element in the array.  Assume x is always < the count of the array

var xthLargestInArray = {(a: [Int], x: Int) -> Int in
    var sortedArr = a.sort(>)
    print(sortedArr[x-1])
    return sortedArr[x-1]
}

xthLargestInArray(myArr, 2)

//5c.  Rewrite 5b and add handling for cases where x >= the count of the array (Hint: Use optionals)

var nthLargestInArray = {(a: [Int], x: Int) -> Int? in
    var sortedArr = a.sort(>)
    if x <= a.count {
        return sortedArr[x-1]
    } else {
        return nil
    }
}

nthLargestInArray(myArr, 7)
//Higher order functions

let myArray = [34,42,42,1,3,4,3,2,49]

//6a. Sort myArray in ascending order by defining the constant ascendingOrder below.


let ascendingOrder = {(a: Int, b: Int) -> Bool in
    a < b
}
let mySortedArray = myArray.sort(ascendingOrder)

//6b. Sort myArray in descending order by defining the constant descendingOrder below.

let descendingOrder = {(a: Int, b: Int) -> Bool in
    a > b
}
let mySecondSortedArray = myArray.sort(descendingOrder)


//7a. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Assume each array will have at least 3 elements

let arrayOfArrays = [[3,65,2,4],[25,3,1,6],[245,2,3,5,74]]



//7b. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Don't assume each array will have at least 3 elements.  Put all arrays that have less than 3 elements at the end in any order.

let letterValues: [Character:Int] = [
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

var descendingCode = {(dict: [Character:Int], s: String) -> String in
    var valueArr: [Int] = []
    var charArr: [Character] = []
    var sortedByCodeArr: [String] = []
    for char in s.characters {
        for (key, value) in dict {
            if char == key {
                valueArr.append(value)
                charArr.append(char)
            }
        }
    }
    let descendingSortedValues = valueArr.sort(>)
    
    for i in 0..<descendingSortedValues.count{
        for (key, value) in dict {
            if descendingSortedValues[i] == value {
                sortedByCodeArr.append(String(key))
            }
        }
    }
    var descendingString = sortedByCodeArr.joinWithSeparator("")
    print(descendingString)
    return descendingString
}

descendingCode(letterValues, codeString)

//CLASS ANSWER


//8b.  Sort the string below in ascending order according the dictionary letterValues

var codeStringTwo = "znwemnrfewpiqn"

var ascendingCode = {(dict: [Character:Int], s: String) -> String in
    var valueArr: [Int] = []
    var charArr: [Character] = []
    var sortedByCodeArr: [String] = []
    for char in s.characters {
        for (key, value) in dict {
            if char == key {
                valueArr.append(value)
                charArr.append(char)
            }
        }
    }
    let ascendingSortedValues = valueArr.sort(<)
    
    for i in 0..<ascendingSortedValues.count{
        for (key, value) in dict {
            if ascendingSortedValues[i] == value {
                sortedByCodeArr.append(String(key))
            }
        }
    }
    var ascendingString = sortedByCodeArr.joinWithSeparator("")
    print(ascendingString)
    return ascendingString
}

ascendingCode(letterValues, codeStringTwo)

//9.  Write a function that takes a function as input and returns a function that doubles the output of the input function

//Input: (Int) -> Int
//Output: (Int) -> Int

//func tripleOtherFunc(x: (Int) -> Int) -> (Int) -> Int {
//    func nowTripleIt(y: Int) -> Int {
//         return y * 3
//    }
//    return nowTripleIt()
//}
//
//func squareNum(y: Int) -> Int {
//    return y * y
//}

//func num
//10.  Write a closure tripleNumber that takes no arguments and returns void.  It should multiply the global variable number by 3 each time the closure is run.

var number = 1

var tripleNumber = {() in
    number *= 3
}

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

var lastNameSort: [String] = []

for name in firstAndLastTuples {
    lastNameSort.append("\(name.1), \(name.0)")
}

let sortedNames = lastNameSort.sort()

for name in sortedNames {
    print(name)
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
let ac32Folks: [(firstName: String, lastName: String, ID: Int)] = [("Amber", "Spadafora",	3201),
                 ("Ana", "Ma",	3202),
                 ("Annie", "Tung",	3203),
                 ("Christopher", "Chavez", 3204),
                 ("Eashir", "Arafat", 3205),
                 ("Edward", "Anchundia", 3206),
                 ("Emily", "Chu", 3207),
                 ("Eric", "Chang", 3208),
                 ("Erica", "Stevens", 3209),
                 ("Fernando", "Ventura", 3210),
                 ("Harichandan", "Singh", 3211),
                 ("Ilmira", "Estil", 3212),
                 ("Jermaine", "Kelly", 3213),
                 ("Gabriel", "Breshears", 3214),
                 ("Kadell", "Gregory", 3215),
                 ("Karen", "Fuentes", 3216),
                 ("Leandro", "Nunez", 3218),
                 ("Liam", "Kane", 3219),
                 ("Luz", "Herrera", 3220),
                 ("Madushani", "Liyange", 3221),
                 ("Marcel", "Chaucer", 3222),
                 ("Margaret", "Ikeda", 3223),
                 ("Maria", "Scutaru", 3224),
                 ("Marty", "Avedon", 3225),
                 ("Michael", "Pinnock", 3226),
                 ("Miti", "Shah", 3227),
                 ("Rukiye", "Karadeniz", 3228),
                 ("Sabrina", "Ip", 3229),
                 ("Simone", "Grant", 3230),
                 ("Sophia", "Barrett", 3231),
                 ("Thinley", "Dorjee", 3232),
                 ("Tom", "Seymour", 3233),
                 ("Tong", "Lin", 3234),
                 ("Tyler", "Newton", 3235),
                 ("Victor", "Zhong", 3236)]


// Build a sort comparison closure that will bring your name as close to the top as possible.
// We will use this to determine the order we use to access the microwave.
// Feel free to add fields to the tuple to accomplish this -- yes, this is a cheat.


//11. Create a closure that takes an two arrays of strings as input. Output a new string with the contents of the arrays in alternating order and separated by a space. If one array's length is longer than the other, append the rest of it's contents to the new string.

// eg: input array1: ["Hello", "My", "Friend"] array2: ["Darkness", "Old"]
//      output string: "Hello Darkness My Old Friend


