//
//  main.swift
//  week3-hw

import Foundation


<<<<<<< HEAD
func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
    switch opString {
    case "+":
        return {x, y in x + y }
    case "-":
        return {x, y in x - y }
    case "*":
        return {x, y in x * y }
    case "/":
        return {x, y in x / y }
    default:
        return {x, y in x + y }
    }
}

enum Operator: String {
    case Addition = "+"
    case Subtraction = "-"
    case Multiplication = "*"
    case Division = "/"
    case Random = "?"
}

//func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
//
//}


while true {
    print("Operator and two operands please: ", terminator: "")
    if let response = readLine(stripNewline: true) {
        if response == "exit" {
            break
        }
        
        let command = response.componentsSeparatedByString(" ")
        let operators = command[1]
        
        let arrayOfOperators = ["+", "-", "*", "/"]
        let index = UInt32(arrayOfOperators.count - 1)
        let randomOperatorsSymb = arrayOfOperators[Int(arc4random_uniform(index))]
        
        let operatorConversion = Operator(rawValue: operators)
        if let x = operatorConversion {
            switch x {
            case .Addition, .Subtraction, .Multiplication, .Division:
                let equation = mathStuffFactory(operators)
                if let number1 = Double(command[0]), number2 = Double(command[2]) {
                    let answer = equation(number1, number2)
                    print("\(number1) \(operators) \(number2) = \(answer)")
                }
            case .Random:
                let randomEquation = mathStuffFactory(randomOperatorsSymb)
                if let number1 = Double(command[0]), number2 = Double(command[2]) {
                    let answer = randomEquation(number1, number2)
                    while true {
                        print(" \(answer) is the answer. Guess which operator was used.")
                        if let randomPrompt = readLine(stripNewline: true) {
                            if randomPrompt == randomOperatorsSymb {
                                print("Correct!")
                                break
                            } else {
                                print("Nope!")
                            }
                        }
                    }
                }
                
            }
        } else {
            print("Unknown Operator: \(operators)")
        }
    }
}


//Problem 1B
//while true {
//    print("Operator and two operands please: ", terminator: "")
//    if let response = readLine(stripNewline: true) {
//        if response == "exit" {
//            break
//        }
//        
//        let command = response.componentsSeparatedByString(" ")
//        let operators = command[1]
//        let operatorConversion = Operator(rawValue: operators)
//        let arrayOfOperators = ["+", "-", "*", "/"]
//        let index = UInt32(arrayOfOperators.count - 1)
//        let randomOperatorsSymb = arrayOfOperators[Int(arc4random_uniform(index))]
//        
//        if let x = operatorConversion {
//            switch x {
//            case .Addition, .Subtraction, .Multiplication, .Division:
//                let equation = mathStuffFactory(operators)
//                if let number1 = Double(command[0]), number2 = Double(command[2]) {
//                    let answer = equation(number1, number2)
//                    print("\(number1) \(operators) \(number2) = \(answer)")
//                }
//            case .Random:
//                let randomEquation = mathStuffFactory(randomOperatorsSymb)
//                if let number1 = Double(command[0]), number2 = Double(command[2]) {
//                    let answer = randomEquation(number1, number2)
//                    print("\(number1) \(randomOperatorsSymb) \(number2) = \(answer)")
//                }
//
//            }
//        } else {
//            print("Unknown Operator: \(operators)")
//        }
//    }
//}



//Problem 1A
//while true {
//    print("Operator and two operands please: ", terminator: "")
//    if let response = readLine(stripNewline: true) {
//        if response == "exit" {
//            break
//        }
//        let command = response.componentsSeparatedByString(" ")
//        let operators = command[1]
//        if (operators == "+" || operators == "-" || operators == "*" || operators == "/") {
//            let equation = mathStuffFactory(operators)
//            if let number1 = Double(command[0]), number2 = Double(command[2]) {
//                let answer = equation(number1, number2)
//                print("\(number1) \(operators) \(number2) = \(answer)")
//            }
//        } else {
//            print("Unknown operator: \(operators)")
//        }
//    }
//}
=======
>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093
