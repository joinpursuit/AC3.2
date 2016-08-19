// Exercises 8/19 Madushani


//## A) For each prompt below, write a for loop that prints out the specified information.
//
//1) All the numbers from 1 to 150 inclusive
//
//for i in 1...150 {
//    print(i)
//}

//
//2) All the numbers from 142 to 159 exclusive

//for i in 142..<159 {
//    print(i)
//}
//
//
//3) Only the even numbers from 15 to 80 inclusive
//
//for i in 15...80 where i%2 == 0 {
//    print(i)
//}

//
//4) Only the odd numbers from 19 to 51 inclusive
//
//for j in 19..<51 where j%2 != 0 {
//    print(j)
//}

//
//5) All the numbers that end in a 5 from 1 to 100 exclusive
//

//for i in 1..<100 where i%5 == 0 && i%10 != 0 {
//    print(i)
//}

//6) All the numbers that end in a 7 from 1 to 40 inclusive
//

//var num = 7
//for i in 1...40 {
//    if num < 40 {
//        print(num)
//        num += 10
//    }
//}

//
//## B) Given a range of numbers from 20 to 150 print out all the numbers that follows these conditions
//
//1) Numbers that are divisible by 3

//for i in 20...150 where i%3 == 0{
//    print(i)
//}

//
//2) Numbers that are divisible by 2 and 3
//
//
//for i in 20...150 where i%2 == 0 && i%3 == 0 {
//    print(i)
//}


//3) Unit digit ends with 4
//


//4) Print out numbers contain 31, 35, 40 to 60.
//

//for i in 20...150 where
//
//## C) While loop (NO Xcode)
//```
//var i = 5
//while (i > 3) {
//    i += 1
//}
//```
//1) How many times does this while loop execute?

//infinite number of times
//

//2) How do you stop the loop when i reaches 9?

//switch (i > 3) with (i <= 9)
//

//3) How would you fix the while loop so that it only execute 1,000 times.

//switch (i > 3) with (i <= 1004)
//


//4) Once the loop can run 1,000 times, print out ONLY the even number.

// put an if statement inside the while loop
// if i%2 == 0 {
//        print(i)
//    }
//


//
//```
//var i = 1
//while i <= 10 {
//    print("i = \(i)")
//    i+=1
//}
//```
//```
//var i = 1
//repeat {
//    print("i = \(i)")
//    i += 1
//} while i <= 10
//```
//5) What's the difference between these two while loop?

//while loop only executes if the condition has met, but repeat while loops executes at least once (even if the condition hasn't met)
//** But in this two while loops they give the same output
//


//6) If there's a difference, how would you fix it so that both outputs are the same.

//there's no difference
//

//
//## D) Short Answer Questions (NO Xcode)
//
//1) What's the difference between break vs continue?

// continue - when it meets the condition it will make the loop go back to the beginning of for-loop until the range is executed
// break - will stop the loop without executing the rest of the range

//
//2) Without using Xcode explain the result of the following for-in loops.
//* a)
//```
//for i in 1...10 {
//    if (i >=4 && i <= 7){
//        continue
//    }
//    print(i)
//}

//prints out 1, 2, 3, 8, 9, 10


//```
//* b)
//```
//for i in 1...10 {
//    if (i >=4 && i <= 7){
//        break
//    }
//    print(i)
//}

//prints out 1, 2, 3


//```
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

//prints out 1,1   2,1   3,1












## A) For each prompt below, write a for loop that prints out the specified information.

1) All the numbers from 1 to 150 inclusive

2) All the numbers from 142 to 159 exclusive

3) Only the even numbers from 15 to 80 inclusive

4) Only the odd numbers from 19 to 51 inclusive

5) All the numbers that end in a 5 from 1 to 100 exclusive

6) All the numbers that end in a 7 from 1 to 40 inclusive


## B) Given a range of numbers from 20 to 150 print out all the numbers that follows these conditions

1) Numbers that are divisible by 3

2) Numbers that are divisible by 2 and 3

3) Unit digit ends with 4

4) Print out numbers contain 31, 35, 40 to 60.


## C) While loop (NO Xcode)
```
var i = 5
while (i > 3) {
  i += 1
}
```
1) How many times does this while loop execute?

2) How do you stop the loop when i reaches 9?

3) How would you fix the while loop so that it only execute 1,000 times.

4) Once the loop can run 1,000 times, print out ONLY the event number.

```
var i = 1
while i <= 10 {
    print("i = \(i)")
    i+=
}
```
```
var i = 1
do {
   print("i = \(i)")
   i+=
}while i <= 10
```
5) What's the difference between these two while loop?

6) If there's a difference, how would you fix it so that both outputs are the same.


## D) Short Answer Questions (NO Xcode)

1) What's the difference between break vs continue?

2) Without using Xcode explain the result of the following for-in loops.
* a)
```
for i in 1...10 {
    if (i >=4 && i <= 7){
        continue
    }
    print(i)
}
```
* b)
```
for i in 1...10 {
    if (i >=4 && i <= 7){
        break
    }
    print(i)
}
```
* Bonus)
```
outerloop: for x in 1...3 {
    innerloop: for y in 1...3 {
        if y == 2{
            continue outerloop
        }
        print("x = \(x), y = \(y)")
    }
}
```
##E) Nested loops
1) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both integers.

2) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both even numbers.

3) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the difference of x and y is at least 5, and x and y are both integers.

4) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the product of x and y is less than 6, and x and y are both integers.

5) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the x is not equal to y and x and y are both integers.
