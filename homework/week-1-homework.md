//: Playground - noun: a place where people can play

import UIKit


## AC3.2 - Week 1 - Homework

### I. Variables

#### Question 1.
Provide the following constants/variable names with the most appropriate type annotations.

1. let _firstName_: String
2. let _middleInitial_: Character
3. var _age_: Int
4. var _latitude_: Double
5. var _longitude_: Double
6. var _isRainingCurrently_: Bool
7. let _completeAddress_: String
8. let _π_: Double

#### Question 2.
Convert the following decimal numbers to Binary:
* 55 = 00110111
* 122 = 01111010
* -1 = 1111111111111111111111111111111111111111111111111111111111111111
* 15 = 00001111

#### Question 3.
Using nested loops, print the numbers from 0 to 100, then back to 0.
```swift
var increment = 0
repeat {
if increment <= 100 {
print(increment)
increment += 1
}
if increment == 101 {
repeat {
increment -= 1
print(increment)
} while increment > 0
}
} while increment != 0
```

#### Question 4.
While ```i``` is greater than 1, print only all positive even numbers and break
out of the loop when you've reached 220.
```swift
var i = 2
while i > 1 {
print(i)
i += 1
if i > 220 {
break
}
}
```
#### Question 5.
* Using any kind of loop, print the sum of all numbers between 0 to 50.
```swift
var sum = 0
for i in 0...50 {
sum += i
}
print(sum)
```
* Using a while loop, print all the odd numbers from 0 to 100.
```swift
var i = 0
while i <= 100 {
if i % 2 == 1 {
print(i)
}
i += 1
}
```
* Using a ```for case``` loop, print all the multiples of 10 from 50 to 500.
```swift
for case let i in 50...500 where i % 10 == 0 {
print(i)
}
```

#### Question 6.
Consider the code below. Loop through the ```professionals``` array and using a switch statement:
* Print out the professionals with _lastName_ "Smith".
```swift
for i in 0..<professionals.count where professionals[i].lastName == "Smith" {
print(professionals[i])
}
```
* Print out all the developers.
```swift
for i in 0..<professionals.count where professionals[i].job == "developer" {
print(professionals[i])
}
```
* Print out all the non-developers.
```swift
for i in 0..<professionals.count where professionals[i].job != "developer" {
print(professionals[i])
}
```
* Print out the professionals in their 20s.
```swift
for i in 0..<professionals.count where professionals[i].age / 10 == 2 {
print(professionals[i])
}
```
* Print out the professionals in their 30s.
```swift
for i in 0..<professionals.count where professionals[i].age / 10 == 3 {
print(professionals[i])
}
```

```swift
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

* Hint: Use the framework below for your code

```swift
for person in professionals {
switch person {

}
}
```

#### Question 7.
Given the arrays below, use nested loops to print out every possible card in the deck.

```swift
let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
let suits = ["♠️", "♣️", "♥️", "♦️"]
for x in 0..<suits.count {
for y in 0..<denominations.count {
print("\(suits[x]), \(denominations[y])")
}
}
```

#### Question 8.
Print out the lyrics to the song ["99 Bottles of Beer"](http://www.99-bottles-of-beer.net/lyrics.html)
* Hint 1: Use a for-loop and a switch statement
* Hint 2: Below is an example of reversing a range in Swift
* Answer Below

```swift
for i in (0...99).reverse() {
switch i {
case 2...99:
print("\(i) bottles of beer on the wall, \(i) bottles of beer. Take one down and pass it around, \(i - 1) bottles of beer on the wall.")
case 1:
print("\(i) bottle of beer on the wall, (i) bottle of beer. Take one down and pass it around, no more bottles of beer on the wall.")
default:
print("No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.")
}
}
```

#### Question 9.
##### "FizzBuzz"
* Create a loop that prints all integers from 0 to 100.
* For all multiples of 3, print out "Fizz" instead of the number.
* For all multiples of 5, print out "Buzz"  instead of the number.
* For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.
```swift
for i in 0...100 {
if i == 0 {
print(i)
} else if i % 3 == 0 && i % 5 == 0 {
print("FizzBuzz")
} else if i % 3 == 0 {
print("Fizz")
} else if i % 5 == 0 {
print("Buzz")
} else {
print(i)
}
}
```
#### Question 10.
Write code that will print out the first 10 [Fibonacci](http://www.codeforwin.in/2015/06/fibonacci-series-in-c-program.html) numbers:

```
0, 1, 1, 2, 3, 5, 8, 13, 21, 34
```
```swift
var a = 0
var b = 1
for _ in 0..<9 {
let temp = a
a = b
b = temp + b
print(a)
}
```

