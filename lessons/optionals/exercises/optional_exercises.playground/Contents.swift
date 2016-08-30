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

if let t = tuple{
    print("there is value")

} else{
    print("Nil")
}



//B)
var myInt: Int?  // there was let myINt before you have to change it to var
if let num = myInt{
    
    print(num * 2)
    
}

else{


print("Error")}
//Write code that either doubles myInt and then prints it, or prints an error message if myInt is nil



//C)
var myString: String? = "first"
var stringTwo = ", LastName"


if var lastName = myString  {

    lastName = "First Name"
    print(lastName + stringTwo )
    
}
    
else{
    
    
    print("Error")}
    
    

//Write code that prints out “FirstName, LastName” using string concatenation or prints an error message if myString is nil.


//D)

var myDouble: Double?
var doubleTwo = 5
 myDouble = 12

if let num = myDouble{
    
   print(num * (Double)(doubleTwo))
    
}else{
    
    print("Error")}

//Write code that prints out the product of myDouble and doubleTwo or prints an error message if myDouble is nil




//E)
var isTheGreatest: Bool?


if var isval = isTheGreatest {
    isval = true
    
}else{
    
 var isval = false

}
//  Determine if the variable contains a Boolean or nil value. If nil set the variable to false else keep it true










//F)
var myTuple: (num1: Int?, num2: Int?, num3:Int?, num4: Int?)?

//if let atuple = myTuple { ??????????
//   myTuple.0 = 5
//    myTuple.2 = 14
//    
//    print ("hello")
//}
//
//else {
//    myTuple.1 = 9
//    myTuple.3 = 10
//    print(myTuple?.num1 + myTuple?.num2 )
//}
//Print the sum of each non-nil element in myTuple.



//G)
let myIntString = "35"
//Write code that adds 15 to myIntString, then prints the sum.  Use the Int() function which returns an Integer?

//Int(myString)
//print(myString + 1)










//H)
let pokemon: String?
var evolutionaryStone: String?
pokemon = starterPokemon()
evolutionaryStone = eStone()
// evolve your pokemon with appropriate stone








//I)
var lvl: Int?
lvl = lvlGenerator()
var exp = 21
// add 150 exp if lvl is above 7









