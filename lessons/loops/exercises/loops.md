1) All the numbers from 1 to 150 inclusive

 for i in 1...150 {
       print(i)
   }

2) All the numbers from 142 to 159 exclusive
       
   for i in 142...159 {
       print(i)
   }

3) Only the even numbers from 15 to 80 inclusive
   
   for i in 15...80 {
   if (i % 2 == 0) {
       print(i)
       }
   }

   for i in 15...80 where i % 2 == 0 {
       print(i)
   }

4) Only the odd numbers from 19 to 51 inclusive

   for i in 19...51 where i % 2 != 0 {
       print(i)
   }

5) All the numbers that end in a 5 from 1 to 100 exclusive

   for i in 1..<100 where i % 5 == 0 && i%2 != 0 {
       print(i)
   }

   for i in 5..<100 {
       if i%5 == 0 {
           print(i)
           i+=10
       }
   }
   
   var i = 5
   repeat {
       print(i)
       i+=10
   } while i < 100
   

for i in 1...40 where i % 10 == 5 {
print(i)
}

6) All the numbers that end in a 7 from 1 to 40 inclusive



   var i = 7
   repeat {
       print(i)
       i+=10
   } while i < 40

for i in 1...40 where i % 10 == 7 {
   print(i)
}


## B) Given a range of numbers from 20 to 150 print out all the numbers that follows these conditions

1) Numbers that are divisible by 3

for i in 20...150 where i % 3 == 0{
   print(i)
}

2) Numbers that are divisible by 2 and 3

for i in 20...150 where i % 3 == 0 && i % 2 == 0 {
   print(i)
}



3) Unit digit ends with 4



for i in 20...150 where i % 10 == 4 {
   print(i)
}


4) Print out numbers contain 31, 35, 40 to 60.

for i in 20...150 where i % 100 == 31, 35, 40, 60  {
   print (i)
}

// come back



## C) While loop (NO Xcode)
```var i = 5
while (i > 3) {
 i += 1
}
```
1) How many times does this while loop execute?

   Whatever Int.max is :stuck_out_tongue: (Liam)

2) How do you stop the loop when i reaches 9?

   if i == 9 {break}

3) How would you fix the while loop so that it only execute 1,000 times.
   
   while (i < 10005)

4) Once the loop can run 1,000 times, print out ONLY the even number.

   var i = 5
   while (i < 10005) {
       if i % 2 ==0 {
           i += 1
       }
   }


```var i = 1
while i <= 10 {
   print("i = \(i)")
   i+=
}
```
```var i = 1
do {
  print("i = \(i)")
  i+=
}while i <= 10
```
5) What's the difference between these two while loop?

       Do while loop prints once no matter what the condition, while loop only prints if the condition is true

6) If there's a difference, how would you fix it so that both outputs are the same.


## D) Short Answer Questions (NO Xcode)

1) What's the difference between break vs continue?

   break gets out of the loop, continue stops at current point and starts at the top of the loop

2) Without using Xcode explain the result of the following for-in loops.
* a)
```for i in 1...10 {
   if (i >=4 && i <= 7){
       continue
   }
   print(i)
}

It will only print 1,2,3,8,9,10
```
* b)
```for i in 1...10 {
   if (i >=4 && i <= 7){
       break
   }
   print(i)
}

prints 1,2,3
```
* Bonus)
```outerloop: for x in 1...3 {
   innerloop: for y in 1...3 {
       if y == 2{
           continue outerloop
       }
       print("x = \(x), y = \(y)")
   }
}

"x = 1, y = 1
x = 2, y = 1
x = 3, y = 1
```
##E) Nested loops
1) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both integers.




2) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where x and y are both even numbers.

3) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the difference of x and y is at least 5, and x and y are both integers.

4) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the product of x and y is less than 6, and x and y are both integers.

5) Write code that prints out all the points in the area bounded by (0,0), (10,0), (0,10) and (10,10) where the x is not equal to y and x and y are both integers.
