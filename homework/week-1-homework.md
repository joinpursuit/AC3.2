## AC3.2 - Week 1 - Homework

//: Playground - noun: a place where people can play

import UIKit

//Question 1.

//Provide the following constants/variable names with the most appropriate type annotations.
//
//let firstName: String = "Rukiye"
//let middleInitial: String = " MK "
//var age: Int = 2
//var latitude: Double = 1258.3
//var longitude: Double = 239823.4
//var isRainingCurrently: Bool = true
//let completeAddress: String = "20 30th avenue Astoria,NY, 11103 "
//let π: Double = 3.14159
////


//Question 2.

//Convert the following decimal numbers to Binary:

//55  111011
//122 0101111
//-1 11111111
//15  1111

//Question 3.

//Using nested loops, print the numbers from 0 to 100, then back to 0.


//var range = 0...100
//
//for i in range{
//
//    print(i, terminator: "-")
//
//    if i == 100{
//        var count2 = 99
//
//        for j in range{
//
//            print(count2, terminator: "-")
//            if count2 == 0
//
//                {
//                break
//                }
//            count2 -= 1  // you could also do i-j
//
//
//        } //for loop p
//
//
//    }//if p


//}



//Question 4.
//
//While i is greater than 1, print only all positive even numbers and break out of the loop when you've reached 220.

//var i : Int = 0
//
//
//while i < 220 {
//
//    if i == 220 {
//
//        break
//
//    }
//
//    else if i % 2 == 0{
//
//        print(i)
//    }
//
//i+=1
//
//}

//Question 5.
//
//Using any kind of loop, print the sum of all numbers between 0 to 50.

//var total = 0
//for i in 0...50{
//
//    total += i
//}
//
//print(total)

//Using a while loop, print all the odd numbers from 0 to 100.
//var i = 0
//while(i < 100){
//
//    if (i % 2 == 1){
//        print(i)
//
//    }
//    i += 1
//
//}



//Using a for case loop, print all the multiples of 10 from 50 to 500.
//
//let range = 50...500
//for i in range {
//
//    if i % 10 == 0{
//
//        print(i)
//
//    }
//
//}


let sarah = (firstName: "Sarah", lastName: "Palardo", job: "teacher", age: 32)
let beth = (firstName: "Beth", lastName: "Newell", job: "developer", age: 29)
let jana = (firstName: "Jana", lastName: "Smith", job: "developer", age: 33)
let lauren = (firstName: "Lauren", lastName: "Olson", job: "doctor", age: 27)
let charles = (firstName: "Charles", lastName: "Wong", job: "developer" , age: 24)
let steve = (firstName: "Steve", lastName: "Smith", job: "writer", age: 28)
let jamal = (firstName: "Jamal", lastName: "Smith", job: "developer", age: 25)
let navindra = (firstName: "Navindra", lastName: "Chowdhurry", job: "actuary", age: 29)

let professionals = [sarah, beth, jana, lauren, charles, steve, jamal, navindra]


//Print out the professionals with lastName "Smith".
//Print out all the developers.
//Print out all the non-developers.
//Print out the professionals in their 20s.
//Print out the professionals in their 30s.



for i in professionals{

switch i {

case (_,"Smith",_,_):
print (i.firstName )


//    case (_,_,"developer",_):
//    print(i.firstName)
//
//    case (_,_,_,let age )where age < 30 && age > 19 :
//        print (i.firstName )
//


default:
break
//       print(i.firstName)

}




}


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
