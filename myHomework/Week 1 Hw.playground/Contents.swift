import UIKit

//Question 1.
//
//Provide the following constants/variable names with the most appropriate type annotations.

let firstName: String
let middleInitial: Character
var age: Int
var latitude: Double
var longitude: Double
var isRainingCurrently: Bool
let completeAddress: String
let π: Double
//Question 2.
//
//Convert the following decimal numbers to Binary:

//55 00110111
//122 01111010
//-1 11111111
//15 00001111
//
//Question 3.
//
//Using nested loops, print the numbers from 0 to 100, then back t

//for i in 0...100{
//    print(i)
//}
//    for j in (0...99).reverse() {
//        print(j)
//    }

//Question 4.
//
//While i is greater than 1, print only all positive even numbers and break out of the loop when you've reached 220.

//for i in 0...220 {
//    if i % 2 == 0 {
//        print(i)
//    }
//}
//
//Question 5.
//
//Using any kind of loop, print the sum of all numbers between 0 to 50.
//var sum = 0
//
//for i in 0...50 {
//    sum += i
//    print(sum)
//}
//Using a while loop, print all the odd numbers from 0 to 100.
//var i = 0
//
//while i < 100 {
//    i += 1
//    if i % 2 != 0 {
//        print(i)
//    }
//}

//Using a for case loop, print all the multiples of 10 from 50 to
//500.

//for i in 50...500 {
//    if i % 10 == 0 {
//        print(i)
//    }
//}
//Question 6.
//
//Consider the code below. Loop through the professionals array and using a switch statement:
//
//Print out the professionals with lastName "Smith".
//Print out all the developers.
//Print out all the non-developers.
//Print out the professionals in their 20s.
//Print out the professionals in their 30s.
let sarah = (firstName: "Sarah", lastName: "Palardo", job: "teacher", age: 32)
let beth = (firstName: "Beth", lastName: "Newell", job: "developer", age: 29)
let jana = (firstName: "Jana", lastName: "Smith", job: "developer", age: 33)
let lauren = (firstName: "Lauren", lastName: "Olson", job: "doctor", age: 27)
let charles = (firstName: "Charles", lastName: "Wong", job: "developer" , age: 24)
let steve = (firstName: "Steve", lastName: "Smith", job: "writer", age: 28)
let jamal = (firstName: "Jamal", lastName: "Smith", job: "developer", age: 25)
let navindra = (firstName: "Navindra", lastName: "Chowdhurry", job: "actuary", age: 29)

let professionals = [sarah, beth, jana, lauren, charles, steve, jamal, navindra]
//Hint: Use the framework below for your code
//for person in professionals {
//    switch person {

//    }
//}

// Print everyone with the last name "Smith".

//for person in professionals {
//    switch person.lastName{
//    case "Smith":
//        print("\(person.firstName)'s last name is \(person.lastName) they are a \(person.job).")
//    default:
//        break
//    }
//}

// Print everyone who is a "developer".

//for person in professionals {
//    switch person.job {
//    case "developer":
//        print("\(person.firstName) \(person.lastName) is a \(person.job).")
//    default:
//        break
//    }
//}

//Print everyone who is not a "developer".

//for person in professionals {
//    switch person.job {
//    case _ where person.job != "developer":
//        print("\(person.firstName) \(person.lastName) is a \(person.job).")
//    default:
//        break
//    }
//}

//print everyone who is in their 20s/ 30s

//for person in professionals {
//    switch person.age {
//    case _ where person.age < 30:
//        print("\(person.firstName) \(person.lastName) is \(person.age). They are in their twenties.")
//    default:
//        print("\(person.firstName) \(person.lastName) is \(person.age). They are in their thirties.")
//    }
//}

//Question 7.
//
//Given the arrays below, use nested loops to print out every possible card in the deck.
//

//let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
//let suits = ["♠️", "♣️", "♥️", "♦️"]
//
//for suit in suits {
//    for den in denominations {
//        print(suit+den)
//    }
//}

//Question 8.
//
//Print out the lyrics to the song "99 Bottles of Beer"
//
//Hint 1: Use a for-loop and a switch statement
//Hint 2: Below is an example of reversing a range in Swift
//for i in (1...5).reverse() {
//    print(i)
//}


//for i in (1...99).reverse() {
//    var lessBeer = i - 1
//    print("\(i) bottles of beer on the wall, \(i) bottles of beer. take one down pass it around \(lessBeer) bottles of on the wall.")
//}


//Question 9.
//
//"FizzBuzz"
//
//Create a loop that prints all integers from 0 to 100.
//For all multiples of 3, print out "Fizz" instead of the number.
//For all multiples of 5, print out "Buzz" instead of the number.
//For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.

//All numbers between 1 && 100

//for i in 0...100 {
//    print(i)
//}

//Multiples of 3

//for i in 0...100 {
//    if i % 3 == 0 {
//        print("\(i): Fizz")
//    }
//}

//Multiples of 5

//for i in 0...100 {
//    if i % 5 == 0 {
//        print("\(i): Buzz")
//    }
//}

//Multiples of 3 && 5

//for i in 0...100 {
//    if i % 3 == 0 && i % 5 == 0 {
//        print("\(i): FizzBuzz")
//    }
//}


//Question 10.
//
//Write code that will print out the first 10 Fibonacci numbers:
//
//0, 1, 1, 2, 3, 5, 8, 13, 21, 34

//var fibonacci = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
//
//for i in fibonacci {
//    print(i)
//}