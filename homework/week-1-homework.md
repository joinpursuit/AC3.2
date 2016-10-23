<<<<<<< HEAD
```
//: Playground - noun: a place where people can play

import UIKit

//Question 1.
//
//Provide the following constants/variable names with the most appropriate type annotations.

let firstName: String
let middleInitial: Character
var age: UInt8
var latitude: Double
var longitude: Double
var isRainingCurrently: Bool
let completeAddress: String
let π:Double

//Question 2.
//
//Convert the following decimal numbers to Binary:

55 == 0110111
122 == 01111010
-1 == 11
15 == 01111

//Question 3.
//Using nested loops, print the numbers from 0 to 100, then back to 0.

var isMax = false
for a in (1...100).reverse(){
if isMax == false{
for i in 1...100{
print(i)
}
isMax = true
}
print(a)
}

//Question 4.
//While i is greater than 1, print only all positive even numbers and break out of the loop when you've reached 220.

var i = 2
while i <= 220{
print(i)
i = i+2
}

//Question 5.
//Using any kind of loop, print the sum of all numbers between 0 to 50.

var sum = 0
for i in 0...50{
sum = sum + i
}
print(sum)

//Using a while loop, print all the odd numbers from 0 to 100.

var i = 1
while i <= 100{
print(i)
i = i + 2
}

//Using a for case loop, print all the multiples of 10 from 50 to 500.

for case let i in 50...500 where i % 10 == 0 {
print(i)
}

//Question 6.
//
//Consider the code below. Loop through the professionals array and using a switch statement:

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
//        
//    }
//}

//Print out the professionals with lastName "Smith".

for person in professionals {
switch person.1 {
case "Smith":
print(person.0)
default:
break
}
}

//Print out all the developers.

for person in professionals {
switch person.2 {
case "developer":
print(person.0)
default:
break
}
}

//Print out all the non-developers.

for person in professionals {
switch person.2 {
case "developer":
break
default:
print(person.0)
}
}

//Print out the professionals in their 20s.

for person in professionals {
switch person.3 {
case 20...29:
print(person.0)
default:
break
}
}

//Print out the professionals in their 30s.

for person in professionals {
switch person.3 {
case 30...39:
break
default:
print(person.0)
}
}

//Question 7.
//Given the arrays below, use nested loops to print out every possible card in the deck.
//let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
//let suits = ["♠️", "♣️", "♥️", "♦️"]
//
//
//for a in suits {
//    for b in denominations{
//        print(a,b)
//    }
//}

//Question 8.
//Print out the lyrics to the song "99 Bottles of Beer"
//Hint 1: Use a for-loop and a switch statement
//Hint 2: Below is an example of reversing a range in Swift

for i in (0...99).reverse() {
switch i{
case 0:
print("No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.")
case 1:
print("1 bottles of beer on the wall, 1 bottles of beer. Take one down and pass it around, no more bottles of beer on the wall.")
default:
print("\(i) bottles of beer on the wall, \(i) bottles of beer. Take one down and pass it around, \(i - 1) bottles of beer on the wall.")
}
}

//Question 9.
//"FizzBuzz"
//Create a loop that prints all integers from 0 to 100.
//For all multiples of 3, print out "Fizz" instead of the number.
//For all multiples of 5, print out "Buzz" instead of the number.
//For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.

for i in 0...100{
if i%3 == 0 && i%5 == 0{
print("FizzBuzz")
}
else if i%3 == 0{
print("Fizz")
}
else if i%5 == 0{
print("Buzz")
}
else{
print(i)
}
}

//Question 10.
//Write code that will print out the first 10 Fibonacci numbers:
//0, 1, 1, 2, 3, 5, 8, 13, 21, 34


var num1 = 0
var num2 = 0
var sum = 0
for i in 0..<10{
if i <= 1{
print(i)
num1 = num2
num2 += i
}else{
sum = num1 + num2
num1 = num2
num2 = sum
print(sum)
}
}
```

=======
>>>>>>> e6fed9bc33396c5729f254a05d04786d5bc0d0d9
## AC3.2 - Week 1 - Homework

### I. Variables

#### Question 1.
<<<<<<< HEAD
Provide the following constants/variable names with the most appropriate type annotations.

=======
<<<<<<< HEAD
With your understanding of proper naming conventions, provide the following constants/variable names with the most proper value ```type```.
=======
Provide the following constants/variable names with the most appropriate type annotations.

>>>>>>> upstream/master
>>>>>>> e6fed9bc33396c5729f254a05d04786d5bc0d0d9
1. let _firstName_: (type?)
2. let _middleInitial_:
3. var _age_:
4. var _latitude_:
5. var _longitude_:
6. var _isRainingCurrently_:
7. let _completeAddress_:
8. let _π_:

#### Question 2.
<<<<<<< HEAD
Convert the following decimal numbers to Binary:
=======
<<<<<<< HEAD
Convert the following to Binary:
=======
Convert the following decimal numbers to Binary:
>>>>>>> upstream/master
>>>>>>> e6fed9bc33396c5729f254a05d04786d5bc0d0d9
* 55
* 122
* -1
* 15
<<<<<<< HEAD
=======
<<<<<<< HEAD
* -51

