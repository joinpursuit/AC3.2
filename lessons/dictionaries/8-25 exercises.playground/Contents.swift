//: Playground - noun: a place where people can play

import UIKit
//Ana And Marty

//1)

//a) Create an instance of a dictionary called citiesDict that maps 3 countries to their capital cities
var citiesDict : [String:String] = ["USA": "Washington DC", "Japan": "Tokyo", "Mexico": "Mexico City"]

//b) Add two more countries to your dictionary

citiesDict["China"] = "Beijing"
citiesDict["UK"] = "London"

//c) Translate at least 3 of the capital names into another language
citiesDict["Japan"] = "東京"
citiesDict["China"] = "北京"
citiesDict["UK"] = "倫敦"

//2)

var someDict:[String:Int] = ["One": 1, "Two": 4, "Three": 9, "Four": 16, "Five": 25]

//a) using someDict, add together the values associated with "Three" and "Five" and print the result.

print(someDict["Three"]! + someDict["Five"]!)

//b) Add values to the dictionary for the keys "Six" and "Seven"

someDict["Six"] = 36
someDict["Seven"] = 49

//c) Make a key caled "productUpToSeven" and set its value equal to the product of all the values

someDict["productOfSeven"] = 0
var sum = 0


for (x, y) in someDict {
    sum += y
    someDict["productOfSeven"] = sum
}
print(someDict["productOfSeven"]!)

//d) Make a key called "sumUpToSix" and set its value equal to the sum of the keys "One", "Two", "Three", "Four", "Five" and "Six"

someDict["sumUpToSix"] = 0
var sumUp = 0
var count = 6

for x in someDict.values.sort() {
    if count >= 0 {
        sumUp += x
        count -= 1
    } else {
        break
    }
}

someDict["sumUpToSix"] = sumUp

print(someDict["sumUpToSix"]!)

//e) Remove the new keys made for parts c and d
someDict.removeValueForKey("productOfSeven")
someDict.removeValueForKey("sumUpToSix")
print(someDict)


//f) Add 2 to every value inside of someDict

for i in someDict.keys {
    someDict[i]! += 2
}

print(someDict)

//3)  (from http://www.themobilemontage.com/wp-content/uploads/2015/05/hw1.pdf)
//a) Create a variable that is explicitly typed as a dictionary that maps strings to floating point numbers. Initialize the variable to the data shown in the table below which lists an author name and their comprehensibility score.
/*
“Mark Twain” - 8.9
“Nathaniel Hawthorne” - 5.1
“John Steinbeck” - 2.3
“C.S. Lewis” - 9.9
“Jon Krakaur” - 6.1
*/

var comp = [String:Float]()
comp = ["Mark Twain":8.9, "Nathaniel Hawthorne": 5.1, "John Steinbeck": 2.3, "C.S. Lewis": 9.9, "Jon Krakaur": 6.1]

//b) Using the dictionary created in the previous problem, do the following: Print out the floating-point score for “John Steinbeck”. Add an additional author named “Erik Larson” with an assigned score of 9.2.  Write an if/else statement that compares the score of John Krakaur with Mark  Twain. Print out the name of the author with the highest score.

print(comp["John Steinbeck"]!)

comp["Eric Larson"] = 9.2

if comp["Mark Twain"] > comp["John Krakaur"] {
    print("Mark Twain")
} else if comp["Mark Twain"] < comp["John Krakaur"]{
    print("John Krakaur")
} else {
    print("They are the same.")
}

//c)  Use a for loop to iterate through the dictionary created in problem 3a and print out the content in the form of key: value, one entry per line.
for (key, value) in comp {
    print(key,value)
}


//4 -7 source :  https://www.weheartswift.com/dictionaries/)
//4)  
//4a)You are given a dictionary code of type [String:String] which has values for all lowercase letters. The code dictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a message which contains only lowercase letters and spaces. Use the code dictionary to encode the message and print it.

var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]

