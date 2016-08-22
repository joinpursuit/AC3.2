## AC3.2 - Week 1 - Homework

### I. Variables

#### Question 1.
Provide the following constants/variable names with the most appropriate type annotations.

1. let _firstName_: String 
2. let _middleInitial_: Character
3. var _age_: Int
4. var _latitude_: Float
5. var _longitude_: Float
6. var _isRainingCurrently_: Bool
7. let _completeAddress_: String
8. let _π_: Float

#### Question 2.
Convert the following decimal numbers to Binary:
* 55  --> 00110111
* 122 --> 01111010
* -1 -->  10000001
* 15 --> 00001111

#### Question 3.
Using nested loops, print the numbers from 0 to 100, then back to 0.


for i in 0...1{

    switch (i){

        case 0:
            for j in 0...100{

                print("\(j)", separator: "", terminator: " ")

            }

        case 1:
            for j in (0...100).reverse(){

                print("\(j)", separator: "", terminator: " ")

            }

        default:
            break

            }

        print ("")



}


#### Question 4.
While ```i``` is greater than 1, print only all positive even numbers and break 
out of the loop when you've reached 220.


var i = 2

while i > 1{


    if i > 220{
    break
    }
    else if i % 2 == 0{
    print("\(i)",separator: "", terminator: " ")
    }


i += 1


}


#### Question 5.
* Using any kind of loop, print the sum of all numbers between 0 to 50.

var sum = 0

    for i in 0...50{

    sum += i

     }

print("The sum is \(sum) ")
    
* Using a while loop, print all the odd numbers from 0 to 100.


var i = 0
while i <= 100{

    if i % 2 == 1{

    print(i)
    }

i += 1

}


* Using a ```for case``` loop, print all the multiples of 10 from 50 to 500.


for case let i in 50...500 where i % 10 == 0{

print(i)
}

#### Question 6.
Consider the code below. Loop through the ```professionals``` array and using a switch statement:
* Print out the professionals with _lastName_ "Smith".
    
    case (_,"Smith",_,_):
    print("\(person)",separator: "",terminator: " ")

* Print out all the developers.

    case (_,_,"developer",_):
    print("\(person)",separator: "",terminator: " ")

* Print out all the non-developers.

    case let person where person.job != "developer":
    print("\(person)",separator: "",terminator: " ")

* Print out the professionals in their 20s.
    
    case let person where person.age < 30 && person.age >= 20:
    print("\(person)",separator: "",terminator: " ")

* Print out the professionals in their 30s.

    case let person where person.age >= 30 && person.age <= 40:
    print("\(person)",separator: "",terminator: " ")


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


for denom in denominations{
    for suit in suits{
        print ("\(denom) \(suit)", separator: "", terminator: " ")
        }

    print("")
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

for i in (0...99).reverse(){

    switch i {

        case let i where i > 0:
        print("\(i) bottles of beer on the wall, \(i) bottles of beer. Take one down and pass it around, \(i-1) bottles of beer on the wall.")
        print("")

        default:
        print("No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.")

        }

}


#### Question 9.
##### "FizzBuzz"
* Create a loop that prints all integers from 0 to 100.
* For all multiples of 3, print out "Fizz" instead of the number.
* For all multiples of 5, print out "Buzz"  instead of the number.
* For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.

for i in 0...100{

    switch i {

    case let i where i % 3 == 0 && i % 5 == 0 :
    print("FizzBuzz")

    case let i where i % 3 == 0:
    print("Fizz")

    case let i where i % 5 == 0:
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


var num1 = 0
var num2 = 1
var sum = 0

for i in 1...10{

    print ("\(sum)", separator: "",terminator: ", ")

    num1 = num2
    num2 = sum
    sum = num1 + num2

}

