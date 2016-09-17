import UIKit
//
//
//I. Variables
//
//Question 1.
//
//Provide the following constants/variable names with the most appropriate type annotations.
//
//let firstName: String
//let middleInitial: String
//var age: Int
//var latitude: Int
//var longitude: Int
//var isRainingCurrently: Boolean
//let completeAddress: Tuple
//let π: Double
//Question 2.
//
//Convert the following decimal numbers to Binary:

55
00110111
//122
01111010
//-1
10000001
//15
00001111
//Question 3
//
//Using nested loops, print the numbers from 0 to 100, then back to 0.

for i in 0...100 {
print(i)
if i == 100 {
var j = i - 1
while j > -1 {
print(j)
j -= 1
}
}
}

//Question 4.
//
//While i is greater than 1, print only all positive even numbers and break out of the loop when you've reached 220.
//

var i = 1
while i >= 1 {
i += 1
if i % 2 == 0 {
print (i)
if i == 220 {
break
}
}
}

//Question 5.
//
//Using any kind of loop, print the sum of all numbers between 0 to 50.

var sum = 0
for i in 0...50 {
sum = i + sum
}
print(sum)

//Using a while loop, print all the odd numbers from 0 to 100.

var i = 0
while i <= 100 {

if i % 2 == 1 {
print(i)
}
i += 1
}
//
//Using a for case loop, print all the multiples of 10 from 50 to 500.
for case let i in 50...500 where i % 5 == 0 && i % 10 == 0 {
print(i)
}
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
//
let professionals = [sarah, beth, jana, lauren, charles, steve, jamal, navindra]

for person in professionals {
switch person {
case (_, "Smith", _ , _):
print(person)
case (_, _ , "developer", _):
print(person)
case (_, _ , _, 20...29):
print(person)
case (_, _ , _, 30...39):
print(person)

default:

break

}
}
//Hint: Use the framework below for your code

//Question 7.
//
//Given the arrays below, use nested loops to print out every possible card in the deck.
//
let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
let suits = ["♠️", "♣️", "♥️", "♦️"]

//Take each of denominations and print it out with a suit ~ Loop this
for suit in suits {
for denomination in denominations {
print("\(denomination) , \(suit)")
}
print("")
}


//Question 8.
//
//Print out the lyrics to the song "99 Bottles of Beer"
//
//Hint 1: Use a for-loop and a switch statement
//Hint 2: Below is an example of reversing a range in Swift
var bottlesOfBeer = 99

for _ in (0...99).reverse() {
switch bottlesOfBeer {
case 2:
print("\(bottlesOfBeer) bottles of beer on the wall, \(bottlesOfBeer) bottles of beer.")
bottlesOfBeer -= 1
print("Take one down and pass it around, \(bottlesOfBeer) bottle of beer on the wall.")
print("")
case 1:
print("\(bottlesOfBeer) bottle of beer on the wall, \(bottlesOfBeer) bottle of beer.")
bottlesOfBeer -= 1
print("Take one down and pass it around, no more bottles of beer on the wall.")
print("")
case 0:
print("No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall!")

default:
print("\(bottlesOfBeer) bottles of beer on the wall, \(bottlesOfBeer) bottles of beer.")
bottlesOfBeer -= 1
print("Take one down and pass it around, \(bottlesOfBeer) bottles of beer on the wall.")
print("")
}
}

for i in (1...5).reverse() {
print(i)
}
//Question 9.
//
//"FizzBuzz"
//
//Create a loop that prints all integers from 0 to 100.
//For all multiples of 3, print out "Fizz" instead of the number.
//For all multiples of 5, print out "Buzz" instead of the number.
//For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.

for i in 1...100 {
if i % 15 == 0 {
print("FizzBuzz")
}
else if i % 3 == 0 {
print("Fizz")
}
else if i % 5 == 0 {
print("Buzz")
}
else {
print(i)
}
}

//Question 10.
//
//Write code that will print out the first 10 Fibonacci numbers:
//
//0, 1, 1, 2, 3, 5, 8, 13, 21, 34


var num1 = 0
var num2 = 1 

for _ in 0...8 {
let sum = num1
num1 = num2
num2 = sum + num2
print(num1)
}

