import UIKit

// I. COVERING ARRAYS

// 1)INITIALIZING AN ARRAY.
//var myArray = [1,2,3,4,5]

// 2)TYPE ANNOTATING AN ARRAY.
//var myArray: [String] = ["Grape", "Apple", "Orange", "Peach", "Pear"]

// 3)ACCESSING AND MODIFYING ARRAYS.
//var bucketList: [String] = ["Climb Mount Everest."]

//bucketList.append("Fly hot air balloon to Fiji.")
//bucketList.append("Watch the Lord of the Rings trilogy in one day.")
//bucketList.append("Go on a walkabout.")
//bucketList.append("Scuba dive in the Great Blue Hole.")
//bucketList.append("Find a triple rainbow.")

//4) REMOVING AN ITEM FROM THE ARRAY.

//var bucketList: [String] = ["Climb Mount Everest."]
//
//bucketList.append("Fly hot air balloon to Fiji.")
//bucketList.append("Watch the Lord of the Rings trilogy in one day.")
//bucketList.append("Go on a walkabout.")
//bucketList.append("Scuba dive in the Great Blue Hole.")
//bucketList.append("Find a triple rainbow.")
//
//bucketList.removeAtIndex(2)


//5) COUNTING ITEMS IN THE ARRAY.
//var bucketList: [String] = ["Climb Mount Everest."]
//print(bucketList.count)

//6) SUBSCRIPTING ARRAY TO FIND ITEMS.
//var bucketList: [String] = ["Hello", "Goodbye", "Later", "Greetings"]
//print(bucketList[0...3]) //This is the subscripting syntax.

//7) USING SUBSCRIPTING TO APPEND NEW INFORMATION. 
// By using the += addition and assignment operator to add some text to the item at index 2. This assignment only works when the instances of two values are of the same type. String to String, Int to Int, etc.

//var bucketList = ["Climb Mt. Everest"]
//
//bucketList.append("Fly hot air balloon to Fiji")
//bucketList.append("Watch the Lord of the Rings trilogy in one day")
//bucketList.append("Go on a walkabout")
//bucketList.append("Scuba dive in the Great Blue Hole")
//bucketList.append("Find a triple rainbow")
//bucketList.removeAtIndex(2)
//
//bucketList[2] += " in Australia"
//bucketList[3] += " on a Tuesday"
//
//print(bucketList)

//8) REPLACING AN ARRAY ITEM
//var bucketList = ["Climb Mt. Everest"]
//bucketList.append("Fly hot air balloon to Fiji")
//bucketList.append("Watch the Lord of the Rings trilogy in one day")
//bucketList.append("Go on a walkabout")
//bucketList.append("Scuba dive in the Great Blue Hole")
//bucketList.append("Find a triple rainbow")
//
//bucketList.removeAtIndex(2)
//print(bucketList.count)
//print(bucketList[0])
//bucketList[2] += " in Australia"
//bucketList[0] = "Climb Mt. Kilimanjaro"
//
//print(bucketList[0])

//9) USING LOOP TO APPEND ITEMS FROM ONE ARRAY TO ANOTHER.

//var bucketList = ["Climb Mt. Everest"]
//var newItems = ["Fly hot air balloon to Fiji", "Watch the Lord of the Rings trilogy in one day", "Go on a walkabout", "Scuba dive in the Great Blue Hole", "Find a triple rainbow"]
//for item in newItems {
//    bucketList.append(item)
//}
//bucketList.removeAtIndex(2)
//print(bucketList.count)
//print(bucketList[0...2])
//bucketList[2] += " in Australia"
//bucketList[0] = "Climb Mt. Kilimanjaro"
//print(bucketList)

//9a) REFACTORING WITH THE ADDITION AND ASSIGNMENT OPERATOR
//var bucketList = ["Climb Mt. Everest"]
//var newItems = ["Fly hot air balloon to Fiji", "Watch the Lord of the Rings trilogy in one day", "Go on a walkabout", "Scuba dive in the Great Blue Hole", "Find a triple rainbow"]
//
//bucketList += newItems
//bucketList
//bucketList.removeAtIndex(2)
//print(bucketList.count)
//print(bucketList[0...2])
//bucketList[2] += " in Australia"
//bucketList[0] = "Climb Mt. Kilimanjaro"
//print(bucketList)

