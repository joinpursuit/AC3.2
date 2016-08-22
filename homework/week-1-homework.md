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

ANSWER:

```swift
let firstName: String = "Annie"
let middleInitial: Character = "M"
var age: Int = 23
var latitude: Double = 62.34222
var longitue: Double = 73.23345
var isRainingCurrently: Bool = false
let completeAddress: String = "2 Court Sq"
let π: Double = 3.14159265359
```

#### Question 2.
Convert the following decimal numbers to Binary:
* 55
* 122
* -1
* 15

ANSWER:

55 = 00110111
122 = 01111010
-1 = 11111111
15 = 00001111


#### Question 3.
Using nested loops, print the numbers from 0 to 100, then back to 0.

ANSWER:

for x in 0...1 {
if x == 0 {
for y in 0..<100 {
print(y)
}
} else {
for y in (0...100).reverse() {
print(y)
}
}
}

#### Question 4.
While ```i``` is greater than 1, print only all positive even numbers and break 
out of the loop when you've reached 220.

ANSWER:

for i in 2...220 {
if i % 2 == 0 {
print(i)
}
}


#### Question 5.
* Using any kind of loop, print the sum of all numbers between 0 to 50.
* Using a while loop, print all the odd numbers from 0 to 100.
* Using a ```for case``` loop, print all the multiples of 10 from 50 to 500.

ANSWER:
a)
var sum = 0
for i in 0...50 {
sum += i
}
print(sum)


b)
var i = 0
while i < 100 {
i += 1
if i % 2 != 0 {
print(i)
}
}

c)
for case let i in 50...500 where i % 10 == 0 {
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

ANSWER:

a)
for person in professionals {
switch person {
case (_, "Smith", _, _):
print(person)
default:
break

}
}

b)
for person in professionals {
switch person {
case (_, _, "developer", _):
print(person)
default:
break
}
}

c)
for person in professionals {
switch person {
case(_, _, "developer", _):
break
default:
print(person)
}
}

d)
for person in professionals {
switch person {
case(_, _, _, 20...29):
print(person)
default:
break
}
}

e)
for person in professionals {
switch person {
case(_, _, _, 30...39):
print(person)
default:
break
}
}


#### Question 7.
Given the arrays below, use nested loops to print out every possible card in the deck.

```swift
let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
let suits = ["♠️", "♣️", "♥️", "♦️"]
```

ANSWER:

for i in denominations {
for j in suits {
print([i], [j])
}
}

#### Question 8.
Print out the lyrics to the song ["99 Bottles of Beer"](http://www.99-bottles-of-beer.net/lyrics.html)
* Hint 1: Use a for-loop and a switch statement
* Hint 2: Below is an example of reversing a range in Swift

```swift
for i in (1...5).reverse() {
    print(i)
}
```

ANSWER:

var lyrics = true
for i in (1...99).reverse() {
switch lyrics {
case i > 1:
print("\(i) bottles of beer on the wall, \(i) bottles of beer. Take one down and pass it around, \(i-1) bottles of beer on the wall.")
case i == 1:
print("\(i) bottle of beer on the wall, \(i) bottle of beer. Take one down and pass it around, no more bottles of beer on the wall.")
fallthrough
default:
print("No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, \(i) bottles of beer on the wall.")
}
}


#### Question 9.
##### "FizzBuzz"
* Create a loop that prints all integers from 0 to 100.
* For all multiples of 3, print out "Fizz" instead of the number.
* For all multiples of 5, print out "Buzz"  instead of the number.
* For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.

ANSWER:

var FizzBuzz = true;
for i in 0...100 {
switch FizzBuzz {
case (i % 3 == 0) && (i % 5 == 0):
print("Fizzbuzz")
case (i % 3 == 0):
print("Fizz")
case (i % 5 == 0):
print("Buzz")
default:
print(i)
}
}

#### Question 10.
Write code that will print out the first 10 [Fibonacci](http://www.codeforwin.in/2015/06/fibonacci-series-in-c-program.html) numbers:

```
0, 1, 1, 2, 3, 5, 8, 13, 21, 34
```

ANSWER:

var a = 0
var b = 1
var x = 10


for _ in 1...x {
print(a)
var c = a + b
a = b
b = c
}
