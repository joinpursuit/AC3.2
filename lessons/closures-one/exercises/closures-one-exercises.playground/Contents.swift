//: Playground - noun: a place where people can play

import UIKit

// Closures-One-Exercises

//1. Create a closure that has no parameters or values and prints "Hello Closures!". Check by passing closure's return to a variable

var message1: () -> () = {
    print("Hellow Closures!")
}
message1()

//func message2 () -> () {
//    print("Hellow Closures!")
//}

//2. Create a closure that takes one Int and returns the doubled value. Check by passing closure's return to a variable.
var message2: Int -> Int = { (x:Int) -> Int in
    return x * 2
}
print(message2(2))

//3. Create a closure that takes one Int and returns a bool whether or not it's divisible by 3.
var message3 : Int -> Bool = {(x:Int) -> Bool in
    if x%3==0 {
        return true
    }
    return false
}
print(message3(9))

//4. Create a closure that takes two strings as input and returns the longest character count of the two strings.
var message4: (String, String) -> Int = {(x: String, y: String) -> Int in
    var longestword = " "
    if x.characters.count > y.characters.count {
        longestword = x
    } else {
        longestword = y
    }
    return longestword.characters.count
}
print(message4("problems","list"))

//5a. Create a closure that takes an array of Int as input and returns the largest element in the array
var largestElement: ([Int]) -> Int = { (x:[Int]) -> Int in
    var largest = 0
    for i in 0..<x.count{
        if x[i] > largest {
            largest = x[i]
        }
    }
    return largest
}
print(largestElement([1,2,3,4,5,6,7,8,9]))

//5b.  Create a closure that takes an array of Int and variable x: Int as input and returns the xth largest element in the array.  Assume x is always < the count of the array
var theXthLargestElement: ([Int], Int) -> Int = { (y:[Int], x:Int) -> Int in
    var largest = y[0]
    var arrayOfInt = y.sort({$0>$1})
//    for i in 0..<arrayOfInt.count{
//        if i+1 == x {
//            largest = arrayOfInt[i]
//        }
//    }
    largest = arrayOfInt[x-1]
    return largest
}
print(theXthLargestElement([1,2,3,44,5,6,7,8,9,10,12,4],2))
//5c.  Rewrite 5b and add handling for cases where x >= the count of the array (Hint: Use optionals)

//Higher order functions

let myArray = [34,42,42,1,3,4,3,2,49]

var theXthLargestElement2: ([Int?], Int?) -> Int? = { (y:[Int?], x:Int?) -> Int? in
    var largest: Int? = y[0]
    var arrayOfInt = y.sort({$0>$1})
    if x < arrayOfInt.count {
        largest = arrayOfInt[x!-1]
    } else {
        largest = nil
    }
    return largest
}
print(theXthLargestElement2([1,2,3,44,5,6,7,8,9,10,12,4],300))

var theXthLargestElement3: ([Int?], Int?) -> Int? = { (y:[Int?], x:Int?) -> Int? in
    var arrayOfInt = y.sort({$0>$1})
    if x < arrayOfInt.count {
        return arrayOfInt[x!-1]
    } else {
        return nil
    }
}
print(theXthLargestElement3([1,2,3,44,5,6,7,8,9,10,12,4],300))


//6a. Sort myArray in ascending order by defining the constant ascendingOrder below.

//let mySortedArray = myArray.sort(ascendingOrder)
//let ascendingOrder =
let mySortedArray = myArray.sort({$0<$1})

//6b. Sort myArray in descending order by defining the constant descendingOrder below.

//let mySecondSortedArray = myArray.sort(descendingOrder)
//let descendingOrder =
let mySecondSortedArray = myArray.sort({$0>$1})




let arrayOfArrays = [[3,65,2,4],[25,3,1,6],[245,2,3,5,74]]

//7a. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Assume each array will have at least 3 elements
let mySortedArrayOfArrays = arrayOfArrays.sort({ (a: [Int], b: [Int]) -> Bool in
    return a[2] < b[2]
})
print(mySortedArrayOfArrays)

//7b. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Don't assume each array will have at least 3 elements.  Put all arrays that have less than 3 elements at the end in any order.
let arrayOfArrays2 = [[3,65,2,4],[25,3,1,6],[1,2],[245,2,3,5,74]]
let mySortedArrayOfArrays4 = {(a: [[Int]], sortByNumber: Int) -> [[Int]] in
    var shortArray: [[Int]] = []
    var longArray: [[Int]] = []
    for i in a {
        if sortByNumber <= a.count {
            shortArray.append(i)
        } else {
            longArray.append(i)
        }
    }
    return longArray.sort({$0[sortByNumber-1] < $1[sortByNumber-1]}) + shortArray
}

print(mySortedArrayOfArrays4(arrayOfArrays2, 3))


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
print(codeStringAsArr.sort{(a:Character, b:Character) -> Bool in
    let aValue = letterValues[String(a)]
    let bValue = letterValues[String(b)]
    return aValue > bValue
})


func sortByNumber (a:String, b:[String:Int])->String{
    var array1:[String] = []
    var array2 : [Int] = []
    var message: String = " "
    array1.append(String(a.characters))
    for i in array1 {
        for (key,values) in b{
        if key == i {
            array2.append(values)
            }
        }
    }
    array2.sort({$0>$1})
    for j in array2 {
        for (key,values) in b{
            if j == values{
                message += key
            }
        }
    }
    return message
}
print(sortByNumber(codeString, b: letterValues))