//10) INSERTING A NEW AMBITION
// Use the insert(_:atIndex:) function to add a new element to your array at the specified index. The insert functino has two arguments. The first argument takes the index for where you would like to add the new element in the array.
//var bucketList = ["Climb Mt. Everest"]
//var newItems = ["Fly hot air balloon to Fiji", "Watch the Lord of the Rings trilogy in one day", "Go on a walkabout", "Scuba dive in the Great Blue Hole", "Find a triple rainbow"]
//bucketList += newItems
//bucketList
//bucketList.removeAtIndex(2)
//
//print(bucketList.count)
//print(bucketList[0...2])
//
//bucketList[2] += " in Australia"
//bucketList[0] = "Climb Mt. Kilimanjaro"
//
//bucketList.insert("Toboggan across Alaska", atIndex: 2)
//bucketList

//10) CHECKING FOR ARRAY EQUALITY
//var bucketList = ["Climb Mt. Everest"]
//var newItems = ["Fly hot air balloon to Fiji", "Watch the Lord of the Rings trilogy in one day", "Go on a walkabout", "Scuba dive in the Great Blue Hole", "Find a triple rainbow"]
//bucketList += newItems
//bucketList
//bucketList.removeAtIndex(2)
//print(bucketList.count)
//print(bucketList[0...2])
//bucketList[2] += " in Australia"
//bucketList[0] = "Climb Mt. Kilimanjaro"
//bucketList.insert("Tobaggan Across Alaska", atIndex: 2)
//bucketList
//var myronsList = [bucketList[0], bucketList[1], bucketList[2], bucketList[3], bucketList[4], bucketList[5]]
//let equal = (bucketList == myronsList)
//print(equal)

//CREATING IMMUTABLE ARRAYS
//var myronsList = ["Climb Mt. Kilimanjaro", "Fly hot air balloon to Fiji", "Toboggan across Alaska", "Go on a walkabout in Australia", "Scuba dive in the Great Blue Hole", "Find a triple rainbow"]
//
//let equal = (bucketList == myronsList)
//let lunches = ["Cheeseburger", "Veggie Pizza", "Chicken Caesar Salad", "Black Bean Burrito", "Falafel wrap"]

//var toDoList = ["Take out garbage", "Pay bills", "Cross off finished items"]
//var newItems = [""]
//for item in toDoList.reverse() {
//    newItems.append(item)
//}
//newItems.removeAtIndex(0)
//print(newItems)


//1)
//Create an array of strings called colors that contain "orange", "red", "yellow", "turquoise", and "lavender"
//Using array subscripting and string interpolation, print out the String "orange, yellow, and lavender are some of my favorite colors"

//Write all your code below:
//var colors = ["Orange", "Red", "Yellow", "Turquoise", "Lavender"]
//
//print("\(colors[0]), \(colors[1]) and \(colors[4]) are some of my favorite colors.")



//2)
//Remove "Illinois" and "Kansas" from the array below.

//var westernStates = ["California", "Oregon", "Washington", "Idaho", "Illinois", "Kansas"]
//
//westernStates.removeLast()
//westernStates.removeAtIndex(4)


//Write all your code below:

//3)
//Iterate through the array below.  For each each state, print out whether or not it is in the continental United States.

//Write all your code below:

//let moreStates = ["Hawaii", "New Mexico", "Alaska", "Montana", "Texas", "New York", "Florida"]
//
//for state in moreStates {
//    switch state {
//    case _ where state == "Hawaii" || state == "Alaska":
//        print("\(state) is not in the continental United States.")
//    default:
//        print("\(state) is in the continental United States.")
//    }
//}


//4)
//a) print out how many non-whitespace characters are in myString
//let myString = "This is practice for the next problem!"
//
//for char in myString.characters {
//    if char != " " {
//        print(char, terminator: "")
//    }

