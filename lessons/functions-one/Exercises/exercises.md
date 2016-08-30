# Functions

#### Question 1.
Complete the function so that it will print out total cost after tax.
Make sure to call the function afterwards
```swift
let itemCost = 45.0
let nyTax = 0.08775

func totalWithTax(taxRate tax:Double, priceBeforeTax item:Double) {
print(round((tax*item)+item))
}

totalWithTax(taxRate: nyTax, priceBeforeTax: itemCost)

```

### Question 2.
Motify Q1's function with return type of Int and use external name to look more legible.
Function calls should look something like "total cost of the item after tax"

let itemCost = 45.0
let nyTax = 0.08775

func totalCostWithTax(taxRate tax:Double, priceBeforeTax item:Double) -> Int {
return Int((tax*item) + item)
}

print(totalCostWithTax(taxRate: nyTax, priceBeforeTax: itemCost))





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

func statusOfTheWeather(currentTemp temp: Int) -> String {
    if temp <= 40 {
        return "It's cold out."
    } else if temp >= 85 {
        return "It's really warm."
    } else {
        return "Weather is moderate."
    }
}



### Question 4.
Write a function that takes in any two positive integers and return the sum.


func sumOfTwoPositiveNumbers(firstNum num1: Int, secondNum num2: Int) -> Int{
    let sum = num1 + num2
    return sum
}





### Question 5.
Write a function takes in any number grade and returns a letter grade

* 100 -> A+
* 90 - 99 -> A
* 80 - 89 -> B
* 70 - 79 -> C
* 65 - 69 -> D
* Below 65 -> F


func letterGrade(numberGrade num: Int) -> String {
    switch num{
    case 100...200:
        return "A+"
    case 90...99:
        return "A"
    case 80...89:
        return "B"
    case 70...79:
        return "C"
    case 65...69:
        return "D"
    default:
        return "F"
    }
}




### Bonus.
Make a calculator function that takes in three parameters (two numbers and one operator).
Operater parameter: (+, -, x, /)

func basicCalculator(firstNumber num1: Double, secondNumber num2: Double, operater op: Character) {

    switch op{
    case "+":
        num1 + num2
    case "-":
        num1 - num2
    case "x":
        num1 * num2
    case "/":
        num1 / num2
    default:
        print("Please use one of the following operators (+,-,x,/)")
    }
}
