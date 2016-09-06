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


if let tupleBool = tuple{
    print(tupleBool)
}




//B)
var myInt: Int?
if randNum() {
    myInt = 5
    
  }
//Write code that either doubles myInt and then prints it, or prints an error message if myInt is nil


if let doubleMyInt = myInt {
    print(doubleMyInt * 2)
}
    
else {
    print("Error")
}




//C)
var myString: String?
let stringTwo = ", LastName"
if randNum() {
    myString = "FirstName"
    
  }
//Write code that prints out “FirstName, LastName” using string concatenation or prints an error message if myString is nil.


if let f_name = myString{
    print(f_name + stringTwo)
}
else {
    print("No name")
}







//D)
var myDouble: Double?
let doubleTwo = 5
if randNum() {
    myDouble = 12
    
    
}
//Write code that prints out the product of myDouble and doubleTwo or prints an error message if myDouble is nil

if let product = myDouble {
    print(product * Double(doubleTwo))
}
else {
    print("Error - myDouble is nil")
}








//E)
var isTheGreatest: Bool?
if randNum() {
    isTheGreatest = true
    
    
    
}
//  Determine if the variable contains a Boolean or nil value. If nil set the variable to false else keep it true


if let varBool = isTheGreatest {
    
    isTheGreatest = true
    isTheGreatest
    
} else{
    
    isTheGreatest = false
   
}







//F)
var myTuple: (Int?, Int?, Int?, Int?)
var mtuple: (Int, String)?

if randNum() {
    myTuple.0 = 5
    myTuple.2 = 14
}

if !randNum() {
    myTuple.1 = 9
    myTuple.3 = 10
}
//Print the sum of each non-nil element in myTuple.









//G)
var myIntString = "35"
//Write code that adds 15 to myIntString, then prints the sum.  Use the Int() function which returns an Integer?


print(Int(myIntString)! + 15)









//H)
var pokemon: String?
var evolutionaryStone: String?
pokemon = starterPokemon()
evolutionaryStone = eStone()
// evolve your pokemon with appropriate stone

//if pokemon == "Pikachu" && estone == "Electric







//I)
var lvl: Int?
lvl = lvlGenerator()
var exp = 21
// add 150 exp if lvl is above 7









