Excercise completed by Sabrina Ip, 3229. (Not pair programmed, since this is make-up work for absence).

## A) For each prompt below, write a for loop that prints out the specified information.

1) All the numbers from 1 to 150 inclusive

```
for i in 1...150 {
    print(i)
}
```

2) All the numbers from 142 to 159 exclusive

```
for i in 142..<159 {
    print(i)
}
```

3) Only the even numbers from 15 to 80 inclusive

```
for case var i in 15...80 where i%2==0 {
    print(i)
}
```

4) Only the odd numbers from 19 to 51 inclusive

```
for case var i in 19...51 where i%2==1 {
    print(i)
}
```

5) All the numbers that end in a 5 from 1 to 100 exclusive

```
for case var i in 1..<100 where (i-5)%10==0 {
    print(i)
}
```

6) All the numbers that end in a 7 from 1 to 40 inclusive

```
for case var i in 1...40 where (i-7)%10==0 {
    print(i)
}
```

## B) Given a range of numbers from 20 to 150 print out all the numbers that follows these conditions

1) Numbers that are divisible by 3

```
for case var i in 20...150 where i%3==0 {
    print(i)
}
```

2) Numbers that are divisible by 2 and 3

```
for case var i in 20...150 where i%2==0 && i%3==0 {
    print(i)
}
```

3) Unit digit ends with 4

```
for case var i in 20...150 where (i-4)%10==0 {
    print(i)
}
```

4) Print out numbers contain 31, 35, 40 to 60.

```
for i in 20...150 {
    switch i {
    case 31:
        fallthrough
    case 35:
        fallthrough
    case 40...60:
        print(i)
    default:
        break
    }
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

The code is an infinite loop.

2) How do you stop the loop when i reaches 9?

To stop the code, change the while (i > 3) to ```while (i < 9)```.

3) How would you fix the while loop so that it only execute 1,000 times.

To make the loop run only 1000 times, I would change the while statement to ```for _ in 1...1000```. Alternatively, I could change the while statement to ```while (i < 1005)```.

4) Once the loop can run 1,000 times, print out ONLY the event number.

```
var i = 5
    for x in 1...1000 {
        if x == 1000 {
            print(x)
        }
    i += 1
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

Both codes would not run because i+= is not an executable statement. The line i+= needs a number to the right of the expression. Additionally, a do-while loop in Swift has the word "repeat" in place of "do", so the second code would not run.

6) If there's a difference, how would you fix it so that both outputs are the same.

The outputs of both codes will currently give an error. After fixing the codes (see answer to number 5), both codes should give the same output, because the while statement is initially true (i <= 10 is true, because i is 1, and 1 <= 10). In general, a repeat-while loop performs the statement at least once, before checking whether the while statement is true. If the while statement is true initially, then the output of the codes will be the same.

## D) Short Answer Questions (NO Xcode)

1) What's the difference between break vs continue?

In a loop, "break" will stop the running of the loop, and go on to the next statement outside of the loop. "Continue" will stop the current iteration of the loop, and start again at the next iteration of the loop.

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

i iterates through 1 to 10. When i is between 4 and 7, it will do nothing. For it other numbers, it prints the i. Therefore, the results should print a column of the following numbers: 1 2 3 8 9 10.

* b)
```
for i in 1...10 {
    if (i >=4 && i <= 7){
        break
    }
    print(i)
}
```

Since i breaks betwee n 4 and 7, and i iterates starting at i, it will only print the following numbers: 1 2 3.

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

Every time y reaches 2, it breaks out of the innerloop. Thus, the statements only print when y = 1. It should print the following:

x = 1, y = 1
x = 2, y = 1
x = 3, y = 1

##E) Nested loops
1) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both integers.

```
for x in 0...10 {
    for y in 0...10 {
        print("(\(x), \(y))")
    }
}
```

2) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both even numbers.

```
for case var x in 0...10 where x%2==0 {
    for case var y in 0...10 where y%2==0 {
        print("(\(x), \(y))")
    }
}
```

3) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the difference of x and y is at least 5, and x and y are both integers.

```
for x in 0...10 {
    for case var y in 0...10 where x-y >= 5 || y-x >= 5 {
        print("(\(x), \(y))")
    }
}
```

4) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the product of x and y is less than 6, and x and y are both integers.

```
for x in 0...10 {
    for case var y in 0...10 where x*y<6 {
        print("(\(x), \(y))")
    }
}
```

5) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the x is not equal to y and x and y are both integers.

```
for x in 0...10 {
    for case var y in 0...10 where x != y {
        print("(\(x), \(y))")
    }
}
```
