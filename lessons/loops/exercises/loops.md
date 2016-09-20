```
import UIKit

let r = 1...5
let r2 = 1...5

r == r2

for index in 1...5 {
print("\(index) times 5 is \(index * 5)")
}

//Array of string can be use as range in a for loop
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
print("Hello, \(name)!")
}

var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0
while shields > 0 {
if spaceDemonsDestroyed == 500{
print("You beat the game!")
break
}

if blasterFireCount > 100 {
blastersOverheating = true
//continue means return to the top of the loop, and skip the current iterates.
//continue
}
if blastersOverheating {
print("Blasters are overheated!  Cooldown initiated.")
sleep(5)
print("Blasters ready to fire")
sleep(1)
blastersOverheating = false
blasterFireCount = 0
}

// Fire blasters!
print("Fire blasters!")

// note the version in the book used ++
blasterFireCount += 1
}

let product = 24
outer: for i in 1...12 {
inner: for j in 1...12 {
if i * j == product {
print("\(product) = \(i) x \(j)")
break outer
}
else {
print("Dud: \(i) \(j)")
}
}
}

//1) All the numbers from 1 to 150 inclusive

for a in 1...150{
print(a)
}

//2) All the numbers from 142 to 159 exclusive

for b in 142..<159{
print(b)
}

//3) Only the even numbers from 15 to 80 inclusive

for c in 15...80 where c%2 == 0{
print(c)
}
//4) Only the odd numbers from 19 to 51 inclusive

for d in 19...51 where d%2 == 1{
print(d)
}

//5) All the numbers that end in a 5 from 1 to 100 exclusive

for e in 1..<100 where e%5 == 0 && e%10 != 0{
print(e)
}

//6) All the numbers that end in a 7 from 1 to 40 inclusive

var f = 7
while f <= 40{
print(f)
f += 10
}

//1) Numbers that are divisible by 3

for g in 20...150 where g%3 == 0{
print(g)
}

//2) Numbers that are divisible by 2 and 3


for h in 20...150 where h%2 == 0 && h%3 == 0{
print(h)
}

//3) Unit digit ends with 4

var f = 24
while f <= 150{
print(f)
f += 10
}

//4) Print out numbers contain 31, 35, 40 to 60.

for j in 20...150{
if j == 31 || j == 35{
print (j)
}
if j >= 40 && j <= 60{
print(j)
}
}

var i = 5
while (i > 3) {
i += 1
}

//1) How many times does this while loop execute?  
//This is a infinite loop

//2) How do you stop the loop when i reaches 9?

var i = 5
while (i <= 9) {
i += 1
}

//3) How would you fix the while loop so that it only execute 1,000 times.

var i = 5
while (i < 1005) {
i += 1
}


//4) Once the loop can run 1,000 times, print out ONLY the event number.

var i = 5
while (i < 1005) {
if i%2 == 0{
print(i)
}
i += 1
}

var i = 1
while i <= 10 {
print("i = \(i)")
i = i + 1
}
var a = 1
repeat {
print("i = \(a)")
a = a + 1
}while a <= 10

//5) What's the difference between these two while loop? 
//While loop will only execute when the conditon are meet, but the repeat-while loop will execute once and then compare to the conditions.

//6) If there's a difference, how would you fix it so that both outputs are the same.

//1) What's the difference between break vs continue? 
//Break exit current loop, continue stop current iterate and restart the loop.

//2) Without using Xcode explain the result of the following for-in loops.
//a)
for i in 1...10 {
if (i >=4 && i <= 7){
continue
}
print(i)
}
//print all integer between 1 to 10 without 4,5,6,7.

//b)
for i in 1...10 {
if (i >=4 && i <= 7){
break
}
print(i)
}
//print 1,2,3, loop end when i = 4.

//Bonus)
outerloop: for x in 1...3 {
innerloop: for y in 1...3 {
if y == 2{
continue outerloop
}
print("x = \(x), y = \(y)")
}
}
//print 1,1 2,1 3,1


//E) Nested loops
//1) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both integers.

for x in 0...10{
for y in 0...10{
print("(\(x), \(y))", terminator: " ")
}
print(" ")
}

//2) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both even numbers.

for case let x in 0...10 where x%2 == 0{
for case let y in 0...10 where y%2 == 0{
print("(\(x), \(y))", terminator: " ")
}
print(" ")
}

//3) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the difference of x and y is at least 5, and x and y are both integers.

for x in 0...10{
for case let y in 0...10 where x-y >= 5 || y-x >= 5{
print("(\(x), \(y))", terminator: " ")
}
print(" ")
}

//4) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the product of x and y is less than 6, and x and y are both integers.

for x in 0...10{
for case let y in 0...10 where x*y < 6{
print("(\(x), \(y))", terminator: " ")
}
print(" ")
}

//5) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the x is not equal to y and x and y are both integers.

for x in 0...10{
for case let y in 0...10 where x != y{
print("(\(x), \(y))", terminator: " ")
}
print(" ")
}
```


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
