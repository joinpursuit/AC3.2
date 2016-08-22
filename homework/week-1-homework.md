## AC3.2 - Week 1 - Homework

### I. Variables

#### Question 1.
Provide the following constants/variable names with the most appropriate type annotations.

1. let _firstName_: (type?) 
Answer: let _firstName_: String = "Simone"

2. let _middleInitial_:
Answer: let _middleInitial_: Character = "C"

3. var _age_:
Answer: var _age_: Int = 20

4. var _latitude_:
Answer: var _latitude_: Int = 90

5. var _longitude_:
Answer: var _longitude_: Int = 180

6. var _isRainingCurrently_:
Answer: var _isRainingCurrently_: Bool = True

7. let _completeAddress_:
Answer: let _completeAddress_: 

8. let _π_:
Answer: let _π_: Double = 3.14

#### Question 2.
Convert the following decimal numbers to Binary:
* 55 
Answer: 00110111

* 122
Answer: 01111010

* -1
Answer: 11111111

* 15
Answer: 00001111

#### Question 3.
Using nested loops, print the numbers from 0 to 100, then back to 0.

for number in 0...100 {
    print(number)
        if (number == 100) {
            for reverseNum in (0...100).reverse() {
                print(reverseNum)
                }
        }
}


#### Question 4.
While ```i``` is greater than 1, print only all positive even numbers and break 
out of the loop when you've reached 220.

while i >= 1 {
    if (i % 2 == 0) {
    print(i)
        if (i == 220) {
        break
        }
    i+=1
    }
    else if (i % 2 != 0){
        i+=1
    }
}

#### Question 5.
* Using any kind of loop, print the sum of all numbers between 0 to 50.

var num = 0

for secNum in 0...50 {
    num = num + secNum
    print(num)
}

* Using a while loop, print all the odd numbers from 0 to 100.

var i=0

while (i <= 100){
        if(i % 2 != 0){
            print(i)
        }
    i+=1
}

* Using a ```for case``` loop, print all the multiples of 10 from 50 to 500.


for numbers in 50...500 {
    switch numbers <= 500 {
        case (numbers % 10 == 0):
        print(numbers)
    default:
        continue
    }
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

for person in professionals {
switch person {
case (_,"Smith",_,_):
if (true) {
print("Professionals with last name \"Smith\": \(person)" )
}
default:
break
}
}

for person in professionals {
switch person {
case (_,_,_,20...<30):
print("Developers: \(person)")

default:
break
}
}

for person in professionals {
switch person {
case (_,_,_,30...<40):
print("Developers: \(person)")

default:
break
}
}



for person in professionals {
switch person {
case (_,_,"developer",_):
print("Developers: \(person)")

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

for numLetters in denominations {
    for patterns in suits {
        print(numLetters)
        print(patterns)
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

for i in (1...99).reverse() {
    print("\(i) bottles of beer on the wall, \(i) bottles of beer. \n Take one down and pass it around, \(i-1) bottles of beer on the wall")
        if (i == 0) {
            print("\(i) bottles of beer on the wall, \(i) bottles of beer. \n Take one down and pass it around, no more bottles of beer on the wall")
        }
    }
print("No more bottles of beer on the wall, no more bottles of beer. \n Go to the store and buy some more, 99 bottles of beer on the wall.")

#### Question 9.
##### "FizzBuzz"
* Create a loop that prints all integers from 0 to 100.
* For all multiples of 3, print out "Fizz" instead of the number.
* For all multiples of 5, print out "Buzz"  instead of the number.
* For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.

for num in 0...100 {
    if (num % 3 == 0 && num % 5 == 0) {
        print("FizzBuzz")
    }
    else if (num % 3 == 0 && num % 5 != 0) {
        print("Fizz")
    }
    else if (num % 5 == 0 && num % 3 != 0) {
        print("Buzz")
    }
    else {
        print(num)
    }
}

#### Question 10.
Write code that will print out the first 10 [Fibonacci](http://www.codeforwin.in/2015/06/fibonacci-series-in-c-program.html) numbers:

```
0, 1, 1, 2, 3, 5, 8, 13, 21, 34
```
