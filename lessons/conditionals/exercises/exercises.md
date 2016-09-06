//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var errorcode = 102
var tray = 1

switch errorcode {
case 101, 102:
print("empty tray")
if tray == 1 {
print("Its tray 1 ")
}
case 100...199:
print("paper related error")

case 200:
break

default:
break
//print("unknown error code")
}



/*let upperBound = 5
let r = 0..<upperBound
print(String(r.dynamicType))
//print(String(upperBound.dynamicType))

let cardValues = 1...13
print(String(cardValues.dynamicType))


let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
naturalCount = "no"
case 1..<5:
naturalCount = "a few"
case 5..<12:
naturalCount = "several"
case 12..<100:
naturalCount = "dozens of"
case 100..<1000:
naturalCount = "hundreds of"
default:
naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
// Prints "There are dozens of moons orbiting Saturn."
*/

// independent constants



/*let name = "Agnes"
let age = 24
let zipcode = 11106

// one tuple agnesInfo now contains a list of values
let agnesInfo = (name, age, zipcode)

agnesInfo.1

var hollyInfo = (name: "Holly", age: 33, zipString: "10301") // can be built from literals; note the type of zip

print(hollyInfo.age)


hollyInfo.name = "evil holly"
*/

/*let agnesInfo = ("Agnes", 24, 11106)
let hollyInfo = ("Holly", 33, 10301)
let kaiInfo = ("Kai",18, 11106)
let personInfo = kaiInfo

switch personInfo {
case (_, 0..<30, 10300...10399):
print("\(personInfo.0) is young and lives on Staten Island")
case (_, 0..<30, 11100...11199):
print("\(personInfo.0) is young and lives in LIC")
case (_, 0..<30, _):
print("\(personInfo.0) is young and we don't know where they live")
case (_, _, 10000...14999):
print("(\(personInfo.0) lives in New York State")
default:
print("We can't say anything interesting about \(personInfo.0)")
}
*/



/*let paulInfo = ("Paul", 48, 97321)
let mariaInfo = ("Maria", 18, 10305)
let personInfo = mariaInfo

switch personInfo {
case (_, 30..<60, 97300...97399):
print("\(personInfo.0) is mature and lives in Salem, OR")
case (_, 0..<20, 10333...10444):
print("\(personInfo.0) is young and lives in NYC")
default:
print("We don't know anything;(")
}
*/





let temperatureInFahrenheit = 72


switch temperatureInFahrenheit{
case 0..<40:
print("It's cold out.")
case 40..<85:
print ("Weather is moderate")
case 85..<160:
print ("It's really warm")
default:
print("No data about this temp")
}

/*if temperatureInFahrenheit <= 40 {
print("It's cold out.")
} else if temperatureInFahrenheit >= 85 {
print("It's really warm.")
} else {
print("Weather is moderate.")
}

*/





let cardNum = 13
switch cardNum {
case 11:
print("Jack")
case 12:
print("Queen")
case 13:
print("King")
default:
print("cardNum")
}


/*let cardNum = 12
if cardNum == 11 {
print("Jack")
} else if cardNum == 12 {
print("Queen")
} else if cardNum == 13 {
print("King")
} else {
print(cardNum)
}*/


let gradePoints: Int=100

switch  gradePoints {
case 0..<65:
print("\(gradePoints) is grade F")
case 66..<69:
print("\(gradePoints) is grade D")
case 70..<79:
print("\(gradePoints) is grade C")
case 80..<89:
print("\(gradePoints) is grade B")
case 90..<99:
print("\(gradePoints) is grade A")
default:
print("Maria and Karen got an A+!!!!!!")
}



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

//Complete the code below so that it prints out and tells the user if the sum of the two numbers in the tuple is at least 15. a) Using a conditional b) Using a switch statement

//let myTuple: (Int, Int) = (5, 10)




//Question 7.

//Consider the variable below called population and the if-condition. 1. Add an else-if-condition that states if population is less than 10000 but greater than 5000, the message changes to say it's "a medium size town". 2. Add an else-condition where the message changes to say it's a mid-size town. 3. Convert your final if-else statement to a switch statement.


var population: Int = 10000
var message = String()

if population > 10000 {
message = "\(population) is a large town"
} else if population < 10000 && population > 5000{
message = "\(population) is a medium size town"
} else {
message = "\(population) it's a mid-size town"
}

var pop: Int = 6000
var msg = String()

switch pop {
case 0..<5000:
msg = "\(pop) is a mid-size town"
case 5001..<10000:
msg = "\(pop) is a medium size town"
default:
msg = "\(pop) is a large town"
}







//Question 8.

//Complete the code below so that it prints out and tells the user if the sum of the two numbers in the tuple is at least 15. a) Using a conditional b) Using a switch statement

//let myTuple: (Int, Int) = (5, 10)



//Question 10
var myTuple = (x:4, y:12)

switch myTuple  {
case let (x,y) where x==y :
print ("x is equal to y")
case let (x,y) where y==2*x :
print ("y is double the value of x")
case let (x,y) where y==3*x :
print ("y is triple the value of x")
default:
print("Nothing special about it")
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
 
