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
```swift 


let itemCost = 45.0
let myTax = 0.08775

func totalWithTax( cost: Double, taxRate: Double)-> Double {
return cost + (cost * taxRate)
}

let total = totalWithTax(itemCost, taxRate: myTax)

print (total)

```



### Question 2.
Motify Q1's function with return type of Int and use external name to look more legible.
Function calls should look something like "total cost of the item after tax"


let itemCost = 45.0
let myTax = 0.08775

func totalWithTax(cost cost: Double, taxRate: Double)-> Double {
return cost + (cost * taxRate)
}

let total = totalWithTax(cost: itemCost, taxRate: myTax)

print (total)





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


### Question 4.
Write a function that takes in any two positive integers and return the sum.
```swift

func todaysTemperature (temp :Int) -> String{
if temp <= 40 {
return("it's cold out.")
} else if temp >= 85 {
return ("It's really warm")
}else{
return("the weather is moderate")
}
}
print(todaysTemperature(90))

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

func letterGrade (grade: Int) -> String{
switch grade {
case 0..<65:
return ("F")
case 65..<70:
return ("D")
case 70..<80:
return ("C")
case 80..<90:
return ("B")
case 90..<100:
return ("A")
default:
return ("A+")

}
}
letterGrade(99)
```



### Bonus.
Make a calculator function that takes in three parameters (two numbers and one operator).
Operater parameter: (+, -, x, /)

```swift 

func calculator (firstNumb:Double, Operator: String, secondNumb: Double)-> Double{

switch Operator {
case "+":
return (firstNumb + secondNumb)
case "-":
return (firstNumb - secondNumb)
case "*":
return (firstNumb * secondNumb)
case "/":
return (firstNumb / secondNumb)
default:
return (0)
}

}
calculator(3, Operator: "+", secondNumb: 5)

````












