//: Playground - noun: a place where people can play

import UIKit

// Closures-One-Exercises

//1. Create a closure that has no parameters or values and prints "Hello Closures!". Check by passing closure's return to a variable

var hello = { print("Hello Course!")}
hello()

//2. Create a closure that takes one Int and returns the doubled value. Check by passing closure's return to a variable.

var doubledValue = {(num: Int) in return num * 2}
doubledValue(4)

//3. Create a closure that takes one Int and returns a bool whether or not it's divisible by 3.

var divisibleBy3 = {(num: Int) -> Bool in
    
    return num % 3 == 0
}

divisibleBy3(20)

divisibleBy3(30)

//4. Create a closure that takes two strings as input and returns the longest character count of the two strings.
var longestWord = {(word1: String, word2: String) -> Int in

    var largest = 0
    
    if word1.characters.count > word2.characters.count{
        largest = word1.characters.count
    }else{
     largest = word2.characters.count
    }
    
    return largest
}

print("The longest word has \(longestWord("Short", "Longerer")) characters")

//5a. Create a closure that takes an array of Int as input and returns the largest element in the array
var largestInArray = {(array:[Int]) -> Int in

    return array.sort().last!
}
var testArray = [1,3,5,7,3,100,5,104]
largestInArray(testArray)

//5b.  Create a closure that takes an array of Int and variable x: Int as input and returns the xth largest element in the array.  Assume x is always < the count of the array

var thLargestInArray = {(array:[Int], x:Int) -> Int in
    
    var position = array.sort()[array.count - x]
    
    return position
}

thLargestInArray(testArray,2)
//5c.  Rewrite 5b and add handling for cases where x >= the count of the array (Hint: Use optionals)

//Higher order functions

let myArray = [34,42,42,1,3,4,3,2,49]

var thLargestInArrayFix = {(array:[Int], x:Int) -> Int? in

    let position: Int? = array.sort()[array.count - x]
    
    
    return position
}
//
//if let element = thLargestInArrayFix(myArray,10){
//    
//}else{
//    print("Check your input!!")
//}

//6a. Sort myArray in ascending order by defining the constant ascendingOrder below.

//let ascendingOrder = {(a: Int, b: Int) -> Bool in return a < b}

let ascendingOrder:(Int,Int) -> Bool = {$0 < $1}

let mySortedArray = myArray.sort(ascendingOrder)

//6b. Sort myArray in descending order by defining the constant descendingOrder below.

let descendingOrder:(Int,Int) -> Bool = {$1 < $0}
let mySecondSortedArray = myArray.sort(descendingOrder)


let arrayOfArrays = [[3,56],[3,65,2,4],[25,3,1,6],[245,2,3,5,74],[5,3]]


//7a. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Assume each array will have at least 3 elements

//print(arrayOfArrays.sort({a,b in
//
//      var array1 = a[2]
//      var array2 = b[2]
//    
//    return array1 < array2
//}))


//7b. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Don't assume each array will have at least 3 elements.  Put all arrays that have less than 3 elements at the end in any order.


print(arrayOfArrays.sort({(a:[Int],b:[Int]) -> Bool in
    
    if a.count < 3 || b.count < 3{
       
         return false
    }
    var array1 = a[2]
    var array2 = b[2]
    
    return array1 < array2
}))




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

print(codeString.characters.sort({(a,b) in
    
    var numApl = letterValues[String(a)]
    var numBpl = letterValues[String(b)]
    
    return numApl > numBpl
}))

//8b.  Sort the string below in ascending order according the dictionary letterValues

var codeStringTwo = "znwemnrfewpiqn"

print(codeStringTwo.characters.sort({(a,b) in
    
    var numApl = letterValues[String(a)]
    var numBpl = letterValues[String(b)]
    
    return numApl < numBpl
}))

//9.  Write a function that takes a function as input and returns a function that doubles the output of the input function

//Input: (Int) -> Int
//Output: (Int) -> Int
//
//let inputnum = { 
// 
//    return 3
//}
//
//func higherFunc(Input:(Int)->Int) -> (Int)-> Int{
//    
//    var value = Input
//    
//    func doubleFunc(doubleInput:Int)-> Int{
//        return doubleInput * 2
//    }
//    
//    return doubleFunc(value())
//}
//
//higherFunc(inputnum)


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