//    switch char {
//    case _ where char != " " :
//        print(char)
//    default:
//        break
//}




//Write all your code below:


//b) Iterate through the array below.  For each sentence, print out how many non-whitespace characters are in it.

let myFavoriteQuotes = ["To be or not to be, that is the question.", "The only source of knowledge is experience.", "Mr. Gorbachev, tear down this wall!", "Four score and twenty years ago..."]

//Write all your code below:

var count = 0

for string in myFavoriteQuotes{
    for letter in string.characters {
        switch letter {
        case _ where letter == " " :
            count += 1
            print(count)
        default:
            break
        }
    }
}

//5)
//The below array represents an unfinished batting lineup for a baseball team. You, the coach, need to make some last minute changes.

//Add "Suzuki" to the end of your lineup.
//Change "Jeter" to "Tejada".
//Change "Thomas" for "Guerrero"
//Put "Reyes" to bat 8th instead.
var battingLineup = ["Reyes", "Jeter", "Ramirez", "Pujols","Griffey","Thomas","Jones", "Rodriguez"]

//battingLineup["Suzukie"]

//Write all your code below:


//6)
//Iterate through the garden and place any 🌷 that you find into the basket.  Replace any 🌷 that you pick up with "dirt".  Then print how many 🌷 are in your basket.
var garden = ["dirt","🌷","dirt","🌷","dirt","dirt","🌷","dirt","🌷","dirt"]
var basket = [String]()

//Write all your code below:

//7)
//Iterating through listOfNumbers and print out the largest element.
var listOfNumbers = [1, 2, 3, 10, 100, 13, 14, 31]

//Write all your code below:


//8)
//Iterate through secondListOfNumbers, and print out all the odd numbers.
var secondListOfNumbers = [19,13,14,19,101,10000,141,404]

//Write all your code below:

//9)
//Iterate through thirdListOfNumbers, and print out the sum.
var thirdListOfNumbers = [11, 26, 49, 61, 25, 40, 74, 3, 22, 23]

//Write all your code below:


//10)
//Iterate through the array and check to see if there is at least one integer that equals target.  Then, print "YES" if you found a match, and "NO" if you didn't

let target = 84
var fourthListOfNumbers = [83, 1, 66, 64, 90, 22, 97, 10, 84, 27]


//Write all your code below:


//11)
//Append every Int that appears in both listOne and listTwo to the sharedElements array.  Then print how many Ints are shared.
var listOne = [28, 64, 7, 96, 13, 32, 94, 11, 80, 68]
var listTwo = [18, 94, 48, 6, 42, 68, 79, 76, 13, 7]
var sharedElements = [Int]()


//Write all your code below:



//12)
//Write code such that noDupeList has all the same Ints as dupeFriendlyList, but has no more than one of each Int.
var dupeFriendlyList = [4,2,6,2,2,6,4,9,2,1]
var noDupeList: [Int] = []

//13)
//Find the second smallest Int in ages
var ages = [53, 31, 88, 65, 25, 44, 77, 18, 24, 84, 46, 42, 50, 28, 78, 67, 83, 70, 38, 69, 66, 71, 68, 61, 86, 85, 41, 15, 81, 40]


//14)
//Print out the sum of the diagonals of myMatrix

var myMatrix = [[10, 14, 12], [91, 1, 9], [31, 3, 21]]


//15)
//Using for loops, rotate myMatrix 90 degrees (https://sharecode.io/assets/problem_images/2518_5.jpg)

var toRotate = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

//16)
//If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23
//Find the sum of all the multiples of 3 or 5 below 1000
//https://projecteuler.net/problem=1


//17)
//Print the first element that repeats in someRepeats

var someRepeats = [25, 11, 30, 31,50,28,4,37,13,20,24,38,28,14,44,33,7,43,39,35,36,42,1,40,7,14,23,46,21,39,11,42,12,38,41,48,20,23,29,24,50,41,38,23,11,30,50,13,13,16,10,8,3,43,10,20,28,39,24,36,21,13,40,25,37,39,31,4,46,20,38,2,7,11,11,41,45,9,49,31,38,23,41,16,49,29,14,6,6,11 ,5 ,39, 13 ,17,43,1,1,15, 25]

