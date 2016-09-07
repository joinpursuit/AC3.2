Ana Ma, Eashir Arafat

## A) For each prompt below, write a for loop that prints out the specified information.

1) All the numbers from 1 to 150 inclusive
```swift
for i in 1...150 {
    print(i)
}
```

2) All the numbers from 142 to 159 exclusive
```swift
for i in 143...158 {
    print(i)
}
```
3) Only the even numbers from 15 to 80 inclusive
```swift
for i in 15...80 where i % 2 == 0 {
    print(i)

}
```
4) Only the odd numbers from 19 to 51 inclusive
```swift
for i in 19...51 where i % 2 == 1 {
    print(i)
}
```
5) All the numbers that end in a 5 from 1 to 100 exclusive
```swift
for i in 1...100 where i % 10 == 5 {
    print(i)
}
```
6)* All the numbers that end in a 7 from 1 to 40 inclusive
```swift
for i in 1...40 where i%10 == 7{
    print(i)
}
```
## B) Given a range of numbers from 20 to 150 print out all the numbers that follows these conditions

1) Numbers that are divisible by 3
```swift
for i in 20...150 where i%3 == 0 {
    print (i)
}
```
2) Numbers that are divisible by 2 and 3
```swift
for i in 20...150 where i%3 == 0 && i%2 == 0 {
    print (i)
}
```

3) Unit digit ends with 4
```swift
for i in 20...150 where i%10==4 {
    print(i)
}
```

4) Print out numbers contain 31, 35, 40 to 60.
```swift
for numbers in 20...150 {
    switch numbers {
        case 31, 35, 40...60:
            print("\(numbers)")
        default:
            break
    }
}
```
## C) While loop (NO Xcode)
```swift
var i = 5
while (i > 3) {
    i += 1
}
```
1) How many times does this while loop execute?
Infinate number of times
2) How do you stop the loop when i reaches 9?
For the loop to stop, you have to set a parameters, as follow:
```swift
var i = 5
while i>3 && i<10 {
    i+=1
}
```
3) How would you fix the while loop so that it only execute 1,000 times.
```swift
var i = 5
var casecount = 0
while i>0 {
    print("\(i)")
    if casecount == 1000 {
        break
    }
    i+=1
    casecount+=1
}
```
4) Once the loop can run 1,000 times, print out ONLY the even number.
```swift
var i = 5
var casecount = 0
while i > 0 {
    if i%2==0{
        print("\(i)")
    }
    if casecount == 1000 {
        break
    }
    i+=1
    casecount+=1
}

```
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
The loop on the top and one on the bottom will not execute at all.
6) If there's a difference, how would you fix it so that both outputs are the same.
For the top while loop, the codes should be the following.
```swift
var i = 1
while i <= 10 {
    print ("i=\(i)")
    i+=1
}
```
And for the bottom repeat-while loop, the codes should be the following.
```swift
var i = 1
repeat {
    print ("i=\(i)"
    i+=1
}while i<=10
```

## D) Short Answer Questions (NO Xcode)

1) What's the difference between break vs continue?
When break statment is used, the loops exits out.
While continue statement is used, the loop returns execute the code from the beginning fo the code, instead of exiting the loop in break.
2) Without using Xcode explain the result of the following for-in loops.


* a)
```swift
for i in 1...10 {
    if (i >=4 && i <= 7){
        continue
    }
    print(i)
}
```
The code above will print numbers 1,2,3,8,9,10. The continue statements affects the numbers 4 to 7. Instead of printing, the code returned to the next variable until it gets to 8. The integer 8 and after does not satisfied the if condition and will be printed.
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
The code above will print numbers 1,2,3. The break statement is reached when the number is 4. The break statement allows the loop to be existed and will no longer print the other numbers. 
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
The code above will print
x=1,y=1
x=2,y=1
x=3,y=1
```

##E) Nested loops
1) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both integers.
```swift
outerloop: for x in 0...10 {
    innerloop: for y in 0...10{
        print("(\(x),\(y))")
    }
}
```
2) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both even numbers.
```swift
outerloop: for x in 0...10 where x%2==0 {
    innerloop: for y in 0...10 where y%2==0{
        print("(\(x),\(y))")
    }
}
```
3) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the difference of x and y is at least 5, and x and y are both integers.
```swift
outerloop: for x in 0...10 {
    innerloop: for y in 0...10 {
        if x-y==5 || y-x==5 {
            print("(\(x),\(y))")
        }
    }
}
```

4) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the product of x and y is less than 6, and x and y are both integers.
```swift
outerloop: for x in 0...10 {
    innerloop: for y in 0...10 {
        if x*y<6 {
            print("(\(x),\(y))")
        }
    }
}
```
5) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the x is not equal to y and x and y are both integers.
```swift
outerloop: for x in 0...10 {
    innerloop: for y in 0...10 {
        if x != y {
        print("(\(x),\(y))")
        }
    }
}
```