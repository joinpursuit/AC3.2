////: Playground - noun: a place where people can play
//
import Cocoa

//Question 1. What are some reasons to use a switch instead of an if?

// When there is more than 1 situation to check Switch is more powerful. Especially for biding and using tuples


//Question 2. What's missing from the switch statement below?  ANSWER C
//
//a. The case statement needs to say month == 1
//b. The code is valid and not missing anything
//c. The below code will not compile because switch statements need case statements for all expected values or a default statement.
//let monthNum = 3
//switch monthNum {
//case 1:
//print("January")
//}



//Question 3.
//
//Convert the if/else statement below into a switch statement.
//
//temperatureInFahrenheit = 72
//
//if temperatureInFahrenheit <= 40 {
//print("It's cold out.")
//} else if temperatureInFahrenheit >= 85 {
//print("It's really warm.")
//} else {
//print("Weather is moderate.")
//}

//

var temp = 72

switch temp{

case 0..<40:
print("It's cold out.")
case 80...120:                      //I want to change this
print("It's really warm.")
default:
print("Weather is moderate.")

}

//Question 4.
//
//Change the below if/else statement into a switch statement.
//
let cardNum = 12
//if cardNum == 11 {
//print("Jack")
//} else if cardNum == 12 {
//print("Queen")
//} else if cardNum == 13 {
//print("King")
//} else {
//print(cardNum)
//}

//Code
switch cardNum{

case 11:
print("Jack")
case 12:
print ("Queen")
case 23:
print ("King")
default:
print(cardNum)
}


//Question 5.
//
//Create a switch statement that will convert a number grade into a letter grade as shown below:
//
//100 -> A+
//90 - 99 -> A
//80 - 89 -> B
//70 - 79 -> C
//65 - 69 -> D
//Below 65 -> F

//Code

let grade: Int = 80

switch grade{

case 100:
print("A+")
case 90...99:
print ("A")
case 80...89:
print ("B")
case 70...79:
print ("C")
case 65...69:
print ("D")
case 0...64:
print ("F")
default:
print("Please check grade")
}


//Question 6.
//
//Consider the below switch statement. What should your system currently print? What happens when you change number to 365? 1024? 65? What happens when you remove the default clause?

// Answer : Swicth must be exhauseted. Each time case change output changes
//let number = 65
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
//default:
//print("Some uninteresting number")
//}



//Question 7.
//
//Consider the variable below called population and the if-condition. 1. Add an else-if-condition that states if population is less than 10000 but greater than 5000, the message changes to say it's "a medium size town". 2. Add an else-condition where the message changes to say it's a mid-size town. 3. Convert your final if-else statement to a switch statement.
//
var population: Int = 10000
var message = String()
//
//if population > 10000 {
//    message = "\(population) is a large town"
//}
//
//// Answer for If Statement
//
//var population: Int = 20000
//var message = String()
//
//if population > 10000 {
//    message = "\(population) is a large town"
//}else if population > 5000 && population < 10000{
//    message = "\(population) is a medium size town"
//
//}
//print(message)

// Answer For Swicth

//switch population{
//case 5000...10000:
//    message = "\(population) is a medium town"
//case let apop where population > 10000:
//    message = "\(population) is a large town"
//default:
//    break
//}
//print(message)








//Question 8.
//
//Complete the code below so that it prints out and tells the user if the sum of the two numbers in the tuple is at least 15. a) Using a conditional b) Using a switch statement

//Answer a
//let myTuple: (Int, Int) = (5, 20)
//
//if myTuple.0 + myTuple.1 <= 15{
//
//    print("At least some is greater than 15")
//}
//
//else{
//    print("do nothing")
//}
//
//// Answer b
//
//let sum = myTuple.0 + myTuple.1
//
//switch myTuple{
//
//case let check where sum > 15:
//    print("At least some is \(sum) greater than 15")
//    default:
//    break
//
//}





//Question 9.
//
//Complete the switch statement below. We want it to output a personalized greeting to the student based on their name and class.
//
//let studentNameAndClass = ("Ben", 3.2)
//switch myTupleTwo{
//    
//}

// Answer
//
//let studentNameAndClass = ("Ben", 3.2)
//let myTupleTwo = studentNameAndClass
//
//switch myTupleTwo{
//    
//case ("Ben", 3.2):
//    print("Name is \((myTupleTwo.0)) ,class is \(myTupleTwo.1)")
//    
//default:
//    break
//
//}


