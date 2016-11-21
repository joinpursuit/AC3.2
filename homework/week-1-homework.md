## AC3.2 - Week 1 - Homework

### I. Variables

#### Question 1.
<<<<<<< HEAD
Provide the following constants/variable names with the most appropriate type annotations.

1. let _firstName_: String
2. let _middleInitial_: character
3. var _age_: int
4. var _latitude_: double
5. var _longitude_: double
6. var _isRainingCurrently_: bool
7. let _completeAddress_: string
8. let _π_: double (though this would be an inaccurate representation of pi)

#### Question 2.
Convert the following decimal numbers to Binary:
* 55  00110111
* 122 01111010
* -1 01111111
* 15 00001111

#### Question 3.
Using nested loops, print the numbers from 0 to 100, then back to 0.

for i in 0...100 {
    print (i)
    if i == 100 {
for var j = 100; j >= 0; j-=1 { //if i had known .reverse was a thing when i did this question ;)
        print (j)
        }
    }
}

//i tried to stick to the spirit of the problem, i think this still adhears to that, but i do think it is a little bit "janky"
=======
<<<<<<< HEAD
With your understanding of proper naming conventions, provide the following constants/variable names with the most proper value ```type```.
=======
Provide the following constants/variable names with the most appropriate type annotations.

>>>>>>> upstream/master
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
Convert the following to Binary:
=======
Convert the following decimal numbers to Binary:
>>>>>>> upstream/master
* 55
* 122
* -1
* 15
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

#### Question 3.
Using nested loops, print the numbers from 0 to 100, then back to 0.
>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093

#### Question 4.
While ```i``` is greater than 1, print only all positive even numbers and break 
out of the loop when you've reached 220.

<<<<<<< HEAD

var i = 2
while i > 1 {
    i += 1
    if i == 220 {
        print (i)
        i = 0
    }
    if i % 2 == 0 {
        print(i)
    }
}


#### Question 5.
* Using any kind of loop, print the sum of all numbers between 0 to 50.

var sumOfAll = 0
for i in 0...50 {
sumOfAll += i
}
print(sumOfAll)


* Using a while loop, print all the odd numbers from 0 to 100.


var i = 0
while i < 100 {
    if i % 2 == 1 {
        print(i)
    }
    i += 1
}

* Using a ```for case``` loop, print all the multiples of 10 from 50 to 500.



for case let i in 50...500 where i % 10 == 0 {
    print(i)
}





=======
#### Question 5.
* Using any kind of loop, print the sum of all numbers between 0 to 50.
* Using a while loop, print all the odd numbers from 0 to 100.
* Using a ```for case``` loop, print all the multiples of 10 from 50 to 500.
>>>>>>> upstream/master
>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093

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
>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093
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
>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093

* Hint: Use the framework below for your code

```swift
for person in professionals {
	switch person {
 
	}
<<<<<<< HEAD
}
```



var professionalsInTheir20s: [(String , String , String , Int)] = []
var professionalsInTheir30s: [(String , String , String , Int)] = []
var nonDev: [(String , String , String , Int)] = []
var developers: [(String , String , String , Int)] = []
var lastNameSmith: [(String , String , String , Int)] = []



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


This will print out arrays where the contents are the tuples that satisfy each condition.




#### Question 7.
Given the arrays below, use nested loops to print out every possible card in the deck.
=======
>>>>>>> upstream/master
}
```

#### Question 7.
Given the arrays below, use nested loops to print out every possible card in the deck.
<<<<<<< HEAD
```
let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
let suits = ["♠️", "♣️", "♥️", "♦️"]
=======
>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093

```swift
let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
let suits = ["♠️", "♣️", "♥️", "♦️"]
```
<<<<<<< HEAD


for i in 0..<suits.count {
    for j in 0..<denominations.count {
        print(suits[i], denominations [j])
    }
}




=======
>>>>>>> upstream/master
>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093

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
>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093
for i in (1...5).reverse() {
    print(i)
}
```

<<<<<<< HEAD



for i in (0...99).reverse() {
print("\(i) bottles of beer on the wall, \(i) bottles of beer. Take one down and pass it around, \(i - 1) bottles of beer on the wall.")
}





=======
>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093
#### Question 9.
##### "FizzBuzz"
* Create a loop that prints all integers from 0 to 100.
* For all multiples of 3, print out "Fizz" instead of the number.
* For all multiples of 5, print out "Buzz"  instead of the number.
* For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.

<<<<<<< HEAD
for i in 0...100 {
    switch i {
    case let i where i % 5 == 0 && i % 3 == 0 :
        print("FizzBuzz")
    case let i where i % 5 == 0 :
        print("Buzz")
    case let i where i % 3 == 0 :
        print("Fizz")
    default:
        print(i)
    }
}





#### Question 10.
=======
#### Question 10.
<<<<<<< HEAD
Write code that will print out the first 10 [Fibonacci](http://www.codeforwin.in/2015/06/fibonacci-series-in-c-program.html) numbers.
=======
>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093
Write code that will print out the first 10 [Fibonacci](http://www.codeforwin.in/2015/06/fibonacci-series-in-c-program.html) numbers:

```
0, 1, 1, 2, 3, 5, 8, 13, 21, 34
```
<<<<<<< HEAD


var a = 0
var b = 1
var c = 0

print (0)
for i in 0...9 {
a = b
b = c
c = a + b
print(c)
}






=======
>>>>>>> upstream/master
>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093
