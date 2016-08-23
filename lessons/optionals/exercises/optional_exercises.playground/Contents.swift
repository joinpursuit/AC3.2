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
if var tuple1 = tuple {
	print(tuple1)
}




//B)
var myInt: Int?
if randNum() {
    myInt = 5
}

//Write code that either doubles myInt and then prints it, or prints an error message if myInt is nil
if var myInt1 = myInt {
	print(myInt1 * 2)
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

if var firstName = myString {
	print(firstName + stringTwo)
} else {
	print("Error")
}






//D)
var myDouble: Double?
let doubleTwo = 5
if randNum() {
    myDouble = 12
}
//Write code that prints out the product of myDouble and doubleTwo or prints an error message if myDouble is nil

if var firstDub = myDouble {
	print(firstDub * Double(doubleTwo))
} else {
	print("Error")
}







//E)
var isTheGreatest: Bool?
if randNum() {
    isTheGreatest = true
}
//  Determine if the variable contains a Boolean or nil value. If nil set the variable to false else keep it true
if var _ = isTheGreatest {
	
} else {
	isTheGreatest = false
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

var sum: Int?
if var a = myTuple.0 {
	sum = a
}

if var b = myTuple.1 {
	if sum != nil {
		sum! += b
	} else {
		sum = b
	}
}

if var c = myTuple.2 {
	if sum != nil {
		sum! += c
	} else {
		sum = c
	}
}

if var d = myTuple.3 {
	if sum != nil {
		sum! += d
	} else {
		sum = d
	}
}

if sum != nil {
print(sum!)
} else {
	print("sum is nil")
}








//G)
var myIntString = "35"
//Write code that adds 15 to myIntString, then prints the sum.  Use the Int() function which returns an Integer?
if var i = Int(myIntString) {
	print(i + 15)
}












//H)
var pokemon: String?
var evolutionaryStone: String?
pokemon = starterPokemon()
evolutionaryStone = eStone()
// evolve your pokemon with appropriate stone
if var poke = pokemon, var stone = evolutionaryStone {
	if poke == "Pikachu" && stone == "Electric" { print("Raichu") }
	else if poke == "Bulbasaur" && stone == "Grass" { print("Ivysaur") }
	else if poke == "Charmander" && stone == "Fire" { print("Charmeleon") }
	else if poke == "Squirtle" && stone == "Water" {print("Warturtle") }
	else { print("No evolution") }
}








//I)
var lvl: Int?
lvl = lvlGenerator()
var exp = 21
// add 150 exp if lvl is above 7

if var level = lvl {
	if level > 7 { exp += 150 }
}







