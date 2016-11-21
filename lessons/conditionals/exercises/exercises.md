




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

























// Question 1: To make the code look cleaner when you have too many conditions.



//Question 2: C

// Question 3

var temperatureInFahrenheit = 72

switch temperatureInFahrenheit {
case let temp where temperatureInFahrenheit <= 40 :
print("It's cold out!")
case let temp where temperatureInFahrenheit >= 85 :
print("It's really warm")
default:
print("weather is moderate")
}


//Question 4
let cardNum = 12

switch cardNum {
case 11:
print("Jack")
case 12:
print("Queen")
case 13:
print ("King")
default:
print(cardNum)
}

//Question 5
let grade = 88

switch grade {
case 100:
print("A+")
case 90..<100:
print("A")
case 80..<90:
print("B")
case 70..<80:
print("C")
case 65..<70:
print("D")
default:
print("F")
}

// Question 6
// 42 - "The answer to life the universe...."
// 365 - days in year
// 1024 bytes in a kilobyte
// 65 some uninteresting number
// the code breaks because there the options arent exhaustive

//Question 7


var population: Int = 10000
var message = String()

if population > 10000 {
message = "\(population) is a large town"
} else if (population < 10000 && population > 5000) {
message = ("\(population) It's a medium size town")
}

print(message)

switch population {
case 5000...10000:
message = "\(population) It's a medium size town"
case let pop where population > 10000:
message = "\(pop) is a large town"
default:
message = "\(population) It's a small town."
}
print(message)

//Question 8 

let myTuple: (Int, Int) = (5, 10)

if myTuple.0 + myTuple.1 >= 15{
print("It's at least 15!")
} else{
print("It's less than 15!")
}


let sum = myTuple.0 + myTuple.1

switch sum {
case 0..<15:
print("It's less than 15!")
default:
print("It's at least 15!")
}

//Question 9


let studentNameAndClass = ("Ben", 3.2)


var myTupleTwo = studentNameAndClass

var message45 = "Hi, \(myTupleTwo.0), welcome to Access Code "


switch myTupleTwo{
case (_,3.1):
message45 += "3.1"
case (_, 3.2):
message45 += "3.2"
case (_, 3.3):
message45 += "3.3"
default:
print("You're in the wrong place!")

}

print(message45)






//Question 10
var myTuple16 = (3, 1)


switch myTuple16 {
case let (x,y) where x==y :
print("x is equal to y")
case let (x,y) where x == 2 * y :
print("x is double the amount of y")
case let (x,y) where x == 3 * y :
print("x is triple the amount of y")
case let (x,y):
print("Nothing is special about this tuple")
}

//Question 11

var myPoint = (x: -1.0, y: 2.0)

if myPoint.0 > 0 && myPoint.1 > 0 {
print("q1")
}
else if myPoint.0 < 0 && myPoint.1 > 0 {
print("q2")
}
else if myPoint.0 < 0 && myPoint.1 < 0 {
print("q3")
}
else if myPoint.0 > 0 && myPoint.1 < 0 {
print("q4")

} else {
print("Not in a quadrant")
}

switch myPoint {
case let (x,y) where x > 0 && y > 0:
print("q1")
case let (x,y) where x < 0 && y > 0:
print("q2")
case let (x,y) where x < 0 && y < 0:
print("q3")
case let (x,y) where x > 0 && y < 0:
print("q4")
default:
print("Not in a quadrant")
}

//Question 12

let nameAndBirthDate = ("Liam", 23)
switch nameAndBirthDate {
case (_, 0...9):
print ("1st decade!")
case (_, 10...19):
print ("2nd decade!")
case (_, 20...29):
print ("3rd decade!")
case (_, 30...39):
print ("4th decade!")
case (_, 40...49):
print ("5th decade!")
case (_, 50...59):
print ("6th decade!")
case (_, 60...69):
print ("7th decade!")
case (_, 70...79):
print ("8th decade!")
default:
print ("If you're still alive, stop counting your age at this point.")
}

 
