//: Playground - noun: a place where people can play

import UIKit

// Closures-One-Exercises

//1. Create a closure that has no parameters or values and prints "Hello Closures!". Check by passing closure's return to a variable

var statementCannotBeginWithClosureExpression = { () -> () in
    print("Hello closures!")
}

statementCannotBeginWithClosureExpression() // needs parentheses to actually print

//2. Create a closure that takes one Int and returns the doubled value. Check by passing closure's return to a variable.

var doubleMint = { (num: Int) -> Int in
    return num * 2
}

print(doubleMint(2))

//3. Create a closure that takes one Int and returns a bool whether or not it's divisible by 3.

var threeable = { (num: Int) -> Bool in
    return num%3 == 0
}

print(threeable(30))
print(threeable(31))

//4. Create a closure that takes two strings as input and returns the longest character count of the two strings.

var longString = { (word1:String, word2:String) -> Int in
    if word1.characters.count < word2.characters.count {
        return word2.characters.count
    } else {
        return word1.characters.count
    }
}

longString("cats", "catscatscats") // in this closure, we don't need to explicitly name the second argument as we would in a function. Those arguments are not in the same scope as longString. longString is not really aware of them. longString is just a name for something that, when we type it in, calls up a closure; it's not the same thing at all as a function with a name, where the name is directly part of the function. longString is a humble variable in the global scope, whereas the closure's arguments are in the scope of the closure

//5a. Create a closure that takes an array of Int as input and returns the largest element in the array

var bigNum = { (arr: [Int]) -> Int in
    let start = 0
    var biggest = start
    for num in arr {
        if num > biggest {
            biggest = num
        } else {
            continue
        }
    }
    return biggest
}

var arrArrMatey = [1, 7, 666, 69, 42, 13, 39, 122222222222, 16, 32, 64]

print(bigNum(arrArrMatey))

//5b.  Create a closure that takes an array of Int and variable x: Int as input and returns the xth largest element in the array.  Assume x is always < the count of the array

var xth = { (arr:[Int], x: Int) -> Int in
    let sortArr = arr.sort(>)
    if x < arr.count && x > 0 {
        return sortArr[x-1]
    //} else if x > arr.count {
      //  return sortArr[sortArr.count-1]
    } else {
        return sortArr[0]
    }
}

print(xth(arrArrMatey, 4))

//5c.  Rewrite 5b and add handling for cases where x >= the count of the array (Hint: Use optionals)

var xth2000 = { (arr:[Int], x: Int) -> Int in
    let sortArr = arr.sort(>)
    if x < arr.count && x > 0 {
        return sortArr[x-1]
        } else if x >= arr.count {
          return sortArr[sortArr.count-1]
    } else {
        return sortArr[0]
    }
}

print(xth2000(arrArrMatey, 1000_000_000))

//Higher order functions

let myArray = [34,42,42,1,3,4,3,2,49]

//6a. Sort myArray in ascending order by defining the constant ascendingOrder below.

let ascendingOrder = { (a: Int, b: Int) -> Bool in
    return a < b
}
let mySortedArray = myArray.sort(ascendingOrder)

//6b. Sort myArray in descending order by defining the constant descendingOrder below.

let descendingOrder = { (a: Int, b: Int) -> Bool in
    return a > b
}

let mySecondSortedArray = myArray.sort(descendingOrder)

//7a. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Assume each array will have at least 3 elements

let arrayOfArrays = [[3,65,2,4],[25,3,1,6],[245,2,3,5,74]]

//var ascendingArrays = { (a: Int, b: Int) -> Bool in
//    let aValue = [Int(a)]
//    let bValue = [Int(b)]
//    return aValue > bValue
//}

//ascendingArrays(arrayOfArrays)

//for index in 0..<arrayOfArrays.count {
//    var a: Int
//    var b: Int
//    if index == 0 {
//        continue
//    } else {
//        if arrayOfArrays[index] > arrayOfArrays[index-1] {
//            
//        }
//    }
//}

//7b. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Don't assume each array will have at least 3 elements.  Put all arrays that have less than 3 elements at the end in any order.

//var superAscending
//
//superAscendingArrays(arrayOfArrays)

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


//8b.  Sort the string below in ascending order according the dictionary letterValues

var codeStringTwo = "znwemnrfewpiqn"



//9.  Write a function that takes a function as input and returns a function that doubles the output of the input function

//Input: (Int) -> Int
//Output: (Int) -> Int

//func doubleIt(funct: (Int)) -> (Int) -> Int {
//    var saveIt = funct
//    return saveIt + saveIt
//}

//10.  Write a closure tripleNumber that takes no arguments and returns void.  It should multiply the global variable number by 3 each time the closure is run.

var number = 1

var tripleNumber = { () -> () in
    var num = 3 * number
    number = num
}

tripleNumber()
tripleNumber()
tripleNumber()
//tripleNumber()

print(number)

//11. Given a tuple representation of our names from before:

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

//12. Build an array of tuples representing everyone in the class. Here you are sorted by first name:
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



//13. Create a closure that takes an two arrays of strings as input. Output a new string with the contents of the arrays in alternating order and separated by a space. If one array's length is longer than the other, append the rest of it's contents to the new string.

// eg: input array1: ["Hello", "My", "Friend"] array2: ["Darkness", "Old"]
//      output string: "Hello Darkness My Old Friend
