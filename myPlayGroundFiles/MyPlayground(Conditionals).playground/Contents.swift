//: Playground - noun: a place where people can play

import UIKit

//1. USING IF ELSE CONDITIONAL.
/*var str = "Hello, playground"

var population: Int = 5422
var message: String
var hasPostOffice: Bool = true

if population < 10000 {
    message = "\(population) is a small town!"
} else {
    if population >= 10000 && population < 50000 {
        message = "\(population) is a medium town"
    } else {
        message = "\(population) is pretty big!"
    }
}
print(message)

if !hasPostOffice {
    print("Where do we buy stamps?")
}*/

/*2. USING TERNARY OPERATORS
message = population < 10000 ? "\(population)is a small town!" : "\(population) is pretty big!"*/

//3. USING ELSE IF CONDITIONAL.
var population: Int = 38765
var message: String
var hasPostOffice: Bool = true

if population < 10000 {
    message = "\(population) is a small town!"
} else if population >= 10000 && population < 50000 {
    message = "\(population) is a medium town!"
} else {
    message = "\(population) is pretty big!"
}
print(message)

if !hasPostOffice {
    print("Where do we buy stamps?")
}*/

//4. USING INTEGERS (MAXIMUM AND MINIMUM VALUES FOR Int)
/*print("The maximum Int value is \(Int.max).")
print("The minimum Int value is \(Int.min).")
print("The maximum Int value for a 32-bit integer is \(Int32.max).")
print("The minimum Int value for a 32-bit integer is \(Int32.min).")*/