//18)
//Make an array that contains all elements that appear more than twice in someRepeatsAgain

var someRepeatsAgain = [25,11,30,31,50,28,4,37,13,20,24,38,28,14,44,33,7,43,39,35,36,42,1,40,7,14,23,46,21,39,11,42,12,38,41,48,20,23,29,24,50,41,38,23,11,30,50,13,13,16,10,8,3,43,10,20,28,39,24,36,21,13,40,25,37,39,31,4,46,20,38,2,7,11,11,41,45,9,49,31,38,23,41,16,49,29,14,6,6,11 ,5 ,39, 13 ,17,43,1,1,15,25]

//19)
//Identify if there are 3 integers in the following array that sum to 10.  If so, print them.
//If there are multiple triplets, print all possible triplets.

var tripleSumArr = [-20,-14, -8,-5,-3,-2,1,2,3,4,9,15,20,30]



// II. COVERING DICTIONARIES
// When order is not necessarily important and you simply would like to hold on to a set of information that will be retrieved when needed it is better intended to use dictionaries. A dictionary is a collection type that organized its content by key-value pairs. The keys in a dictionary map onto values. When you use dictionary, you call a key to an instance of the type, and it returns to you the value associated with that key. THE KEYS IN A DICTIONARY MUST BE UNIQUE: MEANING THAT ONE KEY CAN BE ASSIGNED TO MULTIPLE VALUES BUT NO MORE THAN ONE KEY CAN BE ASSIGNED TO ANY GIVEN VALUE.

//1) CREATING A DICTIONARY
// The general syntax for a dictionary is as follows: var dict: Dictonary<KeyType, ValueType>. This code creates a mutable instance of the dictionary type called dict. The declarations for what type the dictonary's keys and values accept are inside the angle brackets. The only requirement for Swift's dictionary type's keys is that the key must be 'hashable'. That means that each KeyType must provide a mechanism that allows Dictionary to guarantee that any given key is unique. The basic hashable types are: String, Int, Float, Double, and Bool.

//1a) CREATE INSTANCE OF DICTIONARY
//Each four of these options yield the same result: a fully initialized instance of the Dictionary type with type information associated with its future keys and values. The KeyType is set to accept keys of the String type, and the valueType is set to accept values of the Double type. In all four cases, the dictionary instance is empty: it has no keys and no values.

//var dict1: Dictionary<String, Double> = [:]
//var dict2 = Dictionary<String, Double> ( )
//var dict3: [String:Double] = [:]
//var dict4 = [String:Double] ( )

//2) POPULATING A DICTIONARY
//This is a mutable dictionary called movieRatings. Its keys are instances of the string type and represent individual movies. These keys map onto values that are instances of the Int type that represent individual ratings of the movies.

//var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]

//3) ACCESSING AND MODIFYING A DICTIONARY
//Count is the read-only property on the Dicti9onary type that keeps track of how many instances are held within the dictionary instance itself. We will discuss properties in detail in Chapter 16, but for now properties are variables on a type that store or compute some data about the type in which you are interesed. In this case, you use count to log to the console: I have rated 3 movies

//var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
//print("I have rated \(movieRatings.count) movies.")

//3a) READING A VALUE FROM THE DICTIONARY

//var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
//print("I have rated \(movieRatings.count) movies.")
//let darkoRating = movieRatings["Donnie Darko"] // '4' is the value of the key "Donnie Darko"

//3b) MODIFYING A VALUE

//var movieRatings = ["Donie Darko": 4, "Chungking Express": 5, "Dark City": 4]
//print("I have rated \(movieRatings.count) movies.")
//let darkoRating = movieRatings["Donnie Darko"]
//movieRatings["Dark City"] = 5
//movieRatings

//3c) UPDATING A VALUE

//var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
//print("I have rated \(movieRatings.count) movies.")
//let darkoRating = movieRatings["Donnie Darko"]
//movieRatings["Dark City"] = 5
//movieRatings
//
//let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
//if let lastRating = oldRating, currentRating = movieRatings["Donnie Darko"] {
//    print("Old rating: \(lastRating); currrent rating: \(currentRating)")
//}

