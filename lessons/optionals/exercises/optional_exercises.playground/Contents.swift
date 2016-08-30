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




//---------------------------------------------



//A)
var tuple: (Int, Int)?
if randNum() {
    tuple = (5, 3)
}
// safely unwrap “tuple” if there’s a non-nil tuple value and print it out

if let num = tuple {
    print(num)

}




//B)
var myInt: Int?
if randNum() {
    myInt = 5
}
//Write code that either doubles myInt and then prints it, or prints an error message if myInt is nil

if let f = myInt {
    var product = f*2
    print(product)
    
} else if myInt == nil {
    print("Error")
}








//C)
var myString: String?
let stringTwo = ", LastName"
if randNum() {
    myString = "FirstName"
}
//Write code that prints out “FirstName, LastName” using string concatenation or prints an error message if myString is nil.


if let real = myString {
    print(real + stringTwo)
} else if myString == nil {
    print("Error")
}






//D)
var myDouble: Double?
let doubleTwo = 5
if randNum() {
    myDouble = 12
}
//Write code that prints out the product of myDouble and doubleTwo or prints an error message if myDouble is nil


if let dn = myDouble {
    var sum = Int(dn) + doubleTwo
    print(sum)
}





//E)
var isTheGreatest: Bool?
if randNum() {
    isTheGreatest = true
}
//  Determine if the variable contains a Boolean or nil value. If nil set the variable to false else keep it true

if let x = isTheGreatest {
    if x == true {
        print("This is a Bool")
    } else {
        print("Nothing")
    }
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




//G)
let myIntString = "35"
//Write code that adds 15 to myIntString, then prints the sum.  Use the Int() function which returns an Integer?
let myInt2 = Int(myIntString)
if let myInt3 = myInt2 {
    print(myInt3 + 15)
} else {
    print("not a number")
}















var addedString = 15
//print(Int(myIntString)! + addedString)



func stringToInt(string: String) -> Int? {
    return Int(string)
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

//H)
let pokemon: String?
var evolutionaryStone: String?
pokemon = starterPokemon()
evolutionaryStone = eStone()

if let pokemon2 = pokemon, evolutionaryStone2 = evolutionaryStone {
    let combo =  (pokemon2, evolutionaryStone2)
    switch combo {
        case ("Pikachu", _):
            print("Evolve")
        case (_, "Grass"):
            print("Evolve")
        case ("Charmander", "Fire"):
            print("Evolve")
        case ("Squirtle", "Water"):
            print("Evolve")
        default:
            print("Don't Evolve")
    }
}
// evolve your pokemon with appropriate stone








//I)
var lvl: Int?
var exp = 21
lvl = lvlGenerator()
if let lvl2 = lvl {
    var exp2 = exp + lvl2
    if lvl > 7 {
        lvl2 + 150
    }



// add 150 exp if lvl is above 7

//let myInt2 = Int(myIntString)
//if let myInt3 = myInt2







