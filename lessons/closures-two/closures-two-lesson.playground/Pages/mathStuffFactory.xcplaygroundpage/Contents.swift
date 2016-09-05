//: [Previous](@previous)

import Foundation
//
//
//func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
//    switch opString {
//    case "+":
//        return {x, y in x + y }
//    case "-":
//        return {x, y in x - y }
//    case "*":
//        return {x, y in x * y }
//    case "/":
//        return {x, y in x / y }
//    case "^":
//        return {x, y in pow(x, y)}
//    case "badpow":
//        return {(x:Double, y:Double) -> Double in
//            var base = Double(1)
//            for _ in 1...Int(y){
//                base *= x }
//            return base}
//    case "//":
////        return {x, y in Double(Int(x) / Int(y)) }
//        return {x, y in floor(x/y) }
//    default:
//        return {x, y in x + y }
//    }
//}
//
//let plus = mathStuffFactory("+")
//plus(3, 8)
//
//let intDiv = mathStuffFactory("//")
//intDiv(3, 2)
//
//let badPow = mathStuffFactory("badpow")
//badPow(2.4,3.6)
//
//let goodPow = mathStuffFactory("^")
//goodPow(2.4, 3.6)



//
//let command = ["5", "?", "4"]
//
//enum Command: String {
//    case Plus = "+"
//    case Subtract = "-"
//    case Multiply = "*"
//    case Division = "/"
//    case Random = "?"
//}
//
//func randomOperation(a a: Double, b: Double) -> Double {
//    let randNum = Int(arc4random_uniform(4))
//    switch randNum {
//    case 0:
//        return a + b
//    case 1:
//        return a - b
//    case 2:
//        return a * b
//    case 3:
//        return a / b
//    default:
//        return a + b
//    }
//}
//
//func mathStuffFactory(opString: Command) -> (Double, Double) -> Double {
//    switch opString {
//    case .Plus:
//        return {x, y in x + y }
//    case .Subtract:
//        return {x, y in x - y }
//    case .Multiply:
//        return {x, y in x * y }
//    case .Division:
//        return {x, y in x / y }
//    case .Random:
//        return {x, y in randomOperation(a: x, b: y)
//        
//        }
//    }
//}
//
//func processCommand(c: [String]) {
//    if c.count < 3 {
//        print("We need at least two operands seperated by an operand.")
//    }
//    if let userOperator = Command(rawValue: c[1]), userNum1 = Double(c[0]), userNum2 = Double(c[2]) {
//        switch userOperator {
//        case .Plus:
//            let plus = mathStuffFactory(userOperator)
//            print("\(userNum1) + \(userNum2) = \(plus(userNum1, userNum2))")
//        case .Subtract:
//            let subtract = mathStuffFactory(userOperator)
//            print("\(userNum1) - \(userNum2) = \(subtract(userNum1, userNum2))")
//        case .Multiply:
//            let multiply = mathStuffFactory(userOperator)
//            print("\(userNum1) * \(userNum2) = \(multiply(userNum1, userNum2))")
//        case .Division:
//            let division = mathStuffFactory(userOperator)
//            print("\(userNum1) / \(userNum2) = \(division(userNum1, userNum2))")
//        case .Random:
//            let random = mathStuffFactory(userOperator)
//            print("\(userNum1) ? \(userNum2) = \(random(userNum1, userNum2))")
//            
//        }
//    }
//}
//
//processCommand(command)
//
//
//


// the built-in function works like this
//let filtered = ints.filter { (a) -> Bool in
//    a % 2 == 0
//}
//
//print(filtered)



// ... but your function will have to take the array as its first parameter
// and the closure as the second/last parameter.
//let myFilter(ints) { (a) -> Bool in
//    a % 2 == 0
//}

let ints = [4,2,6,3,4,6,2,8,5]

func myFilter(inputArray: [Int], theFilter: (Int) -> Bool) -> [Int] {
    var filteredArray: [Int] = []
    for num in inputArray {
        if theFilter(num) {
            filteredArray.append(num)
        }
    }
    return filteredArray
    
}

print(myFilter(ints, theFilter: { (a) -> Bool in a % 3 == 0 }))

    

var isDivBy3 = { (a: Int) -> Bool in
    return a % 3 == 0
}

isDivBy3(7)



func myMap(inputArray: [Int], theMap: (Int) -> (Int)) -> [Int] {
    var mappedArray: [Int] = []
    for num in inputArray {
        mappedArray.append(theMap(num))
    }
    return mappedArray
}
var x = 3

print("    \(myMap(ints, theMap: { (a) -> (Int) in a * x })) ")











