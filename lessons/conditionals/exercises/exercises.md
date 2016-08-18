```swift
//Question 1.
//
//What are some reasons to use a switch instead of an if?
//
//The switch allows us to be more explicit about our cases and provide additional options to compare with. Its also much easier to read and it's formatted in a more aesthetically pleasing way.


//Question 2.
//
//What's missing from the switch statement below?
//


//c. The below code will not compile because switch statements need case statements for all expected values or a default statement.


//Question 3.
//
//Convert the if/else statement below into a switch statement.


//let temperatureInFahrenheit = 72
//
//switch temperatureInFahrenheit {
//    case temperatureInFahrenheit <= 40:
//print("It's cold out.")
//    case temperatureInFahrenheit >= 85:
//print("It's really warm.")
//    default:
//print("Weather is moderate.")
//}


//Question 4.
//
//Change the below if/else statement into a switch statement.
//

//let cardNum = 12
//switch cardNum {
//    case 11:
//print("Jack")
//    case 12:
//print("Queen")
//    case 13:
//print("King")
//    default:
//print(cardNum)
//}


//Question 5.
//
//Create a switch statement that will convert a number grade into a letter grade as shown below:
//

//var numberGrade = 99
//
//switch numberGrade {
//case 100:
//    print("A+")
//case 90...99:
//    print("A")
//case 80...89:
//    print("B")
//case 70...79:
//    print("C")
//case 65...69:
//    print("D")
//default:
//    print("F")
//}


//Question 6.
//
//Consider the below switch statement. What should your system currently print? What happens when you change number to 365? 1024? 65? What happens when you remove the default clause?

//let number = 42
//
//switch number {
//case 365:
//print("Days in year")
//case 1024:
//print("Bytes in a Kilobyte")
//case 0:
//print("Where arrays start")
//case 42:
//print("The answer to life, the universe and everything")
//}

//This switch statement will print out "The answer to life, the universe and everything"
//If the number is changed to 365 it will print "Days in year"
//If the number is changed to 1024 it will print "Bytes in a Kilobyte"
//If the number is changed to 65 it will print out the default statement
//If the default statement is removed and the switch statement will break because it must be exhaustive


//Question 7.
//
//Consider the variable below called population and the if-condition. 1. Add an else-if-condition that states if population is less than 10000 but greater than 5000, the message changes to say it's "a medium size town". 2. Add an else-condition where the message changes to say it's a mid-size town. 3. Convert your final if-else statement to a switch statement.

var population: Int = 10000
var message = String()
//
//if population < 10000 && population > 5000 {
//    message = "\(population) is a medium size town"
//}
//else if population > 10000 {
//    message = "\(population) is a large town"
//} else {
//    message = "\(population) is a mid-size town"
//}


//switch population {
//case 10000...99999:
//    message = "\(population) is a large town"
//case 5001..<10000:
//    message = "\(population) is a medium size town"
//default:
//    message = "\(population) is a mid-size town"
//}


//Question 8.
//
//Complete the code below so that it prints out and tells the user if the sum of the two numbers in the tuple is at least 15. a) Using a conditional b) Using a switch statement
//

//let myTuple: (Int, Int) = (5, 10)
//
//var sum = myTuple.0 + myTuple.1
//
//if sum >= 15 {
//    print("The sum is greater than or equal to 15!")
//} else {
//    print("The sum is NOT greater than or equal to 15.")
//}
//
//
//
//switch sum {
//case 0..<15:
//    print("The sum is NOT greater than or equal to 15!")
//default:
//    "The sum is greater than or equal to 15!"
//}


//Question 9.
//
//Complete the switch statement below. We want it to output a personalized greeting to the student based on their name and class.
//
//
//let studentNameAndClass = ("Ben", 3.2)
//switch studentNameAndClass{
//default:
//    print("\(studentNameAndClass.0), welcome to Access Code \(studentNameAndClass.1)")
//}
//

//Question 10.
//
//Consider the below switch with a tuple.
//
//Add a case for when y is double the value of x
//Add a case for when y is triple the value of x

let x = 5
let y = 15

switch (x,y) {
case let (x,y) where x==y :
print("x is equal to y")
case let (x,y) where y == 2 * x:
print("Y is DOUBLE the value of x!")
case let (x,y) where y == 3 * x:
print("Y is TRIPLE the value of x!")
case let (x,y):
print("Nothing is special about this tuple")
}


//Question 11
//
//Write an if statement that checks to see what quadrant a point is in, then prints that quadrant. Then write it as a switch statement
//
//

//let myPoint: (Double, Double) = (1, 3)
//
//if myPoint.0 > 0 && myPoint.1 > 0 {
//    print("Quadrant 1")
//} else if myPoint.0 < 0 && myPoint.1 > 0 {
//    print("Quadrant 2")
//} else if myPoint.0 < 0 && myPoint.1 < 0 {
//    print("Quadrant 3")
//} else if myPoint.0 > 0 && myPoint.1 < 0 {
//    print("Quadrant 4")
//} else {
//    print("The point is at the origin.")
//}
//
//
//switch myPoint {
//case let (x, y) where x > 0 && y > 0:
//    print("Quadrant 1")
//case let (x, y) where x < 0 && y > 0:
//    print("Quadrant 2")
//case let (x, y) where x < 0 && y < 0:
//    print("Quadrant 3")
//case let (x, y) where x > 0 && y < 0:
//    print("Quadrant 4")
//default:
//    print("The point is at the origin.")
//}



//Question 12
//
//Write an if statement that prints out what decade of life someone is in (e.g "You are in your twenties). Then write it as a switch statement
//

let nameAndBirthDate: (String, Int) = ("Ben", 1992)

if nameAndBirthDate.1 > 2010 {
print("You are in your ")
}







//Question 13
//
//Write a switch statement that switches on a tuple with two Bools and prints what logical operators (&&, ||) could be applied to make a true expression.
//
//let pAndQ: (Bool, Bool)
//Next, write a switch statement that switches on a tuple with 3 Bools and prints what logical operators (&&, ||) could connect all Bools with to make a true expression.
//
//let pAndQAndR: (Bool, Bool, Bool)
//Question 14
//
//Write a switch statement that prints out the type of what it's switching on
//
//Question 15
//
//Write a conditional statement that prints out whether a number is a whole number
//
//Question 16
//
//You're walking in Manhattan. Write a switch statement that switches on a variable named "direction" having one of the values "North", "East", "West", or "South" and tells you if you're on a street or avenue
//
//Question 17
//
//You're in the Battery and you're heading for C4Q AND you can walk on water. Write a switch using fallthrough to tell you you're getting warmer or colder based on "direction" again. It should also report if you're going "uptown" or "downtown" (but shouldn't report about east or west).


```

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
 
