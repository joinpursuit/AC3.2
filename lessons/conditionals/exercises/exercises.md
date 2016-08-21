Conditionals
Ana, Edward
Question 1.

What are some reasons to use a switch instead of an if?
Switch is more readible and clear. Switch can deal with multiple cases at a time, while if deals with one at a time.

Question 2.

What's missing from the switch statement below? 
The answer is c.

a. The case statement needs to say month == 1
b. The code is valid and not missing anything
c. The below code will not compile because switch statements need case statements for all expected values or a default statement.
let monthNum = 3
switch monthNum {
case 1:
print("January")
}
Question 3.

Convert the if/else statement below into a switch statement.

temperatureInFahrenheit = 72

if temperatureInFahrenheit <= 40 {
print("It's cold out.")
} else if temperatureInFahrenheit >= 85 {
print("It's really warm.")
} else {
print("Weather is moderate.")
}

let temperatureInFahrenheit = 30
switch temperatureInFahrenheit {
case let temp where temperatureInFahrenheit <= 40:
print("It's cold out.")
case let hightemp where temperatureInFahrenheit >= 85:
print("It's really warm")
default:
print("Weather is moderate.")
}

Question 4.

Change the below if/else statement into a switch statement.

let cardNum = 12
if cardNum == 11 {
print("Jack")
} else if cardNum == 12 {
print("Queen")
} else if cardNum == 13 {
print("King")
} else {
print(cardNum)
}

let cardNum = 12
switch cardNum {
case 11:
print("Jack")
case 12:
print("Queen")
case 13:
print("King")
default:
print("\(cardNum)")
}

Question 5.

Create a switch statement that will convert a number grade into a letter grade as shown below:

100 -> A+
90 - 99 -> A
80 - 89 -> B
70 - 79 -> C
65 - 69 -> D
Below 65 -> F
Question 6.

var letterGrade = 100
switch letterGrade{
case 100:
print("A+")
case 90...99:
print("A")
case 80...89:
print("B")
case 70...79:
print("C")
case 65...69:
print("D")
case let grade where letterGrade < 65:
print("F")
default:
break
}


Consider the below switch statement. What should your system currently print? What happens when you change number to 365? 1024? 65? What happens when you remove the default clause?

let number = 42

switch number {
case 365:
print("Days in year")
case 1024:
print("Bytes in a Kilobyte")
case 0:
print("Where arrays start")
case 42:
print("The answer to life, the universe and everything")
default:
print("Some uninteresting number")
}


Currently prints "The answer to life, the universe and everything"
If switch to 365 it will print "Days in year"
If switch to 1024 it will print "Bytes in a Kilobyte"
If switch to 65 it will print "Some uninteresting number"
It will give an error message of switch must be exhausted



Question 7.

Consider the variable below called population and the if-condition. 1. Add an else-if-condition that states if population is less than 10000 but greater than 5000, the message changes to say it's "a medium size town". 2. Add an else-condition where the message changes to say it's a mid-size town. 3. Convert your final if-else statement to a switch statement.

var population: Int = 10000
var message = String()

if population > 10000 {
message = "\(population) is a large town"


var population: Int = 50000
var message = String()

if population > 10000 {
message = "\(population) is a large town"
} else if population > 5000 && population < 10000 {
message = "\(population) is a medium size town."
} else {
message = "\(population) is a mid-size town"
}

switch population {
case 0...5000:
print ("\(population) is a mid-size town")
case 5001..<10000:
print ("\(population) is a medium size town")
case let pop where population > 10000:
print("\(pop) is a large town")
default:
break
}


}
Question 8.

Complete the code below so that it prints out and tells the user if the sum of the two numbers in the tuple is at least 15. a) Using a conditional b) Using a switch statement

let myTuple: (Int, Int) = (5, 10)


if myTuple.0 + myTuple.1 >= 15{
print("The sum is at least 15.")
}
else {
print("The sum is smaller than 15")
}

switch myTuple {
case let int where myTuple.0 + myTuple.1 >= 15:
print("The sum is at least 15.")
default:
print("The sum is smaller than 15")
}




Question 9.

Complete the switch statement below. We want it to output a personalized greeting to the student based on their name and class.



