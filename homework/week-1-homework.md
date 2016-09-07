s## AC3.2 - Week 1 - Homework

### I. Variables

#### Question 1.
Provide the following constants/variable names with the most appropriate type annotations.




1. let _firstName_: (type?)


"string"


2. let _middleInitial_:


"character"


3. var _age_:


Int


4. var _latitude_:


double 


5. var _longitude_:


double 


6. var _isRainingCurrently_:


Bool 


7. let _completeAddress_:


"string"


8. let _π_:


Double 





#### Question 2.
Convert the following decimal numbers to Binary:

* 55 
55 Binary code >>> 11011


* 122
122 Binary Code >>> 1111010


* -1
-1 Binary code >>> -1 


* 15
15 Binary code >>> 1111



#### Question 3.
Using nested loops, print the numbers from 0 to 100, then back to 0.

```swift

for i in 0...100 {
for j in (0...100).reverse() {
print("\(i),\(j)", separator: "", terminator: " ")
}
print("")
}

```


#### Question 4.
While ```i``` is greater than 1, print only all positive even numbers and break 
out of the loop when you've reached 220.

``` swift
var i = 2
while i > 1 {
if i%2==0 {
print (i)}
else if (i>220){
break}
i+=1
}

```



#### Question 5.
* Using any kind of loop, print the sum of all numbers between 0 to 50.

``` swift

for i in 1...50{
print (i + (i+1))
}

```


* Using a while loop, print all the odd numbers from 0 to 100.

``` swift
var i = 0

while (i<=100){
if (i%2==1){
print(i)}
i+=1
}

```

* Using a ```for case``` loop, print all the multiples of 10 from 50 to 500.

``` swift

for case let i in 50...100 where i%10 == 0 {
print (i)
}

```


#### Question 6.
Consider the code below. Loop through the ```professionals``` array and using a switch statement:
* Print out the professionals with _lastName_ "Smith".
* Print out all the developers.
* Print out all the non-developers.
* Print out the professionals in their 20s.
* Print out the professionals in their 30s.

```swift
let sarah = (firstName: "Sarah", lastName: "Palardo", job: "teacher", age: 32)
let beth = (firstName: "Beth", lastName: "Newell", job: "developer", age: 29)
let jana = (firstName: "Jana", lastName: "Smith", job: "developer", age: 33)
let lauren = (firstName: "Lauren", lastName: "Olson", job: "doctor", age: 27)
let charles = (firstName: "Charles", lastName: "Wong", job: "developer" , age: 24)
let steve = (firstName: "Steve", lastName: "Smith", job: "writer", age: 28)
let jamal = (firstName: "Jamal", lastName: "Smith", job: "developer", age: 25)
let navindra = (firstName: "Navindra", lastName: "Chowdhurry", job: "actuary", age: 29)

let professionals = [sarah, beth, jana, lauren, charles, steve, jamal, navindra]
```

* Hint: Use the framework below for your code

```swift
for person in professionals {
	switch person {
 
	}
}

```
ANSWER



//* Print out the professionals with lastName "Smith". 

```swift
for person in professionals {
switch person { case (_, "Smith", _, _):
print("\(person.0)'s last name is \(person.1)")
default: print("\(person.0)'s last name is not Smith") } }

```

//* Print out all the developers.

```swift 
for person in professionals {
switch person { case (_, _, "developer", _):
print("\(person.0) is a professional developer")
default: print("\(person.0) is not a developer") } }

```

//* Print out all the non-developers. 


```swift
for person in professionals {
switch person {
case (_, _, "teacher", _):
print("\(person.0) is teacher")
case (_, _, "doctor", _):
print("\(person.0) is doctor")
case (_, _,"Writer", _):
print("\(person.0) is Writer")
case (_, _, "actuary", _):
print("\(person.0) is actuary")
default:
print("Not Available") }
}
```

//* Print out the professionals in their 20s.

```swift
for person in professionals {
switch person { case (_, _, _, 20..<30):
print("\(person.0) is in there 20s")
default: print("\(person.0) is not in there 20s") } }
```

//* Print out the professionals in their 30s.

```swift
for person in professionals {
switch person { case (_, _, _, 30..<40):
print("\(person.0) is in there 30s")
default:
print("\(person.0) is not in there 30s") } }

```






#### Question 7.
Given the arrays below, use nested loops to print out every possible card in the deck.

```swift
let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
let suits = ["♠️", "♣️", "♥️", "♦️"]


for i in denominations {
for j in suits {
print("\(i),\(j)", separator: "", terminator: " ")
}
print("")
}
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


```swift 
for i in (1...99).reverse() {
print("\(i) bottles of beer on the wall, \(i) bottles of beer.")
print("Take one down and pass it around, \(i-1) bottles of beer on the wall.")
print(" ") }

print("No more bottles of beer on the wall, no more bottles of beer.")
print("Go to the store and buy some more, 99 bottles of beer on the wall.")

```






#### Question 9.
##### "FizzBuzz"
* Create a loop that prints all integers from 0 to 100.
* For all multiples of 3, print out "Fizz" instead of the number.
* For all multiples of 5, print out "Buzz"  instead of the number.
* For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.

```swift
var i = 0

while i<=100{
if (i%3==0 && i%5==0) {
print("FizzBuzz")
}
else if (i%3==0){
print ("Fizz")
}
else if (i%5==0){
print ("Buzz")
}

print(i)
i+=1
}

```




#### Question 10.
Write code that will print out the first 10 [Fibonacci](http://www.codeforwin.in/2015/06/fibonacci-series-in-c-program.html) numbers:

```
0, 1, 1, 2, 3, 5, 8, 13, 21, 34

```
```swift 

var x = 10

var a = 0
var b = 1

for _ in 1...x {
print(a)
var tmp = a + b
b = a
a = tmp
}

```