//8b.  Sort the string below in ascending order according the dictionary letterValues

var codeStringTwo = "znwemnrfewpiqn"

let codeStringTwoDecode = Array(codeString.characters)
print(codeStringTwoDecode.sort{(a:Character, b:Character) -> Bool in
    let aValue = letterValues[String(a)]
    let bValue = letterValues[String(b)]
    return aValue < bValue
    })

print(codeStringTwoDecode.sort{(a:Character, b:Character) -> Bool in
    let aValue = letterValues[String(a)]
    let bValue = letterValues[String(b)]
    return aValue > bValue
    })

//9.  Write a function that takes a function as input and returns a function that doubles the output of the input function

//Input: (Int) -> Int
//Output: (Int) -> Int

//10.  Write a closure tripleNumber that takes no arguments and returns void.  It should multiply the global variable number by 3 each time the closure is run.

var number = 1

var tripleNumber = {
    number *= 3
}
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
//let sortedFirstAndLastTuple
var c = firstAndLastTuples[0].1
print(c)
let sortedFirstAndLastTuple = firstAndLastTuples.sort{(a:(String, String), b: (String, String)) -> Bool in
    let aValue = a.1
    let bValue = b.1
    return aValue < bValue
}
print(sortedFirstAndLastTuple)
for (a,b) in sortedFirstAndLastTuple{
    print("\(b), \(a)")
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
let ac32folks = [("Amber", "Spadafora",	3201, 2),
                 ("Ana", "Ma",	3202, 1),
                 ("Annie", "Tung",	3203, 3),
                 ("Cristopher", "Chavez",	3204, 4),
                 ("Eashir", "Arafat",	3205, 5),
                 ("Edward", "Anchundia",	3206, 6),
                 ("Emily", "Chu",	3207, 7),
                 ("Eric", "Chang",	3208, 8),
                 ("Erica", "Stevens",	3209, 9),
                 ("Fernando", "Ventura",	3210, 10),
                 ("Harichandan", "Singh",	3211, 11),
                 ("Ilmira", "Estil",	3212, 12),
                 ("Jermaine", "Kelly",	3213, 13),
                 ("Gabriel", "Breshears",	3214, 14),
                 ("Kadell", "Gregory",	3215, 15),
                 ("Kareem", "James",	3216, 16),
                 ("Karen",  "Manzanares Fuentes", 	3217, 17),
                 ("Leandro", "Nunez",	3218, 18),
                 ("Liam", "Kane",	3219, 19),
                 ("Luz Loayza", "Herrer",	3220, 20),
                 ("Madushani Lekam Wasam", "Liyanage",	3221, 21),
                 ("Marcel", "Chaucer",	3222, 22),
                 ("Margaret", "Ikeda",	3223, 23),
                 ("Maria", "Scutaru",	3224, 24),
                 ("Marty", "Avedon",	3225, 25),
                 ("Michael", "Pinnock",	3226, 25),
                 ("Miti",  "Shah",	3227, 27),
                 ("Rukiye", "Karadeniz",	3228 ,28),
                 ("Sabrina", "Ip",	3229, 29),
                 ("Simone", "Grant",	3230, 30),
                 ("Sophia", "Barrett",	3231, 31),
                 ("Thinley",  "Dorjee",	3232, 32),
                 ("Tom", "Seymour",	3233, 33),
                 ("Tong", "Lin",	3234, 34),
                 ("Tyler", "Newton",	3235, 35),
                 ("Victor", "Zhong",	3236, 26)]
// and so on...

// Build a sort comparison closure that will bring your name as close to the top as possible.
// We will use this to determine the order we use to access the microwave.
// Feel free to add fields to the tuple to accomplish this -- yes, this is a cheat.
print(ac32folks.sort{(a:(String,String,Int,Int), b:(String, String, Int, Int)) -> Bool in
    let aValue = a.3
    let bValue = b.3
    return aValue < bValue
})



//11. Create a closure that takes an two arrays of strings as input. Output a new string with the contents of the arrays in alternating order and separated by a space. If one array's length is longer than the other, append the rest of it's contents to the new string.

// eg: input array1: ["Hello", "My", "Friend"] array2: ["Darkness", "Old"]
//      output string: "Hello Darkness My Old Friend
var array1 =  ["Hello", "My", "Friend", "This", "is", "a", "good", "day"]
var array2 = ["Darkness", "Old"]
//output string: "Hello Darkness My Old Friend This is a good day"

let arrayOutPut = {(a:[String], b:[String]) -> String in
    var messageString11 = ""
    var j = 0
    var shorterArray:[String] = []
    var longerArray:[String] = []
    var lastCountedIndex = 0
    
    if a.count < b.count {
        shorterArray = a
        longerArray = b
        j = b.count - a.count
    } else {
        shorterArray = b
        longerArray = a
        j = a.count - b.count
    }
    for i in 0..<shorterArray.count {
        messageString11 += a[i] + " "
        messageString11 += b[i] + " "
        lastCountedIndex = i
    }
    for k in lastCountedIndex..<longerArray.count{
        messageString11 += longerArray[k] + " "
    }
    return messageString11
}
print(arrayOutPut(array1,array2))



//    if !a.isEmpty {
//        for i in lastCountedIndex..<a.count {
//            messageString11 += a[i]
//        }
//    }
//    if !b.isEmpty {
//        for i in lastCountedIndex..<b.count {
//            messageString11 += b[i]
//        }
//    }
