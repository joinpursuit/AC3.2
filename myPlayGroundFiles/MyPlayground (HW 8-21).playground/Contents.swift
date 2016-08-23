//: Playground - noun: a place where people can play

import UIKit

AC3.2 - Week 1 - Homework

I. Variables

Question 1.

Provide the following constants/variable names with the most appropriate type annotations.

```swift
let firstName: String = "Tyler"

let middleInitial: Character = "T"

var age: Int = 23

var latitude: Double = 40.6782

var longitude: Double = 73.9442

var isRainingCurrently: Bool = false

let completeAddress: String = "274 East 9th Street Brooklyn, Ny, 11218"

let π: Double = 3.14159265359
```

Question 2.

Convert the following decimal numbers to Binary:

```swift
func convertToBinary(decimal: Int) -> String {
    var result = ""
    var value = decimal
    
    while value != 0 {
        result = (value % 2 != 0 ? "1" : "0")+result
        value /= 2
    }
    
    while result.characters.count % 8 != 0 {
        
        result = "0" + result
    }
    
    return result
}
convertToBinary(55)
convertToBinary(122)
convertToBinary(-1)
convertToBinary(15)
```

Question 3.
Using nested loops, print the numbers from 0 to 100, then back to 0.

```swift
for i in 0...1 {
        for j in 0...100 {
            if i == 1 {
                print(j)
            } else {
                if j == 100 {
                    continue
                }
                print(j)
            }
    }
}
```

Question 4.

While i is greater than 1, print only all positive even numbers and break out of the loop when you've reached 220.
```swift
var i = 2
while (i > 1) {
    if i % 2 == 0 {
        print(i)
    }
    if i >= 220 {
        break
    }
    i += 1
}
```
Question 5.

Using any kind of loop, print the sum of all numbers between 0 to 50.
```swift
var num = 0
for i in 0...50{
   num = i + num
    print(num)
}
```

Using a while loop, print all the odd numbers from 0 to 100.
```swift
for i in 0...100 {
    while i < 101 {
    ++myFirstInt
    print(myFirstInt)
    ++i
}
}
```
Using a for case loop, print all the multiples of 10 from 50 to 500.

Question 6.

Consider the code below. Loop through the professionals array and using a switch statement:
Print out all the non-developers.
Print out the professionals with lastName "Smith".
Print out all the developers.
Print out the professionals in their 20s.
Print out the professionals in their 30s.

```swith
let sarah = (firstName: "Sarah", lastName: "Palardo", job: "teacher", age: 32)
let beth = (firstName: "Beth", lastName: "Newell", job: "developer", age: 29)
let jana = (firstName: "Jana", lastName: "Smith", job: "developer", age: 33)
let lauren = (firstName: "Lauren", lastName: "Olson", job: "doctor", age: 27)
let charles = (firstName: "Charles", lastName: "Wong", job: "developer" , age: 24)
let steve = (firstName: "Steve", lastName: "Smith", job: "writer", age: 28)
let jamal = (firstName: "Jamal", lastName: "Smith", job: "developer", age: 25)
let navindra = (firstName: "Navindra", lastName: "Chowdhurry", job: "actuary", age: 29)

let professionals = [sarah, beth, jana, lauren, charles, steve, jamal, navindra]

var professionalsInTheir20s: [String] = []
var professionalsInTheir30s: [String] = []
var nonDev: [String] = []
var developers: [String] = []
var lastNameSmith: [String] = []

for person in professionals {
    switch person {
    case (_, _, _, 20...29) :
        professionalsInTheir20s.append(person.firstName)
        switch person {
        case (_, "Smith", "developer", _) :
            lastNameSmith.append(person.firstName)
            fallthrough
        case (_, _, "developer", _) :
            developers.append(person.firstName)
        case (_, "Smith", _, _) :
            lastNameSmith.append(person.firstName)
            fallthrough
        default:
            nonDev.append(person.firstName)
            
        }
    case (_,_,_, 30...39) :
        professionalsInTheir30s.append(person.firstName)
        switch person {
        case (_, "Smith", "developer", _) :
            lastNameSmith.append(person.firstName)
            fallthrough
        case (_, _, "developer", _) :
            developers.append(person.firstName)
        case (_, "Smith", _, _) :
            lastNameSmith.append(person.firstName)
            fallthrough
        default:
            nonDev.append(person.firstName)
        }
    default:
        break
    }
}

print(professionalsInTheir20s)
print()
print(lastNameSmith)
print()
print(developers)
print()
print(nonDev)
print()
print(professionalsInTheir30s)
```
Question 7.

Given the arrays below, use nested loops to print out every possible card in the deck.
```swift
let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
let suits = ["♠️", "♣️", "♥️", "♦️"]
    
    for denomination in denominations {
        for suit in suits {
            print(denomination + suit)
        }
    }
```
Question 8.

Print out the lyrics to the song "99 Bottles of Beer"

Hint 1: Use a for-loop and a switch statement
Hint 2: Below is an example of reversing a range in Swift

```swift
for i in (0...99).reverse() {
    switch i {
    case 2...99:
        print("\(i) bottles of beer on the wall, \(i) bottles of beer. Take one down and pass it around, \(i-1) bottles of beer on the wall.")
    case 1:
        print("\(i) bottle of beer on the wall, \(i) bottle of beer. Take one down and pass it around, \(i-1) bottles of beer on the wall.")
    case 0:
        print("No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.")
    default:
        break
    }
}
```
Question 9.

"FizzBuzz"

Create a loop that prints all integers from 0 to 100.
for i in 0...100{
    print(i)
}
For all multiples of 3, print out "Fizz" instead of the number.
For all multiples of 5, print out "Buzz" instead of the number.
For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.

Question 10.
Write code that will print out the first 10 Fibonacci numbers:
```swift
print(0, 1, 1, 2, 3, 5, 8, 13, 21, 34)
0, 1, 1, 2, 3, 5, 8, 13, 21, 34
```