//1) ADDING AND REMOVING VALUES
//You use the assignment operator to associate a value (in this case, 5) with the new key ("The Cabinet of Dr. Caligari").
//I. ADDING VALUE

//var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
//print("I have rated \(movieRatings.count) movies.")
//let darkoRating = movieRatings ["Donnie Darko"]
//
//movieRatings ["Dark City"] = 2
//movieRatings
//
//let oldRating = movieRatings.updateValue(5, forKey: "Donnie Darko")
//if let lastRating = oldRating {
//    print(lastRating)
//    print(movieRatings)
//}
//movieRatings["The Cabinet of Dr. Caligari"] = 5
//print(movieRatings)

//II. REMOVING VALUE
//The method removeValueForKey(_:) takes a key as an argument and removes the key-value pair that matches what you provide. Now, movieRatings has no entry for Dark City.

//var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
//print("I have rated \(movieRatings.count) movies.")
//let darkoRating = movieRatings["Donnie Darko"]
//movieRatings["Dark City"] = 18
//movieRatings.removeValueForKey("Dark City")
//movieRatings["The Cabinet of Dr. Caligari"] = 5
//movieRatings
//let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
//if let lastRating = oldRating {
//    print(lastRating)
//}
//print(movieRatings)

//LOOPING THROUGH KEYS&VALUES

//var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
//print("I have rated \(movieRatings.count) movies.")
//let darkoRating = movieRatings["Donnie Darko"]
//movieRatings["Dark City"] = 8
//movieRatings
//let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
//if let lastRating = oldRating {
//    print(lastRating)
//}
//movieRatings["The Cabinet of Dr. Caligari"] = 5
//movieRatings["Dark City"] = nil
//for (key, value) in movieRatings {
//     print("The movie \(key) was rated \(value).")
//}

//LOOPING THROUGH KEYS ALONE
//var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
//print("I have rated \(movieRatings.count) movies.")
//let darkoRating = movieRatings["Donnie Darko"]
//movieRatings["Dark City"] = 5
//movieRatings
//let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
//if let lastRating = oldRating {
//    print(lastRating)
//}
//movieRatings["The Cabinet of Dr. Caligari"] = 5
//movieRatings["Dark City"] = nil //setting key to nil is another way of removing the key/value.
//for (key, value) in movieRatings {
//    print("The movie \(key) was rated: \(value).")
//}
//for movie in movieRatings.keys {
//    print("A user has rated \(movie).")
//}


//III. TRANSLATING A DICTIONARY TO AN ARRAY

//var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
//
//movieRatings["Dark City"] = 5
//
//let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
//if let lastRating = oldRating {
//    print(lastRating)
//}
//movieRatings["The Cabinet of Dr. Caligari"] = 5
//movieRatings.removeValueForKey("Dark City")
//
//let watchedMovies = Array(movieRatings.keys)
//print(watchedMovies)

//var players = ["Dwayne Wade": 3, "Lebron James": 6, "James Harden": 13, "Kobe Bryant": 24]
//
//players["Magic Johnson"] = 32
//players["Michael Jordan"] = 23
//
//players.removeValueForKey("James Harden")
//
//for player in players.keys {
//    switch players {
//    case _ where player == "Michael Jordan" || player == "Magic Johnson" || player == "Kobe Bryant":
//        print("\(player) was a great basketball player.")
//    default:
//        print("\(player) is a basketball player.")
//    }
//}
//
//let playArray = Array(players.keys)
//print(playArray)
//func makeMathFactory(operatorType: String) -> (Int,Int)-> Int {
//    switch operatorType {
//    case "Add":
//        return {a,b in
//                return a + b
//                }
//    case "Subtract":
//        return {a,b in
//                return a - b
//                }
//    default:
//        return {a,b in
//                return 0
//        }
//    }
//}
//func myFunc(a: Int, b: Int) -> Int {
//    return a + b
//}
//
//let myFunction = makeMathFactory("Subtract")
//print(myFunction(4,3))


