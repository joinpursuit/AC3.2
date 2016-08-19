: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

Question 1.

What are some reasons to use a switch instead of an if?

ANSWER: If you have multiple conditions, it's more useful when there are possible values

Question 2.

What's missing from the switch statement below?

a. The case statement needs to say month == 1
b. The code is valid and not missing anything
c. The below code will not compile because switch statements need case statements for all expected values or a default statement.

let monthNum = 3
switch monthNum {
case 1:
print("January")
}

ANSWER: C


Question 3.

Convert the if/else statement below into a switch statement.

var temperatureInFahrenheit = 20

if temperatureInFahrenheit <= 40 {
    print("It's cold out.")
} else if temperatureInFahrenheit >= 85 {
    print("It's really warm.")
} else {
    print("Weather is moderate.")
//}



ANSWER:a
switch temperatureInFahrenheit {
case let cold where temperatureInFahrenheit <= 40:
    print("outside temperature is \(cold)")
case let warm where temperatureInFahrenheit >= 85:
    print("It's really warm.")
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

ANSWER:
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

Question 5.

Create a switch statement that will convert a number grade into a letter grade as shown below:

100 -> A+
90 - 99 -> A
80 - 89 -> B
70 - 79 -> C
65 - 69 -> D
Below 65 -> F

ANSWER:
var numberGrade = 75

switch numberGrade {
case 100:
    print("You got an A+! Great job.")
case 90..<100:
    print("You got an A!")
case 80...89:
    print("B! You can do better.")
case 70...79:
    print("You did okay, try again.")
case 65...69:
    print("You barely passed.")
case 0...65:
    print("Go home and study")
default:
    ("Try again")
}

Question 6.

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

ANSWER:
Part A: "The answer to life, the universe and everything"
Part B: "Days in year", "Bytes in a Kilobyte", "Some uninteresting number"
Part C: If removed, it would give us error because not all the conditions are covered, needs a default if not everything is exhuasted.

Question 7.

Consider the variable below called population and the if-condition. 1. Add an else-if-condition that states if population is less than 10000 but greater than 5000, the message changes to say it's "a medium size town". 2. Add an else-condition where the message changes to say it's a mid-size town. 3. Convert your final if-else statement to a switch statement.

var population: Int = 10000
var message = String()

if population > 10000 {
    message = "\(population) is a large town"
}

ANSWER 1:
var population: Int = 10000
var message = String()

if population > 10000 {
    message = "\(population) is a large town"
}else if population < 10000 && population > 5000{
    message = "\(population) is a medium size town"
}else{
    message = "\(population) is a mid-size town"
}

ANSWER 2 & 3:
switch population{
case 10000...1000000:
    print("\(population) is a large town")
case 5000..<10000:
    print("\(population) is a medium size town")
default:
    print("\(population) is a mid-size town")
}


Question 8.

Complete the code below so that it prints out and tells the user if the sum of the two numbers in the tuple is at least 15. a) Using a conditional b) Using a switch statement

let myTuple: (Int, Int) = (5, 10)

ANSWER:
let result = myTuple.0 + myTuple.1

PART A.
if result <= 15{
    print("Trueeeeee!")
}else{
    print("False.")
}

PART B.
switch result{
case let resultOne where result <= 15:
    print("Trueeeee!")
case let resultTwo where result > 16:
    print("False.")
default:
    print("Unknown")
}


Question 9.

Complete the switch statement below. We want it to output a personalized greeting to the student based on their name and class.

ANSWER:
let studentNameAndClass = ("Ben", 3.2)

switch studentNameAndClass{
case ("Ben", 3.2):
    print("Welcome Benjamin!")
default:
    print("Wrong class")

}



Question 10.

Consider the below switch with a tuple.

Add a case for when y is double the value of x
Add a case for when y is triple the value of x

ANSWER:
let myTuple = (2, 4)

switch myTuple {

case let (x,y) where x==y:
    print("x is equal to y")
case let (x,y) where y == 2*x:
    print("y is double the value of x")
case let (x,y) where y == 3*x:
    print("y is triple the value of x")
case let (x,y):
    print("Nothing is special about this tuple")

}
