//: Playground - noun: a place where people can play
import UIKit


//---------------------------------------------
// Helper Function

```swift
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
```
//---------------------------------------------
//A)
// safely unwrap “tuple” if there’s a non-nil tuple value and print it out

```swift
var tuple: (Int, Int)?
if randNum() {
    tuple = (5, 3)
}
if let (t,v) = tuple {
    print (t,v)
}
```

//B)
//Write code that either doubles myInt and then prints it, or prints an error message if myInt is nil

```swift
var myInt: Int?
if randNum() {
    myInt = 5
}
if let x = myInt{
    print (2*x)
}
else
{
    print("error")
}
```
//C)
//Write code that prints out “FirstName, LastName” using string concatenation or prints an error message if myString is nil.

```swift
var myString: String?
let stringTwo = ", LastName"
if randNum() {
    myString = "FirstName"
}
if let first = myString {
    print(first + stringTwo)
} else {
    print("ERROR!!!!")
}
```
//D)
//Write code that prints out the product of myDouble and doubleTwo or prints an error message if myDouble is nil

```swift
var myDouble: Double?
let doubleTwo = 5.0
if randNum() {
    myDouble = 12.0
}
if let x = myDouble {
    print ( x * (doubleTwo))
}
else {
    print ("error")
}
```
//E)
//  Determine if the variable contains a Boolean or nil value. If nil set the variable to false else keep it true

```swift
var isTheGreatest: Bool?
if randNum() {
    isTheGreatest = true
}
if let x = isTheGreatest{
    print ("true")
}else{
    print("false")
}
```
//F)
//Print the sum of each non-nil element in myTuple.

```swift
var myTuple: (Int?, Int?, Int?, Int?)
if randNum() {
    myTuple.0 = 5
    myTuple.2 = 14
    print(myTuple)
}
if !randNum() {
    myTuple.1 = 9
    myTuple.3 = 10
}
var sum = 0
if let numZero = myTuple.0{
    sum += numZero
}
if let numberOne = myTuple.1{
    sum += numberOne
}
if let numTwo = myTuple.2{
    sum += numTwo
}
if let numthree = myTuple.3{
    sum += numthree
}
```