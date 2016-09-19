## AC3.2 - Week 1 - Homework


Madushani Lekam Wasam Liyanage

### I. Variables



//Question 1.
//
//Provide the following constants/variable names with the most appropriate type annotations.
//
//let firstName: String
//let middleInitial: Character
//var age: Int
//var latitude: Double
//var longitude: Double
//var isRainingCurrently: Bool
//let completeAddress: String
//let π: Double


//Question 2.
//
//Convert the following decimal numbers to Binary:
//
//55 - 110111
//122 - 1111010
//-1 - 11111111 (in UInt8 form)
//15 -  1111


//Question 3.
//
//Using nested loops, print the numbers from 0 to 100, then back to 0.
//

//for i in 0...100 {
//    print(i)
//}
//for j in (0...100).reverse() {
//    print(j)
//}



//Question 4.
//
//While i is greater than 1, print only all positive even numbers and break out of the loop when you've reached 220.

//var i = 2
//while i > 1 {
//    if i == 220 {
//        break
//    }
//    else if i % 2 == 0{
//    print(i)
//    }
//    
//    i += 1
//}

//
//Question 5.
//
//Using any kind of loop, print the sum of all numbers between 0 to 50.

//var sum = 0
//
//for i in 1...50 {
//    sum += i
//}
//print (sum)

//Using a while loop, print all the odd numbers from 0 to 100.

//var k = 1
//while k <= 100 {
//if k % 2 != 0 {
//    print(k) }
//    k += 1
//}

//Using a for case loop, print all the multiples of 10 from 50 to 500.
//Question 6.

//for case let i in 50...100 where i % 10 == 0 {
//    print(i)
//    
//}


//
//Consider the code below. Loop through the professionals array and using a switch statement:
//
//Print out the professionals with lastName "Smith".
//Print out all the developers.
//Print out all the non-developers.
//Print out the professionals in their 20s.
////Print out the professionals in their 30s.
//let sarah = (firstName: "Sarah", lastName: "Palardo", job: "teacher", age: 32)
//let beth = (firstName: "Beth", lastName: "Newell", job: "developer", age: 29)
//let jana = (firstName: "Jana", lastName: "Smith", job: "developer", age: 33)
//let lauren = (firstName: "Lauren", lastName: "Olson", job: "doctor", age: 27)
//let charles = (firstName: "Charles", lastName: "Wong", job: "developer" , age: 24)
//let steve = (firstName: "Steve", lastName: "Smith", job: "writer", age: 28)
//let jamal = (firstName: "Jamal", lastName: "Smith", job: "developer", age: 25)
//let navindra = (firstName: "Navindra", lastName: "Chowdhurry", job: "actuary", age: 29)
//let professionals = [sarah, beth, jana, lauren, charles, steve, jamal, navindra]
//Hint: Use the framework below for your code

//
//for person in professionals {
//    switch person {
//        case _ where person.lastName == "Smith":
//            print("\(person.firstName) has last name Smith")
//            if person.job == "developer" {
//                print("\(person.firstName) is a Developer")
//                if person.age < 30 {
//                    print("\(person.firstName) is in their 20s")
//                } else {
//                    print("\(person.firstName) is in their 30s")
//                }
//            } else {
//                    print("\(person.firstName) is not a Developer")
//                if person.age < 30 {
//                    print("\(person.firstName) is in their 20s")
//                } else {
//                    print("\(person.firstName) is in their 30s")
//                }
//            }
//        case _ where person.job == "developer":
//            print("\(person.firstName) is a Developer")
//            if person.age < 30 {
//                print("\(person.firstName) is in their 20s")
//            } else {
//                print("\(person.firstName) is in their 30s")
//        }
//        case _ where person.job != "developer":
//            print("\(person.firstName) is not a Developer")
//            if person.age < 30 {
//                print("\(person.firstName) is in their 20s")
//            } else {
//                print("\(person.firstName) is in their 30s")
//        }
//        default:
//            if person.age < 30 {
//                print("\(person.firstName) is in their 20s")
//            } else {
//                print("\(person.firstName) is in their 30s")
//        }
//    }
//}
// --------------------------------OR---------------------------------



