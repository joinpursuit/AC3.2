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
var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
print("I have rated \(movieRatings.count) movies.")
let darkoRating = movieRatings["Donnie Darko"]
movieRatings["Dark City"] = 5
movieRatings
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating {
    print(lastRating)
}
movieRatings["The Cabinet of Dr. Caligari"] = 5
movieRatings["Dark City"] = nil //setting key to nil is another way of removing the key/value.
for (key, value) in movieRatings {
    print("The movie \(key) was rated: \(value).")
}
for movie in movieRatings.values {
    switch movie {
        case 
        print("This movie has not yet been rated.")
    }
}