let studentNameAndClass = ("Ben", 3.2)
var myTupleTwo = studentNameAndClass
switch myTupleTwo{
case (_,3.1):
print("Welcome!\(studentNameAndClass.0) to \(studentNameAndClass.1)")
case(_,3.2):
print("Hello! \(studentNameAndClass.0) to \(studentNameAndClass.1)")
case (_,3.3):
print("Google!\(studentNameAndClass.0) to \(studentNameAndClass.1)")
default:
break
}



}
Question 10.

Consider the below switch with a tuple.

Add a case for when y is double the value of x
Add a case for when y is triple the value of x
var myTuples = (4,12)
switch myTuples {
case let (x,y) where x==y :
print("x is equal to y")
case let (x,y) where y==2*x:
print("y is double the value of x")
case let (x,y) where y==3*x:
print("y is triple the value of x")
case let (x,y):
print("Nothing is special about this tuple")
}
**When switching on the tuples, you need a tuple in the code

Question 11

Write an if statement that checks to see what quadrant a point is in, then prints that quadrant. Then write it as a switch statement

let myPoint: (Double, Double) = (1,-10)
let (x,y) = (myPoint.0, myPoint.1)
if x>0 && y>0 {
print("The point is on quadrant I")
} else if x<0 && y>0 {
print("The point is on quadrant II")
} else if x<0 && y<0 {
print("The point is on quadrant III")
} else if x>0 && y<0 {
print("The point is on quadrant IV")
} else {
print("The point is on a line")
}

switch myPoint {
case let (x,y) where x>0 && y>0:
print("The point is on quadrant I")
case let (x,y) where x<0 && y>0 :
print("The point is on quadrant II")
case let (x,y) where x<0 && y<0 :
print("The point is on quadrant III")
case let (x,y) where x>0 && y<0 :
print("The point is on quadrant IV")
default:
print("The point is on a line")

}

Question 12

Write an if statement that prints out what decade of life someone is in (e.g "You are in your twenties). Then write it as a switch statement

let nameAndBirthDate: (String, Int)
Question 13

Write a switch statement that switches on a tuple with two Bools and prints what logical operators (&&, ||) could be applied to make a true expression.

let pAndQ: (Bool, Bool) = (p:true, q:true)
switch pAndQ{
case let (p,q) where p==true && q==true:
print("This is true!")
case let (p,q) where p==false && q==false:
print("This is false!")
default:
print("This is not sure!")
}

Next, write a switch statement that switches on a tuple with 3 Bools and prints what logical operators (&&, ||) could connect all Bools with to make a true expression.

let pAndQAndR: (Bool, Bool, Bool) = (p:true, q:true, r:true)
switch pAndQAndR{
case let (p,q,r) where p==true && q==true && r==true:
print("This is true!")
case let (p,q,r) where p==false && q==false && r==false:
print("This is false!")
default:
print("This is not sure!")
}

Question 14

Write a switch statement that prints out the type of what it's switching on

let somePoint = (1,2)
switch somePoint {
case let (x,y) where x>0 && y>0:
print("The point is on quadrant I. The switch is \(somePoint.dynamicType).")
case let (x,y) where x<0 && y>0 :
print("The point is on quadrant II")
case let (x,y) where x<0 && y<0 :
print("The point is on quadrant III")
case let (x,y) where x>0 && y<0 :
print("The point is on quadrant IV")
default:
print("The point is on a line")
}

Question 15

Write a conditional statement that prints out whether a number is a whole number

let number = 15
if number is Int {
print("The number is a whole number")
}

Question 16

You're walking in Manhattan. Write a switch statement that switches on a variable named "direction" having one of the values "North", "East", "West", or "South" and tells you if you're on a street or avenue

var direction = "North"
switch direction {
case "North", "South":
print ("You're travelling \(direction) and on an avenue.")
case "East", "West":
print ("You're travelling \(direction) and on an street.")
default:
print("You might be on Broadway")
}

Question 17

You're in the Battery and you're heading for C4Q AND you can walk on water. Write a switch using fallthrough to tell you you're getting warmer or colder based on "direction" again. It should also report if you're going "uptown" or "downtown" (but shouldn't report about east or west).

switch direction {
case "North":
print ("You're and going uptown.")
fallthrough
case "East":
print ("You're getting warmer")
case "South":
print ("You're going downtown.")
fallthrough
case "West":
print ("You're getting colder")
default:
print("You might be on Broadway")
}

# Conditionals

### Question 1.
What are some reasons to use a __switch__ instead of an __if__?

### Question 2.
What's missing from the switch statement below?
- a. The case statement needs to say month == 1
- b. The code is valid and not missing anything
- c. The below code will not compile because switch statements need case statements for all expected values or a default statement.

```swift
let monthNum = 3
switch monthNum {
case 1:
    print("January")
}
```

### Question 3.
Convert the if/else statement below into a switch statement.

```swift
temperatureInFahrenheit = 72

if temperatureInFahrenheit <= 40 {
    print("It's cold out.")
} else if temperatureInFahrenheit >= 85 {
    print("It's really warm.")
} else {
    print("Weather is moderate.")
}
```

### Question 4.
Change the below if/else statement into a switch statement.
```swift
let cardNum = 12
if cardNum == 11 {
    print("Jack")
} else if cardNum == 12 {
    print("Queen")
} else if cardNum == 13 {
    print("King")
} else {
    print(cardNum)
}
```

### Question 5.
Create a switch statement that will convert a number grade into a letter grade as shown below:
* 100 -> A+
* 90 - 99 -> A
* 80 - 89 -> B
* 70 - 79 -> C
* 65 - 69 -> D
* Below 65 -> F

### Question 6.
Consider the below switch statement. What should your system currently print? What happens when you change _number_ to 365? 1024? 65? What happens when you remove the __default__ clause?
```swift
let number = 42

switch number {
case 365:
    print("Days in year")
case 1024:
    print("Bytes in a Kilobyte")
case 0:
    print("Where arrays start")
case 42:
    print("The answer to life, the universe and everything")
default:
    print("Some uninteresting number")
}
```

### Question 7.
Consider the variable below called _population_ and the if-condition.
1. Add an else-if-condition that states if _population_ is less than 10000 but greater than 5000, the message changes to say it's "a medium size town".
2.  Add an else-condition where the message changes to say it's a mid-size town.
3. Convert your final if-else statement to a switch statement.

```swift
var population: Int = 10000
var message = String()

if population > 10000 {
    message = "\(population) is a large town"
}
```

### Question 8.
Complete the code below so that it prints out and tells the user if the sum of the two numbers in the tuple is at least 15.
a) Using a conditional
b) Using a switch statement

