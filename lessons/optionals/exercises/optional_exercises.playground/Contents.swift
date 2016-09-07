//: Playground - noun: a place where people can play

import UIKit

//---------------------------------------------
// Helper Function
func randNum() -> Bool {
    let random = Int(arc4random_uniform(6)) % 2
    if random == 0 {
        return true
    }
    return false
}


func lvlGenerator() -> Int {
    return Int(arc4random_uniform(12))
}

func eStone() -> String {
    let random = Int(arc4random_uniform(3))
    switch random {
    case 0:
        return "Electric"
    case 1:
        return "Grass"
    case 2:
        return "Fire"
    case 3:
        return "Water"
    default:
        return "No Stone"
    }
}

func starterPokemon() -> String {
    let random = Int(arc4random_uniform(3))
    switch random {
    case 0:
        return "Pikachu"
    case 1:
        return "Bulbasaur"
    case 2:
        return "Charmander"
    case 3:
        return "Squirtle"
    default:
        return "Not a Pokemon"
    }
}
//---------------------------------------------



//A)
var tuple: (Int, Int)?
if randNum() {
    tuple = (5, 3)
    
}
// safely unwrap “tuple” if there’s a non-nil tuple value and print it out

if let numbers = tuple {
    print(numbers)
}



//B)
var myInt: Int?
if randNum() {
    myInt = 5
}
//Write code that either doubles myInt and then prints it, or prints an error message if myInt is nil

if var myNum = myInt {
    myNum = myNum * 2
    print(myNum)
} else {
    print("Error")
}





//C)
var myString: String?
let stringTwo = ", LastName"
if randNum() {
    myString = "FirstName"
}
//Write code that prints out “FirstName, LastName” using string concatenation or prints an error message if myString is nil.


if var firstName = myString   {
    firstName += stringTwo
    print(firstName)
} else {
    print("Error")
}





//D)
var myDouble: Double?
var doubleTwo: Double = 5.0
if randNum() {
    myDouble = 12
}
//Write code that prints out the product of myDouble and doubleTwo or prints an error message if myDouble is nil


if var myNum = myDouble {
    myNum *= doubleTwo
    print(myNum)
} else {
    print ("Error")
}






//E)
var isTheGreatest: Bool?
if randNum() {
    isTheGreatest = true
}
//  Determine if the variable contains a Boolean or nil value. If nil set the variable to false else keep it true

if var decision = isTheGreatest {
    if decision == true {
    print("This is true")
    }
} else {
    print("This is false")
}






//F)
var myTuple: (Int?, Int?, Int?, Int?)

if randNum() {
    myTuple.0 = 5
    myTuple.2 = 14
}

if !randNum() {
    myTuple.1 = 9
    myTuple.3 = 10
}
//Print the sum of each non-nil element in myTuple.

if let numOne = myTuple.0, numTwo = myTuple.1, numThree = myTuple.2, numFour = myTuple.3 {
    var sumTuple = numOne + numTwo + numThree + numFour
    print(sumTuple)
}


//Review

var sum = 0

if let numZero = myTuple.0 {
    sum += numZero
}
if let numOne = myTuple.1 {
    sum += numOne
}
if let numTwo = myTuple.2 {
    sum += numTwo
}
if let numThree = myTuple.3 {
sum += numThree
}


print(sum)


//G)
let myIntString = "35"
//Write code that adds 15 to myIntString, then prints the sum.  Use the Int() function which returns an Integer?


var intString = Int(myIntString)
intString! = intString! + 15
print(intString!)









//H)
let pokemon: String?
var evolutionaryStone: String?
pokemon = starterPokemon() // parenthesis point to the helper functions above, returns a string ()this on its own means void
evolutionaryStone = eStone()
// evolve your pokemon with appropriate stone







//I)
var lvl: Int?
lvl = lvlGenerator()
var exp = 21
// add 150 exp if lvl is above 7


if lvl > 7 {
    exp = 150
}

if let currentlvl = lvl where currentlvl > 7 {
    exp = 150
}





