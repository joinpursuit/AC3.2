## A) For each prompt below, write a for loop that prints out the specified information.

1) All the numbers from 1 to 150 inclusive

for i in 1...150 {
print (i)
}

2) All the numbers from 142 to 159 exclusive

for i in 143..<159 {
print(i)
}

3) Only the even numbers from 15 to 80 inclusive

for i in 15...80 where i % 2 == 0 {
print (i)
}


4) Only the odd numbers from 19 to 51 inclusive

for i in 19...51 where i % 2 == 1 {
print (i)
}

5) All the numbers that end in a 5 from 1 to 100 exclusive
for i in 5...95 where i%10 == 5{
print (i)
}
6) All the numbers that end in a 7 from 1 to 40 inclusive
 
for i from 1...40 where i%10 == 7{
print (i)
}
## B) Given a range of numbers from 20 to 150 print out all the numbers that follows these conditions

1) Numbers that are divisible by 3

i from 20...150 where i%3 == 0 {
for i in 20...150 where i % 3 == 0 {
print(i)
}
2) Numbers that are divisible by 2 and 3
for i in 20...150 where i % 3 == 0 || i % 2 == 0 {
print(i)
}
3) Unit digit ends with 4
for i in 20...150 where i % 10 == 4 {
print(i)
}
4) Print out numbers contain 31, 35, 40 to 60.

## C) While loop (NO Xcode)
``` 
var i = 5
while (i > 3) {
  i += 1
}
```
1) How many times does this while loop execute? Infinitely.

2) How do you stop the loop when i reaches 9? 
var i = 5
while (i > 3) && (i<10) {
i += 1
}

3) How would you fix the while loop so that it only execute 1,000 times.
var i = 5
while (i > 3) && (i == 1_004) {
i += 1
}


4) Once the loop can run 1,000 times, print out ONLY the even number.
var i = 5
while (i > 3) && (i == 1_004) {
print(i % 2 == 0)
}

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
Break stops the code executing. Continue stops code and then begins code again from the beginning of the loop.

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
Will print 4, 5, 6, 7.
* b)
```
for i in 1...10 {
    if (i >=4 && i <= 7){
        break
    }
    print(i)
}
```
Will just print 4.
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
Will print "x = 1, y =1"
"x = 1, y =2"
"x = 2, y =1"
"x = 2, y =2"
"x = 3, y =1"
"x = 3, y =2"

##E) Nested loops
1) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both integers.
outerloop: for x in 0...10 {
    innerloop: for y in 0...10 {
        print ("\(x), \(y)")

2) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both even numbers.
outerloop: for x in 0...10 where x % 2 == 0 {
    innerloop: for y in 0...10 where y % 2 = 0 {
        print ("\(x), \(y)") }
}
3) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the difference of x and y is at least 5, and x and y are both integers.


4) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the product of x and y is less than 6, and x and y are both integers.

5) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the x is not equal to y and x and y are both integers.