//Question 10.
//
//Consider the below switch with a tuple.
//
//Add a case for when y is double the value of x
//Add a case for when y is triple the value of x
//switch (x,y) {
//case let (x,y) where x==y :
//    print("x is equal to y")
//case let (x,y):
//    print("Nothing is special about this tuple")
//}

////Answer10
//let doubleOrTriple = (x: 5, y:12)
//
//switch doubleOrTriple {
//case let (x,y) where x == y :
//    print("x is equal to y")
//case let (x,y) where y == 2 * x:
//    print("\(y) is double of \(x)")
//    
//case let (x,y) where y == 3 * x:
//    print("\(y) is triple of \(x)")
//case let (x,y):
//    print("Nothing is special about this tuple")
//    
//    
//}




//Question 11
//
//Write an if statement that checks to see what quadrant a point is in, then prints that quadrant. Then write it as a switch statement
//
let myPoint: (Double, Double) = (1.0, -1.0)

switch myPoint{

case let (x,y) where (x > 0 && y > 0):
print("Quadrant 1")
case let (x,y) where (x < 0 && y > 0):
print("Quadrant 2")
case let (x,y) where (x < 0 && y < 0):
print("Quadrant 3")
case let (x,y) where (x > 0 && y < 0):
print("Quadrant 4")

default:
print("Arbitrary point")


}

//Question 12
//
//Write an if statement that prints out what decade of life someone is in (e.g "You are in your twenties). Then write it as a switch statement
//
//let nameAndBirthDate: (String, Int)

// Answer For 12

//let nameAndBirthDate: (String, Int)
//let name1 = ("Ruki" , 25)
//let name2 = ("Brian" , 30)
//let name3 = ("Merve", 10)
//let name4 = ("Ron", 80)
//
//nameAndBirthDate = name1
//
//switch nameAndBirthDate {
//    
//case (_,0...19):
//    
//    print("\(nameAndBirthDate.0) is in her/his 10")
//case (_,20...29):
//    
//    print("\(nameAndBirthDate.0) is in her/his 20 ies")
//case (_,30...39):
//    
//    print("\(nameAndBirthDate.0) is in her/his 30 ies")
//case (_,80...89):
//    
//    print("\(nameAndBirthDate.0) is in her/his 80 ies")
//    
//default:
//    print("Some other range")
//    
//}


//Question 13
//
//Write a switch statement that switches on a tuple with two Bools and prints what logical operators (&&, ||) could be applied to make a true expression.
//
//let pAndQ: (Bool, Bool)
//Next, write a switch statement that switches on a tuple with 3 Bools and prints what logical operators (&&, ||) could connect all Bools with to make a true expression.
//
//let pAndQAndR: (Bool, Bool, Bool)

//Answer for 13 A

let pAndQ: (Bool, Bool)
pAndQ = (true, false)

switch pAndQ{

case let (x,y) where (true && true):
print(true)

case let (x,y) where (true || true):
print(true)
case let (x,y) where (true || false):
print(true)

default:
print(false)


}


//Answer for 13 B







//Question 14
//
////Write a switch statement that prints out the type of what it's switching on
//let findingType = 4.5
//
//switch findingType{
//    
//case is Int:
//    print("int")
//case is String:
//    print("String")
//case is Double:
//    print("Double")
//case is Character:
//    print("Character")
//default:
//    print("I dont know the type")
//
//}


//Question 15
//
//Write a conditional statement that prints out whether a number is a whole number

let wholeNum = 4.5
var deneme = wholeNum.dynamicType
print(deneme)

//This works
if wholeNum % 1 != 0 {

print("\(wholeNum) is not a whole number")
}else{
print("\(wholeNum) Whole number")

}

//Or

if wholeNum is Int {

print("lala")

}else {
print("This is not int")

}







//Question 16
//
//You're walking in Manhattan. Write a switch statement that switches on a variable named "direction" having one of the values "North", "East", "West", or "South" and tells you if you're on a street or avenue

// Answer: Avenues run north and south streets runs west and east

//let direction: String = "North"
//
//switch direction{
//
//case "North", "South":
//    print("You are in avenue")
//case "West", "East":
//    print("You are on the street")
//default:
//    print("Where are you?")
//}



//Question 17
//
//You're in the Battery and you're heading for C4Q AND you can walk on water. Write a switch using fallthrough to tell you you're getting warmer or colder based on "direction" again. It should also report if you're going "uptown" or "downtown" (but shouldn't report about east or west)
//
//let walkinHere: String = "North"
//
//switch walkinHere{
//
//case "North":
//    print("You must be goin uptown")
//case "West", "East":
//    print("You are on the street")
//default:
//    print("Where are you?")
//}
