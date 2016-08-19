## A) For each prompt below, write a for loop that prints out the specified information.

1) All the numbers from 1 to 150 inclusive

for i in 1...150 {
print(i)
}

2) All the numbers from 142 to 159 exclusive

for i in 142..<159 {
print(i)
}

3) Only the even numbers from 15 to 80 inclusive

for i in 15...80 {
if i % 2 == 0 {
print(i)
}
}

4) Only the odd numbers from 19 to 51 inclusive

for i in 19...51 {
if i % 2 != 0 {
print(i)
}
}

5) All the numbers that end in a 5 from 1 to 100 exclusive

for i in 1..<100 {
if i % 5 == 0 && i % 10 != 0 {
print(i)
}
}

6) All the numbers that end in a 7 from 1 to 40 inclusive

for var x in 1..<40 where x % 10 == 0 {
print(x + 7)
}


## B) Given a range of numbers from 20 to 150 print out all the numbers that follows these conditions

1) Numbers that are divisible by 3

for i in 20...150 {
if i % 3 == 0 {
print(i)
}
}

2) Numbers that are divisible by 2 and 3

for i in 20...150 {
if i % 3 == 0 && i % 2 == 0 {
print(i)
}
}

3) Unit digit ends with 4

4) Print out numbers contain 31, 35, 40 to 60.

for x in 20...150 {
switch x {
case 31, 35, 40...60:
print(x)
default:
break
}
}


## C) While loop (NO Xcode)
```
var i = 5
while (i > 3) {
  i += 1
}
```
1) How many times does this while loop execute?

This is an infinite loop so it will keep executing

2) How do you stop the loop when i reaches 9?

You can use a break statement or change the while condition to i < 10

3) How would you fix the while loop so that it only execute 1,000 times.

You can change the condition so that it is i < 1006

4) Once the loop can run 1,000 times, print out ONLY the event number.

Use an if statement with i % 2 == 0 so that only the even numbers print.

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

For the second while loop it will execute at least once by default before evaluating the while condition because of the do/repeat. The first will evaluate the condition first and then run.

6) If there's a difference, how would you fix it so that both outputs are the same.

You can remove the do from the second while loop so instead of running 11 times it runs 10 times, like the first loop.

## D) Short Answer Questions (NO Xcode)

1) What's the difference between break vs continue?

Break will exit from the loop entirely whereas continue will only exit from the current iteration of the loop.

2) Without using Xcode explain the result of the following for-in loops.
* a)
```
for i in 1...10 {
    if (i >=4 && i <= 7){
        continue
    }
    print(i)
}

This loop will print all values except for 4 through 7 because the continue in the if clause makes the loop skip for these values.


```
* b)
```
for i in 1...10 {
    if (i >=4 && i <= 7){
        break
    }
    print(i)
}


Only 1, 2 and 3 will print because the body of the if clause says to break once it reaches at least 4.
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

Anytime y equals a value of 2 the innerloop instructs the code to skip this value and not print it out. Therefore we see all 3 x values at some point but only y = 1 because once it reaches 2 it skips.
```
##E) Nested loops
1) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both integers.

2) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both even numbers.

3) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the difference of x and y is at least 5, and x and y are both integers.

4) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the product of x and y is less than 6, and x and y are both integers.

5) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the x is not equal to y and x and y are both integers.