//for person in professionals {
//    switch person {
//    case (_, "Smith", _, _):
//        print("\(person.firstName) has the last name Smith.")
//    default:
//        break
//    }
//}
//
//for person in professionals {
//    switch person {
//    case (_, _, "developer", _):
//        print("\(person.firstName) is a Developer")
//    default:
//    break
//    }
//}
//
//for person in professionals {
//    switch person {
//    case _ where person.job != "developer":
//        print("\(person.firstName) is not a Developer")
//    default:
//        break
//    }
//}
//
//for person in professionals {
//    switch person {
//    case _ where person.age < 30:
//        print("\(person.firstName) is in their 20s")
//    default:
//        break
//    }
//}
//
//for person in professionals {
//    switch person {
//    case _ where person.age >= 30:
//        print("\(person.firstName) is in their 30s")
//    default:
//        break
//    }
//}



//
//

//Question 7.
//
//Given the arrays below, use nested loops to print out every possible card in the deck.
//
//let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
//let suits = ["♠️", "♣️", "♥️", "♦️"]
//
//
//for i in 0..<suits.count {
//    for j in 0..<denominations.count{
//        print(suits[i], separator: " ", terminator: " ")
//        print(denominations[j])
//    }
//}

//Question 8.
//
//Print out the lyrics to the song "99 Bottles of Beer"
//
//Hint 1: Use a for-loop and a switch statement
//Hint 2: Below is an example of reversing a range in Swift
//let lyrics = "99 bottles of beer on the wall, 99 bottles of beer. \n Take one down and pass it around, 98 bottles of beer on the wall."
//
//
//for i in (0...99).reverse() {
//    var lyrics1 = ("\(i) bottles of beer on the wall, \(i) bottles of beer.")
//    var lyrics2 = ("Take one down and pass it around, \(i-1) bottles of beer on the wall.\n")
//    switch (lyrics1, lyrics2) {
//        case _ where i > 1:
//            print(lyrics1)
//            print(lyrics2)
//        case _ where i == 1:
//            print(lyrics1)
//            print("Take one down and pass it around, no more bottles of beer on the wall.\n")
//        default:
//            print("No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.")
//    }
//}


//Question 9.
//
//"FizzBuzz"
//
//Create a loop that prints all integers from 0 to 100.
//For all multiples of 3, print out "Fizz" instead of the number.
//For all multiples of 5, print out "Buzz" instead of the number.
//For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.


//for i in 1...100 {
//    if i%3 == 0 && i%5 == 0 {
//    print("FizzBuzz")
//        
//    } else if i%3 == 0 {
//    print("Fizz")
//    
//    } else if i%5 == 0 {
//    print("Buzz")
//    
//    } else {
//    print(i)
//    }
//}



//Question 10.
//
//Write code that will print out the first 10 Fibonacci numbers:
//

//var FibonacciNum1 = 0
//var FibonacciNum2 = 1
//var FibonacciNum = 0
//
//for i in 0..<10 {
//    if i < 2 {
//    FibonacciNum = i
//    print(FibonacciNum)
//    }
//    else {
//    FibonacciNum =  FibonacciNum1 + FibonacciNum2
//    print(FibonacciNum)
//    FibonacciNum1 = FibonacciNum2
//    FibonacciNum2 = FibonacciNum
//    }
//}

//0, 1, 1, 2, 3, 5, 8, 13, 21, 34






//----------------------------------------------------------------------------------------------------------------










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

#### Question 2.
Convert the following decimal numbers to Binary:
* 55
* 122
* -1
* 15

#### Question 3.
Using nested loops, print the numbers from 0 to 100, then back to 0.

#### Question 4.
While ```i``` is greater than 1, print only all positive even numbers and break 
out of the loop when you've reached 220.

#### Question 5.
* Using any kind of loop, print the sum of all numbers between 0 to 50.
* Using a while loop, print all the odd numbers from 0 to 100.
* Using a ```for case``` loop, print all the multiples of 10 from 50 to 500.

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

#### Question 8.
Print out the lyrics to the song ["99 Bottles of Beer"](http://www.99-bottles-of-beer.net/lyrics.html)
* Hint 1: Use a for-loop and a switch statement
* Hint 2: Below is an example of reversing a range in Swift

```swift
for i in (1...5).reverse() {
    print(i)
}
```

#### Question 9.
##### "FizzBuzz"
* Create a loop that prints all integers from 0 to 100.
* For all multiples of 3, print out "Fizz" instead of the number.
* For all multiples of 5, print out "Buzz"  instead of the number.
* For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.

#### Question 10.
Write code that will print out the first 10 [Fibonacci](http://www.codeforwin.in/2015/06/fibonacci-series-in-c-program.html) numbers:

```
0, 1, 1, 2, 3, 5, 8, 13, 21, 34




```
