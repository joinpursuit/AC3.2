////: Playground - noun: a place where people can play
//
import UIKit

# Functions

#### Question 1.
Complete the function so that it will print out total cost after tax.
Make sure to call the function afterwards

```swift
let itemCost = 45.0
let nyTax = 0.08775

func totalWithTax(Price cost: Double, TaxRate rate: Double) {
    print("\(cost + (cost * rate))")
}

totalWithTax(Price: itemCost, TaxRate: nyTax)
```

### Question 2.
Motify Q1's function with return type of Int and use external name to look more legible.
Function calls should look something like "total cost of the item after tax"////
```swift

func totalCostWithTax(cost cost: Double, taxRate rate: Double) -> Double {
    return cost + (cost * rate)
}

totalCostWithTax(cost: itemCost, taxRate: nyTax)

```
### Question 3.
Convert the the following if/else statement below into function with a String return type.

```swift
let todaysTemperature = 72

if todaysTemperature <= 40 {
    print("It's cold out.")
} else if todaysTemperature >= 85 {
    print("It's really warm.")
} else {
    print("Weather is moderate.")
}

func tempFeelsLike(temperature temp: Double) -> String {
    if temp <= 40 {
        return"It's cold out."
    } else if temp >= 85 {
        return "It's really warm."
    }else {
        return "Weather is moderate"
    }
}

tempFeelsLike(temperature: Double(todaysTemperature))

```

### Question 4.
Write a function that takes in any two positive integers and return the sum.

```swift
func addTwoInts(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

addTwoInts(5, num2: 10)
```

### Question 5.
Write a function takes in any number grade and returns a letter grade

* 100 -> A+
* 90 - 99 -> A
* 80 - 89 -> B
* 70 - 79 -> C
* 65 - 69 -> D
* Below 65 -> F

```swift
func numToLetterGrade(number num: Int) -> String {
    switch num {
    case 100:
        return("A+")
    case 90...99:
        return("A")
    case 80...89:
        return("B")
    case 70...79:
        return("C")
    case 65...69:
        return("D")
    case 0...65:
        return("F")
    default:
        return("This number is not reflected in our grading rubric.")
    }
}

numToLetterGrade(number: 100)
```


### Bonus.
Make a calculator function that takes in three parameters (two numbers and one operator).
Operater parameter: (+, -, x, /)

```swift
func calculator(operation op: Character, num1: Int, num2: Int) -> Int? {
    switch op{
    case "+":
        return(num1 + num1)
    case "-":
        return(num1 - num2)
    case "/":
        return(num1 / num2)
    case "*":
        return(num1 * num2)
    default:
        return nil
    }
}

calculator(operation: "*", num1: 5, num2: 5)
```
