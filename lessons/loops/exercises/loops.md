////: Playground - noun: a place where people can play
//
import UIKit

//
//## A) For each prompt below, write a for loop that prints out the specified information.
//
//1) All the numbers from 1 to 150 inclusive
////
//for i in 1...150 {
//    print(i)
//}
////
////2) All the numbers from 142 to 159 exclusive
//
//for i in 142..<159 {
//    print(i)
//}
//
////3) Only the even numbers from 15 to 80 inclusive
//
//for i in 15...80 where i % 2 == 0 {
//    print(i)
//}
//
//4) Only the odd numbers from 19 to 51 inclusive
//
//for i in 19...51 where i % 2 == 1 {
//    print(i)
//}
////
////5) All the numbers that end in a 5 from 1 to 100 exclusive
//
//for i in 19...51 where (i % 5 == 0 && i % 2 != 0) {
//    print(i)
//}
//
//6) All the numbers that end in a 7 from 1 to 40 inclusive
//
//for i in 1...40 where i % 10 == 7{
//   print(i)
//    
//}


//
//## B) Given a range of numbers from 20 to 150 print out all the numbers that follows these conditions
//
//1) Numbers that are divisible by 3
//for i in 20...150 where i % 3 == 0 {
//    print(i)
//}
////
////2) Numbers that are divisible by 2 and 3
//for i in 20...50 where 1 % 3 == 0 && i % 2 == 0 {
//    print(i)
//}

////3) Unit digit ends with 4
//for i in 20...150 where i % 10 == 4{
//   print(i)
//}
//
//4) Print out numbers contain 31, 35, 40 to 60.

//for i in 20...150 {
//    switch i {
//    case 31, 35, 40...60:
//        print(i)
//    default:
//        break
//    }
//}
//
//
//## C) While loop (NO Xcode)
//```
//var i = 5
//while (i > 3) {
//    i += 1
//}
//```
//1) How many times does this while loop execute?
//This loop is infinite because 5 is already greater than 3, and the incrementor will not change that fact.
//
//2) How do you stop the loop when i reaches 9?

//var i = 5
//while (i > 3) {
//    if i == 9 {
//        break
//    }
//    i += 1
//    print(i)
//}

//
//3) How would you fix the while loop so that it only execute 1,000 times.

//var i = 5
//while (i > 3 && i < 1005) {
//    i += 1
//    print(i)
//}
//
//4) Once the loop can run 1,000 times, print out ONLY the event number.

//var i = 5
//while (i > 3 && i < 1005) {
//    i += 1
//    if i % 2 == 0 {
//        print(i)
//    }
//}


//
//```
//var i = 1
//while i <= 10 {
//    print("i = \(i)")
//    i+=
//}
//```
//```
//var i = 1
//do {
//    print("i = \(i)")
//    i+=
//}while i <= 10
//```
//5) What's the difference between these two while loop?
//The first loop is a while loop that will evaluates its condition before it executes its code. The second is a repeat-while loop that will execute its code at least once before evaluating the condition.
//
//6) If there's a difference, how would you fix it so that both outputs are the same.

//var i = 1
//while i <= 10 {
//    print("i = \(i)")
//    i += 1
//}
//```
//```
//var y = 1
//repeat {
//    print("i = \(y)")
//    y += 1
//}while y <= 10
//
//
//## D) Short Answer Questions (NO Xcode)
//
//1) What's the difference between break vs continue?
//Break stops execution of the entire loop while continue only stops the current iteration.

//
//2) Without using Xcode explain the result of the following for-in loops.
//* a)
//```
//for i in 1...10 {
//    if (i >= 4 && i <= 7){
//        continue
//    }
//    print(i)
//}
////```
//The output for this for loop would be: 1, 2, 3, 8, 9, 10. The reason for this is because 4-7 make the condition for the if-statement true. The continue statement then instructs the program to return to the beginning of the loop without printing those numbers to the console. Once i reaches 8, the condition becomes false again and i is printed.
////* b)
////```
//for i in 1...10 {
//    if (i >= 4 && i <= 7){
//        break
//    }
//    print(i)
//}
//```
//The output for the loop is 1, 2, 3 because once i is able to enter the if block, the entire loop stops executing.


//* Bonus)
//```
//outerloop: for x in 1...3 {
//    innerloop: for y in 1...3 {
//        if y == 2{
//            continue outerloop
//        }
//        print("x = \(x), y = \(y)")
//    }
//}

//Output should read:
//x = 1, y = 1
//x = 1, y = 2
//x = 1, y = 3
//During the first pass through outerLoop, x is set to 1. Then in the innerLoop, y is set to 1, and the print function executes.
//At the second pass, x is set to 2 on the outerLoop, and then y is set to 1. on the innerLoop. Once y reaches 2, the continue OuterLoop is exeuted and the print function is not executed.
////```


//##E) Nested loops
//1) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both integers.
//outerLoop: for x in 0...10 {
//    innerLoop: for y in 0...10 {
//        print("\(x), \(y)" )
//    }
//}

//
//2) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both even numbers.

//outerLoop: for x in 0...10 {
//    innerLoop: for y in 0...10 {
//        if x % 2 == 0 && y % 2 == 0 {
//        print("\(x), \(y)" )
//    }
//}
//
//3) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the difference of x and y is at least 5, and x and y are both integers.
//
//4) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the product of x and y is less than 6, and x and y are both integers.
//
//5) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the x is not equal to y and x and y are both integers.
