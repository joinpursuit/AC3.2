# Functions

#### Question 1.
Complete the function so that it will print out total cost after tax.
Make sure to call the function afterwards
```swift
let itemCost = 45.0
let nyTax = 0.08775

func totalWithTax() {

}

```

### Question 2.
Motify Q1's function with return type of Int and use external name to look more legible.
Function calls should look something like "total cost of the item after tax"

let itemCost = 45.0
let nyTaxRate = 0.08775

func totalCostWith(costOfItem cost: Double, taxOnItem tax:Double) -> Double {

return cost + (cost * tax)
}
let total = totalCostWith(costOfItem: itemCost, taxOnItem: nyTaxRate)

print(total)


### Question 3.
Convert the the following if/else statement below into function with a String return type.

```swift
todaysTemperature = 72

if todaysTemperature <= 40 {
    print("It's cold out.")
} else if todaysTemperature >= 85 {
    print("It's really warm.")
} else {
    print("Weather is moderate.")
}
```
func todaysTemperature(temp: Int) -> String {
if temp <= 40 {
return("It's cold out.")
} else if temp >= 85 {
return("It's really warm.")
} else {
return("Weather is moderate.")
}

}

print(todaysTemperature(85))



### Question 4.
Write a function that takes in any two positive integers and return the sum.


func addTwoInt(num1 numb1:Int, num2 numb2:Int) -> Int {
return(numb1 + numb2)
}

### Question 5.
Write a function takes in any number grade and returns a letter grade

* 100 -> A+
* 90 - 99 -> A
* 80 - 89 -> B
* 70 - 79 -> C
* 65 - 69 -> D
* Below 65 -> F

func letterGrade(grade:Int) -> String {
switch grade {
case 100:
return "Perfect Score"
case 90...99:
return "A"
case 80...89:
return "B"
case 70...79:
return "C"
case 65...69:
return "D"
case 0...64:
return "F"
case 0:
return "Fail"
default:
return "I don't understand the input"
}
}

print(letterGrade(88))




### Bonus.
Make a calculator function that takes in three parameters (two numbers and one operator).
Operater parameter: (+, -, x, /)

func addTwoInt(num1 numb1:Double, num2 numb2:Double) -> Double {
return(numb1 + numb2)
}

func divideTwoInt(numerator numer:Double, denominator den:Double) -> Double {
return(numer / den)
}

func multiplyTwoInt(num1 numb1:Double, num2 numb2:Double) -> Double {
return(numb1 * numb2)
}

func subtractTwoInt(num1 numb1:Double, num2 numb2:Double) -> Double {
return(numb1 - numb2)
}

func calculator(num1 numb1:Double, mathOperation op:String, num2 numb2:Double) -> Double {
switch op {
case "+" :
return addTwoInt(num1: numb1, num2: numb2)
case "/":
return divideTwoInt(numerator: numb1, denominator: numb2)
case "*":
return multiplyTwoInt(num1: numb1, num2: numb2)
case "-":
return subtractTwoInt(num1: numb1, num2: numb2)
default:
return 0

}
}

print(calculator(num1: 2, mathOperation: "*", num2: 2))