#### Question 3.
Using nested loops that prints the numbers from 0 to 100, then back to 0.

#### Question 4.
While ```i``` is greater than 1, print only all positive even numbers and break the loop only when you've reached 220.

#### Question 5.
* Using any loop, print the sum of all numbers between 0 to 50.
* Using a while loop, print all the odd numbers from 0 to 100.
* Using a loop and a ```where``` condition, print all the multiples of 10 from 0 to 500.
=======
>>>>>>> e6fed9bc33396c5729f254a05d04786d5bc0d0d9

#### Question 3.
Using nested loops, print the numbers from 0 to 100, then back to 0.

#### Question 4.
While ```i``` is greater than 1, print only all positive even numbers and break 
out of the loop when you've reached 220.

#### Question 5.
* Using any kind of loop, print the sum of all numbers between 0 to 50.
* Using a while loop, print all the odd numbers from 0 to 100.
* Using a ```for case``` loop, print all the multiples of 10 from 50 to 500.
<<<<<<< HEAD
=======
>>>>>>> upstream/master
>>>>>>> e6fed9bc33396c5729f254a05d04786d5bc0d0d9

#### Question 6.
Consider the code below. Loop through the ```professionals``` array and using a switch statement:
* Print out the professionals with _lastName_ "Smith".
* Print out all the developers.
* Print out all the non-developers.
* Print out the professionals in their 20s.
* Print out the professionals in their 30s.

<<<<<<< HEAD
```swift
=======
<<<<<<< HEAD
```
=======
```swift
>>>>>>> upstream/master
>>>>>>> e6fed9bc33396c5729f254a05d04786d5bc0d0d9
let sarah = (firstName: "Sarah", lastName: "Palardo", job: "teacher", age: 32)
let beth = (firstName: "Beth", lastName: "Newell", job: "developer", age: 29)
let jana = (firstName: "Jana", lastName: "Smith", job: "developer", age: 33)
let lauren = (firstName: "Lauren", lastName: "Olson", job: "doctor", age: 27)
let charles = (firstName: "Charles", lastName: "Wong", job: "developer" , age: 24)
let steve = (firstName: "Steve", lastName: "Smith", job: "writer", age: 28)
let jamal = (firstName: "Jamal", lastName: "Smith", job: "developer", age: 25)
let navindra = (firstName: "Navindra", lastName: "Chowdhurry", job: "actuary", age: 29)

let professionals = [sarah, beth, jana, lauren, charles, steve, jamal, navindra]
```
<<<<<<< HEAD
=======
<<<<<<< HEAD
* Hint: Use the below framework for your code
```
for person in professionals {
      switch person {

      }
=======
>>>>>>> e6fed9bc33396c5729f254a05d04786d5bc0d0d9

* Hint: Use the framework below for your code

```swift
for person in professionals {
	switch person {
 
	}
<<<<<<< HEAD
=======
>>>>>>> upstream/master
>>>>>>> e6fed9bc33396c5729f254a05d04786d5bc0d0d9
}
```

#### Question 7.
Given the arrays below, use nested loops to print out every possible card in the deck.
<<<<<<< HEAD
=======
<<<<<<< HEAD
```
let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
let suits = ["♠️", "♣️", "♥️", "♦️"]
=======
>>>>>>> e6fed9bc33396c5729f254a05d04786d5bc0d0d9

```swift
let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
let suits = ["♠️", "♣️", "♥️", "♦️"]
```
<<<<<<< HEAD
=======
>>>>>>> upstream/master
>>>>>>> e6fed9bc33396c5729f254a05d04786d5bc0d0d9

#### Question 8.
Print out the lyrics to the song ["99 Bottles of Beer"](http://www.99-bottles-of-beer.net/lyrics.html)
* Hint 1: Use a for-loop and a switch statement
* Hint 2: Below is an example of reversing a range in Swift
<<<<<<< HEAD

```swift
=======
<<<<<<< HEAD
```
=======

```swift
>>>>>>> upstream/master
>>>>>>> e6fed9bc33396c5729f254a05d04786d5bc0d0d9
for i in (1...5).reverse() {
    print(i)
}
```

#### Question 9.
##### "FizzBuzz"
* Create a loop that prints all integers from 0 to 100.
* For all multiples of 3, print out "Fizz" instead of the number.
* For all multiples of 5, print out "Buzz"  instead of the number.
* For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.

#### Question 10.
<<<<<<< HEAD
=======
<<<<<<< HEAD
Write code that will print out the first 10 [Fibonacci](http://www.codeforwin.in/2015/06/fibonacci-series-in-c-program.html) numbers.
=======
>>>>>>> e6fed9bc33396c5729f254a05d04786d5bc0d0d9
Write code that will print out the first 10 [Fibonacci](http://www.codeforwin.in/2015/06/fibonacci-series-in-c-program.html) numbers:

```
0, 1, 1, 2, 3, 5, 8, 13, 21, 34
```
<<<<<<< HEAD
=======
>>>>>>> upstream/master
>>>>>>> e6fed9bc33396c5729f254a05d04786d5bc0d0d9