```swift
let myTuple: (Int, Int) = (5, 10)
```

### Question 9.
Complete the switch statement below.  We want it to output a personalized greeting to the student based on their name and class.

```swift
let studentNameAndClass = ("Ben", 3.2)
switch myTupleTwo{
   
}

```

### Question 10.
Consider the below switch with a tuple.
* Add a case for when _y_ is __double__ the value of _x_
* Add a case for when _y_ is __triple__ the value of _x_

```swift
switch (x,y) {
case let (x,y) where x==y :
    print("x is equal to y")
case let (x,y):
    print("Nothing is special about this tuple")
}
```

###Question 11
Write an if statement that checks to see what quadrant a point is in, then prints that quadrant.
Then write it as a switch statement
```swift
let myPoint: (Double, Double)
```

###Question 12
Write an if statement that prints out what decade of life someone is in (e.g "You are in your twenties).
Then write it as a switch statement
```swift
let nameAndBirthDate: (String, Int)
```

###Question 13
Write a switch statement that switches on a tuple with two Bools and prints what logical operators (&&, ||) could be applied to make a true expression.
```swift
let pAndQ: (Bool, Bool)
```

Next, write a switch statement that switches on a tuple with 3 Bools and prints what logical operators (&&, ||) could connect all Bools with to make a true expression.
```swift
let pAndQAndR: (Bool, Bool, Bool)
```

###Question 14
Write a switch statement that prints out the type of what it's switching on

###Question 15
Write a conditional statement that prints out whether a number is a whole number

### Question 16
 You're walking in Manhattan. Write a switch statement that switches
 on a variable named "direction" having one of the values "North", "East",
 "West", or "South" and tells you if you're on a street or avenue
 
### Question 17
 You're in the Battery and you're heading for C4Q AND you can walk on water.
 Write a switch using fallthrough to tell you you're getting warmer or colder
 based on "direction" again. It should also report if you're going
 "uptown" or "downtown" (but shouldn't report about east or west).
 
