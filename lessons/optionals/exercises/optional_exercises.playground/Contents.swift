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

if var myTuple = tuple {
    print(myTuple)
}



//B)
var myInt: Int?
if randNum() {
    myInt = 5
}
////Write code that either doubles myInt and then prints it, or prints an error message if myInt is nil

if var num = myInt {
    print(num * 2)
} else {
    print("Error")
}



//C)
var myString: String?
var stringTwo = ", LastName"
if randNum() {
    myString = "FirstName"
}
//Write code that prints out “FirstName, LastName” using string concatenation or prints an error message if myString is nil.

if var lastName = myString {
    lastName = "FirstName"
    print(lastName + stringTwo)
} else {
    print("Error")
}




//D)
var myDouble: Double?
var doubleTwo = 5
if randNum() {
myDouble = 12
}
//Write code that prints out the product of myDouble and doubleTwo or prints an error message if myDouble is nil

if var num1 = myDouble {
    print(num1 * Double(doubleTwo))
} else {
    print("Error")
}




//E)
var isTheGreatest: Bool?
if randNum() {
    isTheGreatest = true
}
//  Determine if the variable contains a Boolean or nil value. If nil set the variable to false else keep it true

if var isVal = isTheGreatest {
    isVal = true
} else {
    var isVal = false
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

var result = 0

if let num0 = myTuple.0, num2 = myTuple.2 {
    result = num0 + num2
}

if let num1 = myTuple.1, num3 = myTuple.3 {
    result = num1 + num3
}

print(result)

//G)
var myIntString = "35"
//Write code that adds 15 to myIntString, then prints the sum.  Use the Int() function which returns an Integer?

var optInt: Int? = Int(myIntString)

if let realInt = optInt {
    var sum = realInt + 15
    print(sum)
}

//H)
var pokemon: String?
var evolutionaryStone: String?
pokemon = starterPokemon()
evolutionaryStone = eStone()
// evolve your pokemon with appropriate stone

if var pokemon = pokemon, stone = evolutionaryStone {
    switch pokemon {
    case "Charmander", "Fire":
        print("Charmander has evolved!")
    case "Pikachu", "Electric":
        print("Pikachu has evolved")
    case "Bulbasaur", "Grass":
        print("Pikachu has evolved")
    case "Squirtle", "Water":
        print("Pikachu has evolved")
    case "Not a Pokemon", "No Stone":
        fallthrough
    default:
        print("default")
    }
} else {
    print("Error")
}

//I)
var lvl: Int?
lvl = lvlGenerator()
var exp = 21
// add 150 exp if lvl is above 7

if var level = lvl {
    if level > 7 {
        exp += 150
    }
}







