## A) For each prompt below, write a for loop that prints out the specified information.

```
// 1) All the numbers from 1 to 150 inclusive

for i in 1...150 {
	print(i)
}


// 2) All the numbers from 142 to 159 exclusive

for case let i in 143..<159 {
	print(i)
}

// 3) Only the even numbers from 15 to 80 inclusive

for case let i in 15...80 where i % 2 == 0 {
	print(i)
}

// 4) Only the odd numbers from 19 to 51 inclusive

for case let i in 19...51 where i % 2 == 1 {
	print(i)
}

// 5) All the numbers that end in a 5 from 1 to 100 exclusive

for case let i in 1...100 where i % 10 == 5 {
	print(i)
}

// 6) All the numbers that end in a 7 from 1 to 40 inclusive

for case let i in 1...40 where i % 10 == 7 {
	print(i)
}
```

## B) Given a range of numbers from 20 to 150 print out all the numbers that follows these conditions

```
// 1) Numbers that are divisible by 3

for case let i in 20...150 where i % 3 == 0 {
	print(i)
}

// 2) Numbers that are divisible by 2 and 3

for case let i in 20...150 where i % 2 == 0 && i % 3 == 0 {
	print(i)
}

// 3) Unit digit ends with 4

for case let i in 20...150 where i % 10 == 4 {
	print(i)
}

// 4) Print out numbers contain 31, 35, 40 to 60.

for case let i in 20...150 where i % 100 == 31 || i % 100 == 35 || ( i % 100 >= 40 && i % 100 <= 60 ) {
	print(i)
}

```

## C) While loop (NO Xcode)
```
var i = 5
while (i > 3) {
  i += 1
}
```


1) How many times does this while loop execute?
// infinitely

2) How do you stop the loop when i reaches 9?
// Change the 3 into a 10

3) How would you fix the while loop so that it only execute 1,000 times.
```swift
var i = 0
while (i <= 1000) {
	i += 1
}
```

4) Once the loop can run 1,000 times, print out ONLY the event number.

```
var i = 1
while i <= 1000 {
    i+=
}
print("i = \(i)")
```
```
var i = 1
repeat {
   i+=
} while i <= 1000
print("i = \(i)")
```
5) What's the difference between these two while loop?
// The while loop looks at the condition first before executing the code, whereas the second executes the code at least once, before looking at the condition. 

6) If there's a difference, how would you fix it so that both outputs are the same.
// Both of the would be the same if you put the print command outside of the loop.  


## D) Short Answer Questions (NO Xcode)

1) What's the difference between break vs continue?
// Break 'breaks' out of the loop, whereas continue 'continues' onto the next iteration.

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

// Prints out the range between 4 to 7 inclusively.

* b)
```
for i in 1...10 {
    if (i >= 4 && i <= 7) {
        break
    }
    print(i)
}
```

// It prints 1 through 3 before breaking out of everything. 

* Bonus)
```
outerloop: for x in 1...3 {
    innerloop: for y in 1...3 {
        if y == 2 {
            continue outerloop
        }
        print("x = \(x), y = \(y)")
    }
}
```

* Answer: 
```
x = 1, y = 1
x = 2, y = 1 
x = 3, y = 1
```


##E) Nested loops
1) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both integers.

```
for x in 0...10 {
	for y in 0...10 {
		print("\(x), \(y)", seperator: "", terminator: " ")
	}
}
```

2) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both even numbers.

```
for case let x in 0...10 where x % 2 == 0 {
	for case let y in 0...10 where y % 2 == 0 {
		print("\(x), \(y)")
	}
}
```

3) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the difference of x and y is at least 5, and x and y are both integers.

```
for x in 0...10 {
	for case let y in 0...10 where abs( x - y ) >= 5 {
		print("\(x), \(y)")
	}
}
```

4) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the product of x and y is less than 6, and x and y are both integers.

```
for x in 0...10 {
	for case let y in 0...10 where x * y < 6 {
		print("\(x), \(y)")
	}
}
```

5) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the x is not equal to y and x and y are both integers.

```
for x in 0...10 {
	for case let y in 0...10 where x != y {
		print("\(x), \(y)")
	}
}
```