var message = "hello world"
//var array: [Character] = []
//
//for i in message.characters {
//    array.append(i)
//}
//print(array)
//
//for key in code.keys.sort() {
//    for j in array {
//        if Character(key) == j {
//            print(code[key]!, terminator: "")
//        }
//    }
//}
var deCode: [String: String] = [:]
for (key,value) in code {
    deCode[value] = key
}
var encodedString: String = ""

for c in message.characters{
    if let encodedOne = deCode[String(c)]{
        encodedString += encodedOne
    } else {
        encodedString += String(c)
    }
}
print(encodedString)

//4b)
//You are also given a encodedMessage which contains only lowercase letters and spaces. Use the code dictionary to decode the message and print it.

var encodedMessage = "uijt nfttbhf jt ibse up sfbe"
var decodedMessage = ""
for c in encodedMessage.characters {
    if let encodedTwo = deCode[String(c)]{
        decodedMessage += encodedTwo
    }else {
        decodedMessage += String(c)
    }
}
print(decodedMessage)

//5)
//5a)You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.

var people: [[String:String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen"
    ]
]

for dictionary in people {
    if let firstname = dictionary["firstName"] {
        print(firstname, terminator: " ")
    }
    print()
}

//5b) Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space.
var fullname : [ String ] = []
for array in people {
    if let firstName = array["firstName"], lastName = array["lastName"]{
        var combined = "\(firstName) \(lastName)"
        fullname.append(combined)
    }
}
print(fullname)

//6)
//You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the best score and print his full name.


var peopleWithScores: [[String: String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": "13"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": "23"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": "10"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": "3"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": "16"
    ]
]

var highestScore = 0
for people in peopleWithScores {
    if let score = people["score"] where Int(score)! > highestScore{
            highestScore = Int(score)!
    }
    if highestScore == Int(people["score"]!){
        if let firstName = people["firstName"], let lastName = people["lastName"]{
            print("\(firstName) \(lastName)")
        }
    }
}


/*6b) Print out the dictionary above in the following format:
full name - score
...
*/

var scoreBoard: [String:String] = [:]
for people in peopleWithScores{
    if let firstName = people["firstName"], let lastName = people["lastName"], let score = people["score"]{
        var fullname = "\(firstName) \(lastName)"
        scoreBoard[fullname] = score
    }
}
print(scoreBoard)

//7)
//You are given an array of integers. Find out the frequency of each one.
//The frequency of a number is the number of times it appears in the array.
//Print the numbers in ascending order followed by their frequency.
var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]

var dictOfNums : [Int:Int] = [:]

for num in numbers{
    if dictOfNums[num] == nil{
        dictOfNums[num] = 1
    }else{
        dictOfNums.updateValue(dictOfNums[num]!+1, forKey: num)
    }
}
print(dictOfNums)

//8)
//Print the most common letter in the string below:

var myString = "We're flooding people with information. We need to feed it through a processor. A human must turn information into intelligence or knowledge. We've tended to forget that no computer will ever ask a new question."

var dictOfMyString : [Character:Int] = [:]
var mostCommonLetterCount = 0

for c in myString.characters{
    if dictOfMyString[c] == nil{
        dictOfMyString[c] = 1
    }else{
        dictOfMyString.updateValue(dictOfMyString[c]!+1, forKey: c)
    }
    
}
print(dictOfMyString)

for (x,y) in dictOfMyString {
    if let j = dictOfMyString[x] where j > mostCommonLetterCount && x != " " {
        mostCommonLetterCount = j
        print("The most common letter in \"myString\" is the letter \(x) for repeating \(j) times")
    }
}


//9)
//Write code below that creates a dictionary where the keys are Ints in between 0 and 20 inclusive, and each key's value is its cube.

var numInCubes : [Int: Int] = [:]
for i in 0...20{
    numInCubes[i] = i*i*i
}
print(numInCubes)

//10)
let statePop = ["Alabama": 4.8, "Alaska": 0.7, "Arizona": 6.7, "Arkansas": 3.0]
let testStates = ["California","Arizona", "Alabama", "New Mexico"]

//Write code below that iterates through testStates and prints out whether or not that key is in statePop
for test in testStates{
    if statePop[test] == nil {
        print("There's not a value for the state of \(test).")
    } else {
        print("\(test) is in statePop")
    }
}
