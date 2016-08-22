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

* 55 : 00110111
* 122 : 01111010
* -1 : 11111111
* 15 : 00001111

#### Question 3.
Using nested loops, print the numbers from 0 to 100, then back to 0.

```swift
for x in 0...100 {
	print(x)
	if x == 100 {
		for y in (0..<100).reverse() {
			print(y)
		}
	}
}
```

#### Question 4.
While ```i``` is greater than 1, print only all positive even numbers and break 
out of the loop when you've reached 220.

```swift
var i = 111
var x = 2
while i > 1 {
	print(x)
	x += 2
	i -= 1
}
```

#### Question 5.
* Using any kind of loop, print the sum of all numbers between 0 to 50.

```swift
var x = 1
for i in 1...50 {
	x+=x
}
print(x)
```

* Using a while loop, print all the odd numbers from 0 to 100.

```swift
var x = 0
while x < 100 {
	if (x % 2 == 1) {
		print(x)
	}
	x += 1
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
* Print out the professionals with _lastName_ "Smith".

```swift
for person in professionals {
	switch person {
		case (_, "Smith", _, _):
			print(person)
		default:
			break
	}
}
```

* Print out all the developers.

```swift
for person in professionals {
	switch person {
		case (_, _, "developer", _):
			print(person)
		default:
			break
	}
}
```
* Print out all the non-developers.

```swift
for person in professionals {
	switch person {
case (_, _, "developer", _):
	break
default:
	print(person)
	}
}
```
* Print out the professionals in their 20s.

```swift
for person in professionals {
switch person {
	case (_, _, _, 20...29):
		print(person)
	default:
		break
	}
}
```

* Print out the professionals in their 30s.

```swift
for person in professionals {
	switch person {
		case (_, _, _, 30...39):
			print(person)
		default:
			break
	}
}
```

#### Question 7.
Given the arrays below, use nested loops to print out every possible card in the deck.

```swift
let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
let suits = ["♠️", "♣️", "♥️", "♦️"]
```

```swift
for case let x in 0...suits.count-1 {
	for case let y in 0...denominations.count-1 {
		print(denominations[y], suits[x], separator: "", terminator: " ")
	}
	print("")
}


```

#### Question 8.
Print out the lyrics to the song ["99 Bottles of Beer"](http://www.99-bottles-of-beer.net/lyrics.html)
* Hint 1: Use a for-loop and a switch statement
* Hint 2: Below is an example of reversing a range in Swift

```swift
var beers = true
for i in (1...99).reverse() {
	switch beers {
		case i > 1:
			print("\(i) bottles of beer on the wall, \(i) bottles of beer... take one down, pass it around, \(i-1) bottles of beer on the wall")
		case i == 1:
			print("\(i) bottle of beer on the wall, \(i) bottle of beer... take one down, pass it around, no more bottles of beer on the wall")
			fallthrough
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
var fizzy = true
for i in 0...100 {
	switch fizzy {
		case (i % 3 == 0 && i % 5 == 0):
			print("FizzBuzz")
		case (i % 3 == 0):
			print("Fizz")
		case (i % 5 == 0):
			print("Buzz")
		default:
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
var x = [0, 1]
print("\(x[0])\n\(x[1])")
for i in 2...9 {
	x.append(x[(i-1)]+x[(i-2)])
	print(x[i])
}
```
Or without arrays:

```swift
var first = 0
var second = 1
print (first)
print (second)
for i in 0...7 {
	var next = first + second
	print(next)
	first = second
	second = next
}
```

