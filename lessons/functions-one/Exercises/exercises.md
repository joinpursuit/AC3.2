# Functions

#### Question 1.
Complete the function so that it will print out total cost after tax.
Make sure to call the function afterwards
```swift
let itemCost = 45.0
let nyTax = 0.08775

func totalWithTax(item cost:Double, taxRate rate:Double) -> Double {
    return cost * (1 + rate)
}
totalWithTax(item: itemCost, taxRate: nyTax)

```

### Question 2.
Motify Q1's function with return type of Double and use external name to look more legible.
Function calls should look something like "total cost of the item after tax"
```swift
func totalCostWithTax(totalCost cost:Double, withTaxRate rate:Double) -> Double {
    return cost * (1 + rate)
}
let total = totalCostWithTax(totalCost:itemCost, withTaxRate: nyTax)
print (total)
```

### Question 3.
Convert the the following if/else statement below into function with a String return type.
```swift
var todaysTemperature = 72

if todaysTemperature <= 40 {
    print("It's cold out.")
} else if todaysTemperature >= 85 {
    print("It's really warm.")
} else {
    print("Weather is moderate.")
}

func temperature (currentTemp:Int) -> String {
    if currentTemp <= 40{
        return "It's cold out."
    }else if currentTemp >= 85{
        return "It's really warm"
    } else {
        return "Weather is moderate."
    }
}

print(temperature(todaysTemperature))

```


### Question 4.
Write a function that takes in any two positive integers and return the sum.
```swift
func sum (a:Int, _ b:Int) -> Int {
    return a + b
}
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
func gradeConversion (grade: Int) -> String {
    switch grade {
        case _ where grade >= 100:
            return "A+"
        case 90..<100:
            return "A"
        case 80..<89:
            return "B"
        case 70..<80:
            return "C"
        case 65..<69:
            return "D"
        case let y where y < 65:
            return "F"
        default:
            return "The input can not be evaluated."
    }
}
```



### Bonus.
Make a calculator function that takes in three parameters (two numbers and one operator).
Operater parameter: (+, -, x, /)
```swift
func calculator (a:Int, anotherImput b:Int, Operator c:String) -> Int? {
    switch c {
        case "x":
            return a * b
        case "/":
            return a / b
        case "+":
            return a + b
        case "-":
            return a - b
        default:
            return nil
    }
}
```
