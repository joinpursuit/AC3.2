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
7. let _completeAddress_: (Int, String, Int)
8. let _π_: Double

#### Question 2.
Convert the following decimal numbers to Binary:
* 55 -
* 122 - 
* -1 - 11111111
* 15 - 00001111

#### Question 3.
Using nested loops, print the numbers from 0 to 100, then back to 0.

for i in 0...100 {
	print(i)
	if i == 100 {
		for j in 0...100 {
			print(i-j)
		}
	}
}

#### Question 4.
While ```i``` is greater than 1, print only all positive even numbers and break 
out of the loop when you've reached 220.

var i = 2

while i > 1 {
	if i%2 == 0 {
		print(i)
	}
	
	i += 1
	
	if i > 220 {
		break
	}
}

#### Question 5.
* Using any kind of loop, print the sum of all numbers between 0 to 50.

var sumOfFirst50Ints = 0

for int in 0...50 {
	sumOfFirst50Ints += int
	if int < 50 {
		print("\(int) + ", terminator:"")
	} else {
		print("\(int) = ", terminator:"")
	}
}

print(sumOfFirst50Ints)

* Using a while loop, print all the odd numbers from 0 to 100.

var odds = 0

while odds <= 100 {
	print(odds)
	odds += 1
	if odds > 1 {
		odds += 1
	}
}

* Using a ```for case``` loop, print all the multiples of 10 from 50 to 500.

for case let i in 50...500 where i%10 == 0 {
	print(i)
}

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

#### Question 7.
Given the arrays below, use nested loops to print out every possible card in the deck.

```swift
let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
let suits = ["♠️", "♣️", "♥️", "♦️"]
```
for suit in suits {
	for denomination in denominations {
		print(suit, denomination)
	}
}


#### Question 8.
Print out the lyrics to the song ["99 Bottles of Beer"](http://www.99-bottles-of-beer.net/lyrics.html)
* Hint 1: Use a for-loop and a switch statement
* Hint 2: Below is an example of reversing a range in Swift

var beer = 99

while beer > 0 {
	if beer - 1 != 0 {
		print("\(beer) bottles of beer on the wall. \(beer) bottles of beer. You take one down, pass it around, \(beer - 1) bottles of beer on the wall.")
	} else {
		print("\(beer) bottle of beer on the wall. \(beer) bottle of beer. You take it down, pass it around, no more bottles of beer on the wall.\nNo more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.")
	}
	beer -= 1
}

#### Question 9.
##### "FizzBuzz"
* Create a loop that prints all integers from 0 to 100.
* For all multiples of 3, print out "Fizz" instead of the number.
* For all multiples of 5, print out "Buzz"  instead of the number.
* For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.

let threes = "Fizz"
let fives = "Buzz"

for num in 0...100 {
	if num%3 != 0 && num%5 != 0 {
		print(num)
	} else {
		if num%3 == 0 && num%5 == 0 {
			print(threes + fives)
		}
		else if num%3 == 0 {
			print(threes)
		} else {
			print(fives)
		}
	}
}

#### Question 10.
Write code that will print out the first 10 [Fibonacci](http://www.codeforwin.in/2015/06/fibonacci-series-in-c-program.html) numbers:

```
0, 1, 1, 2, 3, 5, 8, 13, 21, 34
```

var currentFibo = 0
var lastFibo = 0
var secondToLastFibo = 0

for num in 0...10 {
	print(currentFibo)
		if currentFibo < 1 {
		secondToLastFibo += 1
		lastFibo += 0
		} else {
			secondToLastFibo = lastFibo
			lastFibo = currentFibo
		}
	currentFibo = lastFibo + secondToLastFibo
}
