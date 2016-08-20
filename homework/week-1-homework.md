## AC3.2 - Week 1 - Homework

### I. Variables

#### Question 1.
Provide the following constants/variable names with the most appropriate type annotations.

1. let _firstName_: (type?)
2. let _middleInitial_:
3. var _age_:
4. var _latitude_:
5. var _longitude_:
6. var _isRainingCurrently_:
7. let _completeAddress_:
8. let _π_:

```swift
let firstName: String
let middleInitial: Character
var age: Int
var latitude: Double
var longitude: Double
var isRainingCurrently: Bool
let completeAddress: String
let π: Double
```


#### Question 2.
Convert the following decimal numbers to Binary:
* 55
* 122
* -1
* 15

```swift
let binary55 = String(55, radix: 2) // 110111
let binary122 = String(122, radix:2) // 1111010
let binaryNegative1 = String(-1, radix:2) // -1
let binary15 = String(15, radix:2) // 1111
```


#### Question 3.
Using nested loops, print the numbers from 0 to 100, then back to 0.

```swift
var x = 0
while x >= 0 {
for _ in 0..<100 {
print(x)
x = x+1
}
for _ in 0...100 {
print(x)
x = x-1
}
}
```


#### Question 4.
While ```i``` is greater than 1, print only all positive even numbers and break 
out of the loop when you've reached 220.

```swift
var i = 2
while i <= 220 {
print(i)
i = i+2
}

```


#### Question 5.
* Using any kind of loop, print the sum of all numbers between 0 to 50.
* Using a while loop, print all the odd numbers from 0 to 100.
* Using a ```for case``` loop, print all the multiples of 10 from 50 to 500.

```swift
var sum = 0
for x in 0...50 {
sum += x
}
print(sum)

var oddNumber = 1
while oddNumber <= 100 {
print(oddNumber)
oddNumber += 2
}

for case let x in 50...500 where x % 10 == 0 {
print(x)
}

```


#### Question 6.
Consider the code below. Loop through the ```professionals``` array and using a switch statement:
* Print out the professionals with _lastName_ "Smith".
* Print out all the developers.
* Print out all the non-developers.
* Print out the professionals in their 20s.
* Print out the professionals in their 30s.

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

var lastNameSmith = "Professionals with \"Smith\" as a last name:"
var developer = "Professionals who are developers:"
var nonDeveloper = "Professionals who are not developers:"
var twenties = "Professionals in their 20s:"
var thirties = "Professionals in their 30s:"

for person in professionals {
switch person.lastName {
case "Smith":
lastNameSmith += "\n\t\(person.firstName)"
default:
break
}
switch person.job {
case "developer":
developer += "\n\t\(person.firstName)"
default:
nonDeveloper += "\n\t\(person.firstName)"
}
switch person.age {
case 20..<30:
twenties += "\n\t\(person.firstName)"
case 30..<40:
thirties += "\n\t\(person.firstName)"
default:
break
}
}

print(lastNameSmith)
print(developer)
print(nonDeveloper)
print(twenties)
print(thirties)
```


#### Question 7.
Given the arrays below, use nested loops to print out every possible card in the deck.

```swift
let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
let suits = ["♠️", "♣️", "♥️", "♦️"]
```

```swift
let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
let suits = ["♠️", "♣️", "♥️", "♦️"]

for suit in suits{
for denom in denominations {
print("\(denom) of \(suit)")
}
}
```


#### Question 8.
Print out the lyrics to the song ["99 Bottles of Beer"](http://www.99-bottles-of-beer.net/lyrics.html)
* Hint 1: Use a for-loop and a switch statement
* Hint 2: Below is an example of reversing a range in Swift

```swift
for i in (1...5).reverse() {
    print(i)
}
```

```swift
for var numBeers in (0...99).reverse() {
switch numBeers {
case 3...99:
print("\(numBeers) bottles of beer on the wall, \(numBeers) bottles of beer.")
numBeers -= 1
print("Take one down and pass it around, \(numBeers) bottles of beer on the wall.")
case 2:
print("\(numBeers) bottles of beer on the wall, \(numBeers) bottles of beer.")
numBeers -= 1
print("Take one down and pass it around, \(numBeers) bottle of beer on the wall.")
case 1:
print("\(numBeers) bottle of beer on the wall, \(numBeers) bottle of beer.")
numBeers -= 1
print("Take one down and pass it around, no more bottles of beer on the wall.")
case 0:
print("No more bottles of beer on the wall, no more bottles of beer.")
print("Go to the store and buy some more, 99 bottles of beer on the wall.")
default:
break
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
if i % 3 == 0 && i % 5 == 0 {
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
var left = 0
var right = 1
var nextNum: Int
var sequence = "\(left), \(right)"

for f in 3...10 {
nextNum = left + right
sequence += ", \(nextNum)"
left = right
right = nextNum
}

print(sequence)

```
