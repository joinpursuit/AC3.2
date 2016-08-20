## AC3.2 - Week 1 - Homework

#### ERICA STEVENS

### I. Variables

#### Question 1.
Provide the following constants/variable names with the most appropriate type annotations.


let num = -1
let str = String(num, radix: 2)
print(str)
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
* -1 = 10000001 (?)
* 15 = 00001111

#### Question 3.
Using nested loops, print the numbers from 0 to 100, then back to 0.

for i in 0...100 {
    switch i {
        case 0...99:
            print(i)
        case 100:
            for i in (0...100).reverse() {
                print(i)
            }
        default:
            print("default")
    }
}

#### Question 4.
While i is greater than 1, print only all positive even numbers and break
out of the loop when you've reached 220.

var i = 221

while i > 1 {
    if i % 2 == 0 {
        print(i)
    }
    i -= 1
}


#### Question 5.
* Using any kind of loop, print the sum of all numbers between 0 to 50.

var sum = 0

for i in 0...50 {
    sum += i
}

print(sum)

* Using a while loop, print all the odd numbers from 0 to 100.

var i = 0

while i <= 100 {
    if i % 2 != 0 {
        print(i)
    }
    i += 1
}

* Using a ```for case``` loop, print all the multiples of 10 from 50 to 500.

for i in 50...500 where i % 10 == 0 {
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

//My output is pretty disorganized, but this was the only way I could figure out how to print out all the criteria for the question
for person in professionals {

var firstName = person.0
var lastName = person.1
var job = person.2
var age = person.3

    switch person {
        case (_, "Smith", _, _):
            print(firstName, lastName)
            fallthrough
        case (_, _, job, _):
            if job == "developer" {
                print("\(job): \(firstName)")
            } else if job != "developer" {
                print("non-developer: \(firstName)")
        }
        fallthrough
        case (_, _, _, age):
            switch age {
                case 20...29:
                    print("\(firstName) is \(age) and is in their twenties.")
                case 30...39:
                    print("\(firstName) is \(age) and is in their thirties.")
                default:
                    print("default")
                }
        default:
        continue
    }
}
```

#### Question 7.
Given the arrays below, use nested loops to print out every possible card in the deck.

```swift
let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
let suits = ["♠️", "♣️", "♥️", "♦️"]
//```

for suit in suits {
    for card in denominations {
        print("\(card) of \(suit)")
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

for i in (0...99).reverse() {

switch i {
    case 3...99:
        print("\(i) bottles of beer on the wall. \(i) bottles of beer. \nTake one down and pass it around, \(i - 1) bottles of beer on the wall.")
    case 2:
        print("\(i) bottles of beer on the wall. \(i) bottles of beer. \nTake one down and pass it around, \(i - 1) bottle of beer on the wall.")
    case 1:
        print("1 more bottle of beer on the wall. 1 bottle of beer. \nTake one down and pass it around, no bottles of beer on the wall.")
    case 0:
        print("No more bottles of beer on the wall. No more bottles of beer.\n Go to the store and buy some more, 99 bottles of beer on the wall.")
    default:
        print("default")
    }
}


#### Question 9.
##### "FizzBuzz"
* Create a loop that prints all integers from 0 to 100.
* For all multiples of 3, print out "Fizz" instead of the number.
* For all multiples of 5, print out "Buzz"  instead of the number.
* For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.

for i in 0...100 {
    if i % 3 == 0 {
        print("Fizz")
    }else if i % 5 == 0 {
        print("Buzz")
    }else if i % 3 == 0 && i % 5 == 0{
        print("FizzBuzz")
    }else {
        print("\(i)")
    }
}



#### Question 10.
Write code that will print out the first 10 [Fibonacci](http://www.codeforwin.in/2015/06/fibonacci-series-in-c-program.html) numbers:

```
0, 1, 1, 2, 3, 5, 8, 13, 21, 34
```

var fibNum = 10
var num1 = 0
var num2 = 1

for _ in 1...fibNum {
    print(num1)
    var tmp = num1 + num2
    num2 = num1
    num1 = tmp
}

