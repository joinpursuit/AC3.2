# Functions

//: Playground - noun: a place where people can play

import Cocoa

//# Functions
//
//#### Question 1.
//Complete the function so that it will print out total cost after tax.
//Make sure to call the function afterwards
//

let itemCost = 45.0
let nyTax = 0.08775

func totalWithTax(amountOfItem: Int) {

var totalCost: Double = 0
totalCost =  (2 * itemCost) * (1 + nyTax)
print(totalCost)

}
totalWithTax(2)


//Question 2.
//Motify Q1's function with return type of Int and use external name to look more legible.
//Function calls should look something like "total cost of the item after tax"

func totalCostWithTax(PerItem amountOfItem: Int)-> Double {

var totalCost: Double = 0
totalCost =  (2 * itemCost) * (1 + nyTax)
return(totalCost)

}
var totalCost = totalCostWithTax(PerItem: 2)

//### Question 3.

//Convert the the following if/else statement below into function with a String return type.
//
//swift
//var todaysTemperature = 72
//
////
////if todaysTemperature <= 40 {
////    print("It's cold out.")
////} else if todaysTemperature >= 85 {
////    print("It's really warm.")
////} else {
////    print("Weather is moderate.")
////}
//
//func forecast (degree: Int)-> String{
//    
//    if degree <= 40 {
//        return("It's cold out.")
//    }
//    else if degree >= 85 {
//        return("It's really warm.")
//    }
//    
//return("Weather is moderate.")
//
//}
//
//let howIsWeather = forecast(todaysTemperature)
//
//### Question 4.
//Write a function that takes in any two positive integers and return the sum.

//func takes2Int(num1: Int, num2: Int)-> Int{
//    
//    return num1 + num2
//}
//
//takes2Int(2, num2: 3)
//

//### Question 5.
//Write a function takes in any number grade and returns a letter grade
//
//* 100 -> A+
//* 90 - 99 -> A
//* 80 - 89 -> B
//* 70 - 79 -> C
//* 65 - 69 -> D
//* Below 65 -> F
//
var grade = 88
var letGrade : String = ""

func gradeFinder (grade: Int) -> String{

switch grade {
case 100:
letGrade = "A+"
case 90...99:
letGrade = "A"
case 80...89:
letGrade = "B"
case 70...79:
letGrade = "C"
case 65...69:
letGrade = "D"

default:
letGrade = "F"
}

return letGrade

}

var findMyGrade = gradeFinder(grade)

//### Bonus.
//Make a calculator function that takes in three parameters (two numbers and one operator).
//Operater parameter: (+, -, x, /)
//

func makeCalc (num1: Double, num2: Double, operat: String) -> Double{

var result: Double = 0

switch operat {
case "x":
result = num1 * num2
case "-":
result = num1 - num2
case "+":
result = num1 + num2
case "%":
result = num1 % num2

default:
result = 0.0
}

return result
}

var whatCalc = makeCalc(4.3, num2: 3.0, operat: "+" )



### Question 5.
Write a function takes in any number grade and returns a letter grade

* 100 -> A+
* 90 - 99 -> A
* 80 - 89 -> B
* 70 - 79 -> C
* 65 - 69 -> D
* Below 65 -> F




### Bonus.
Make a calculator function that takes in three parameters (two numbers and one operator).
Operater parameter: (+, -, x, /)
