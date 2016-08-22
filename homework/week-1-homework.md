//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//AC3.2 - Week 1 - Homework
//
//I. Variables
//
//Question 1.
//
//Provide the following constants/variable names with the most appropriate type annotations.
//
//let firstName: String
//let middleInitial: Character
//var age: Int
//var latitude: String
//var longitude: String
//var isRainingCurrently: Bool
//let completeAddress: String
//let π: Double

//Question 2.
//
//Convert the following decimal numbers to Binary:
//
//55 in binary is 110111
//122 in binary is 1111010
//-1 in binary is -01
//15 in binary is 1111
//Question 3.
//
//Using nested loops, print the numbers from 0 to 100, then back to 0.
//
//for case let x in 0...1 {
//    if x == 0 {
//        for y in 0...100 {
//            print(y)
//        }
//    } else {
//        for y in (0...100).reverse() {
//            print(y)
//        }
//    }
//}
//

//Question 4.
//   //
//While i is greater than 1, print only all positive even numbers and break out of the loop when you've reached 220.
//var i = 2
//while i>1 && i<221 {
//        print(i)
//    i+=2
//}
//
//Question 5.
//
//Using any kind of loop, print the sum of all numbers between 0 to 50.
//    outerloop: for x in 0...50 {
//        innerloop: for y in 0...50 {
//            print ("Sum of \(x) + \(y) = \(x+y) ")
//        }}
//Using a while loop, print all the odd numbers from 0 to 100.
//var i = 0
//while i < 100 {
//    i += 1
//    if i%2==1 {
//        print (i)
//    }
//    }

//Using a for case loop, print all the multiples of 10 from 50 to 500.
//for case let i in 50...500 where i%10==0 {
//    print(i)
//}

//Question 6.
//
//Consider the code below. Loop through the professionals array and using a switch statement:
////
//Print out the; professionals with lastName "Smith"
//Print out all the developers.
//Print out all the non-developers.
//Print out the professionals in their 20s.
////Print out the professionals in their 30s.
//let sarah = (firstName: "Sarah", lastName: "Palardo", job: "teacher", age: 32)
//let beth = (firstName: "Beth", lastName: "Newell", job: "developer", age: 29)
//let jana = (firstName: "Jana", lastName: "Smith", job: "developer", age: 33)
//let lauren = (firstName: "Lauren", lastName: "Olson", job: "doctor", age: 27)
//let charles = (firstName: "Charles", lastName: "Wong", job: "developer" , age: 24)
//let steve = (firstName: "Steve", lastName: "Smith", job: "writer", age: 28)
//let jamal = (firstName: "Jamal", lastName: "Smith", job: "developer", age: 25)
//let navindra = (firstName: "Navindra", lastName: "Chowdhurry", job: "actuary", age: 29)
//
//let professionals = [sarah, beth, jana, lauren, charles, steve, jamal, navindra]
//////Hint: Use the framework below for your code
//for person in professionals {
//    switch person {
//        case firstName = "Smith":
//        print("\(firstName)'s last name is Smith")
////        case job = "developer":
////        print("\(firstName) is a developer")
////        case job =! "developer":
////        print ("\(firstName) is not a developer")
////    case age in 20..<30:
////        print("\(firstName) is in their 20s")
////    case age in 30..<40:
////        print("\(firstName) is in their 30s")
//    default:
//            break
//    }
//}
//Question 7.
//
//Given the arrays below, use nested loops to print out every possible card in the deck.
////
//let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
//let suits = ["♠️", "♣️", "♥️", "♦️"]
//for case let i in 0...suits.count-1 {
//    for case let n in 0...denominations.count-1 {
//        print(suits[i] ,denominations[n])
//    }}
//
//
//Question 8.
//
//Print out the lyrics to the song "99 Bottles of Beer"
//
//Hint 1: Use a for-loop and a switch statement
//Hint 2: Below is an example of reversing a range in Swift
//for i in (1...5).reverse() {
//    print(i)
//}
//
//var beers = true
//for i in (1...99).reverse() {
//    switch beers {
//    case i > 1:
//        print("\(i) bottles of beer on the wall, \(i) bottles of beer... take one down pass it around, \(i-1) bottles of beer on the wall")
//    case i == 1:
//        print("\(i) bottle of beer on the wall, \(i) bottle of beer... take one down, pass it around, no more bottles of beer on the wall")
//        fallthrough
//    case i < 1:
//        print("No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.")
//    default:
//        break
//    }
//Question 9.
//
//"FizzBuzz"
//
//Create a loop that prints all integers from 0 to 100.
//For all multiples of 3, print out "Fizz" instead of the number.
//For all multiples of 5, print out "Buzz" instead of the number.
//For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.
//for i in 1...100 {
//        if i%3==0 && i%5==0 {
//    print("FizzBuzz")
//    }; if i%5==0 {
//        print("Buzz")
//    } else if i%3==0 {
//        print("Fizz")
//    } else {
//        print(i)
//    }
//}
//    case i%3==0 && i%5==0:
//print("FizzBuzz")
//    case i%5==0:
//print("Buzz")
//    case i%3==0:
//print("Fizz")
//    default:
//print(i)
//Question 10.
//
//Write code that will print out the first 10 Fibonacci numbers:
//
//0, 1, 1, 2, 3, 5, 8, 13, 21, 34
//print(0,1,1,2,3,5,8,13,21,34)
//
//var a=0
//var b=1
//var c=0
//
//print(c=a+b)
//

var a = 0
var b = 0
var c = 0

for _ in 0..<10 {
    print(a)
    if a < 1 {
        c += 1
        b += 0
    } else {
        c = b
        b = a
    }
    a = b + c
}
