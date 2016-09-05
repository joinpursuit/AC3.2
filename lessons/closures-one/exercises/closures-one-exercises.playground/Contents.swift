//: Playground - noun: a place where people can play

import UIKit

// Closures-One-Exercises

//1. Create a closure that has no parameters or values and prints "Hello Closures!". Check by passing closure's return to a variable

var variable1 = { () -> () in
    print("Hello Closures")
}
variable1()

//2. Create a closure that takes one Int and returns the doubled value. Check by passing closure's return to a variable.

var variable2 = { (a: Int) -> Int in
    return a * 2
}
print(variable2(24))

//3. Create a closure that takes one Int and returns a bool whether or not it's divisible by 3.

var isDivBy3 = { (a: Int) -> Bool in
    return a % 3 == 0
}


//4. Create a closure that takes two strings as input and returns the longest character count of the two strings.

var longestStringCount = { (a: String, b: String) -> Int in
    if a.characters.count > b.characters.count {
        return a.characters.count
    } else {
        return b.characters.count
    }
}
longestStringCount("hello", "Have a nice day!")

//5a. Create a closure that takes an array of Int as input and returns the largest element in the array
var array5A = [1, 23, 45, 22, 78, 98, 56, 2, 7, 9, -102, -1]

var largestEle5A = { (theArray: [Int]) -> Int in
        var largest = theArray[0]
    for num in theArray {
        if num > largest {
            largest = num
        }
    }
    return largest
}
largestEle5A(array5A)

//5b.  Create a closure that takes an array of Int and variable x: Int as input and returns the xth largest element in the array.  Assume x is always < the count of the array



var xthElement = { (arrOfInt: [Int], x: Int) -> Int in
    var sortedArr = arrOfInt.sort(>)
    return sortedArr[x - 1]
}
xthElement(array5A, 2)

//5c.  Rewrite 5b and add handling for cases where x >= the count of the array (Hint: Use optionals)

//Higher order functions

let myArray = [34,42,42,1,3,4,3,2,49]

var xthElementC = { (arrOfInt: [Int], x: Int) -> Int? in
    if x > arrOfInt.count {
        return nil
    } else {
        var sortedArr = arrOfInt.sort(>)
        return sortedArr[x - 1]
    }
}
xthElementC(myArray, 10)


////6a. Sort myArray in ascending order by defining the constant ascendingOrder below.

let mySortedArray = myArray.sort(<)
let ascendingOrder = myArray.sort({ (a: Int, b: Int) -> Bool in
    return a < b
})

////6b. Sort myArray in descending order by defining the constant descendingOrder below.

let mySecondSortedArray = myArray.sort(>)
let descendingOrder = myArray.sort({ (a: Int, b: Int) -> Bool in
    return a > b
})

let arrayOfArrays = [[3,65,2,4],[25,3,1,6],[245,2,3,5,74]]

////7a. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Assume each array will have at least 3 elements

let sortByThird = arrayOfArrays.sort({ (a: [Int], b: [Int]) -> Bool in
    return a[2] < b[2]
})

func sortByXth(arrOfArr: [[Int]], x: Int) -> [[Int]] {
    
    return arrayOfArrays.sort({ (a: [Int], b: [Int]) -> Bool in
        return a[x - 1] < b[ x - 1]
    })

}
print(sortByXth(arrayOfArrays, x: 2))


//7b. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Don't assume each array will have at least 3 elements.  Put all arrays that have less than 3 elements at the end in any order.

let arrayOfArrays2 = [[3,65,2,4],[25,3,1,6],[245,2,3,5,74], [87, 54], [7], [76, 4, 63, 74, 71], [65, 21]]

func sortByXth7b(arrOfArr: [[Int]], x: Int) -> [[Int]] {
    var validArr: [[Int]] = []
    var invalidArr: [[Int]] = []
    for arr in arrOfArr {
        if x <= arr.count {
            validArr.append(arr)
        } else {
            invalidArr.append(arr)
        }
    }
    var validArrSort = validArr.sort({ (a: [Int], b: [Int]) -> Bool in
        return a[x - 1] < b[ x - 1]
    })
    validArrSort += invalidArr
    return validArrSort

}
print(sortByXth7b(arrayOfArrays2, x: 3))



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

print(codeString.characters.sort{(a, b) -> Bool in
    var valA = letterValues[String(a)]
    var valB = letterValues[String(b)]
    return valA < valB
})


//8b.  Sort the string below in ascending order according the dictionary letterValues

var codeStringTwo = "znwemnrfewpiqn"

print(codeStringTwo.characters.sort{(a, b) -> Bool in
    var valA = letterValues[String(a)]
    var valB = letterValues[String(b)]
    return valA > valB
})


//9.  Write a function that takes a function as input and returns a function that doubles the output of the input function

//Input: (Int) -> Int
//Output: (Int) -> Int

//func addOneTo(x: Int) -> Int {
//    return x + 1
//}
//addOneTo(5)
//
//func doubleThis(x: (Int)) -> ((Int) -> Int) {
//    
//     { (a: Int) -> Int in
//        return
//}
//
//doubleThis(addOneTo(5))

//func funcTwo() -> Int {
//    return 2
//}
//
//func funcThree() -> Int {
//    return 3
//}


//10.  Write a closure tripleNumber that takes no arguments and returns void.  It should multiply the global variable number by 3 each time the closure is run.

var number = 1

var tripleNumber = {() -> () in
    number *= 3
}

tripleNumber()
tripleNumber()

number

tripleNumber()
tripleNumber()

number



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

var sortedByLastName = firstAndLastTuples.sort{ (a, b) -> Bool in
    return a.1 < b.1
}
print(sortedByLastName)
for tup in sortedByLastName {
    print("\(tup.1), \(tup.0)")
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
                 ("Tom", "Seymour", 3233),
                 ("Tong", "Lin", 3234)]


// and so on...

// Build a sort comparison closure that will bring your name as close to the top as possible.
// We will use this to determine the order we use to access the microwave.
// Feel free to add fields to the tuple to accomplish this -- yes, this is a cheat.

var sortedClass = ac32folks.sort{ (a, b) -> Bool in
    return a.0 > b.0
}
print(sortedClass)



//11. Create a closure that takes any two arrays of strings as input. Output a new string with the contents of the arrays in alternating order and separated by a space. If one array's length is longer than the other, append the rest of it's contents to the new string.

let inputArray1 = ["Hello", "My", "Friend"]
let inputArray2 = ["Darkness", "Old"]
// output string: "Hello Darkness My Old Friend"


var combArr = {(ray1: [String], ray2: [String]) -> String in
    var outputString = ""
    var shortIndex = 0
    var longIndex = 0
    var ray1Shorter = false
    
    if ray1.count < ray2.count {
        shortIndex = ray1.count
        longIndex = ray2.count
        ray1Shorter = true
    } else {
        shortIndex = ray2.count
        longIndex = ray1.count
    }
    
    for i in 0..<shortIndex {
        outputString.appendContentsOf(ray1[i] + " " + ray2[i] + " ")
    }
    
    for i in shortIndex..<longIndex {
        if ray1Shorter {
            outputString.appendContentsOf(ray2[i] + " ")
        } else {
            outputString.appendContentsOf(ray1[i] + " ")
        }
    }
    return outputString
}
print(combArr(inputArray1, inputArray2))
