//
//  main.swift
//  week3-hw

import Foundation

//      1B -  1D

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


enum Operator:String {
    case Plus = "+"
    case Minus = "-"
    case Times = "*"
    case DividedBy = "/"
    case Random = "?"
}


while true {
    print("Let's do some simple math. Enter two operands and an operator: ", terminator: "")
    if let response = readLine(stripNewline: true) {
        if response == "exit" {
            break
        }
        
        
        let commands = response.componentsSeparatedByString(" ")
        let operatorSymbol = commands[1]
        let operatorConversion = Operator(rawValue : operatorSymbol)
        
        
        if (operatorSymbol != "+" && operatorSymbol != "-" && operatorSymbol != "*" && operatorSymbol != "/" && operatorSymbol != "?") {
            print("Unknown operator: \(operatorSymbol)")
            continue
        }
        else {
        if let operand1 = Double(commands[0]), operand2 = Double(commands[2]) {
            
            
            var operation = mathStuffFactory(operatorSymbol)
            var answer = operation(operand1, operand2)
            
            var operatorArray = ["+","-","*","/"]
            var index = UInt32(operatorArray.count - 1)
            
            var randomOperatorSymbol = operatorArray[Int(arc4random_uniform(index))]
            var randomOperation = mathStuffFactory(randomOperatorSymbol)
            var randomAnswer = randomOperation(operand1, operand2)
            
            
            if let x = operatorConversion {
                switch x {
                case .Plus, .Minus, .Times, .DividedBy:
                    print("\(operand1) \(operatorSymbol) \(operand2) = \(answer). Try another operation!")
                case .Random:
                    while true {
                    print(" \(randomAnswer). Guess the operator used!")
                    if let randomPrompt = readLine(stripNewline: true) {
                        if randomPrompt == randomOperatorSymbol {
                            print("Correct!")
                            break
                        }
                        else {
                            print("Nope!")
                        }
                        }
                    }
                }
            }
            }
        }
    }
}


//      1A

//while true {
//    print("Let's do some simple math. Enter two operands and an operator: ", terminator: "")
//    if let response = readLine(stripNewline: true) {
//        if response == "exit" {
//            break
//        }
//        
//        let commands = response.componentsSeparatedByString(" ")
//        let operatorSymbol = commands[1]
//        
//        if (operatorSymbol == "+" || operatorSymbol == "-" || operatorSymbol == "*" || operatorSymbol == "/") {
//            let operation = mathStuffFactory(commands[1])
//            if let operand1 = Double(commands[0]), operand2 = Double(commands[2]) {
//                let answer = operation(operand1, operand2)
//                print("\(operand1) \(operatorSymbol) \(operand2) = \(answer). Try another operation!")
//                continue
//            }
//        }
//        else {
//            print("Unknown operator: \(operatorSymbol)")
//            continue
//        }
//    }
//}


//      2

let ints = [4,2,6,3,4,6,2,8,5]


func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
    
    var newArray = [Int]()
    for i in inputArray {
        if filter(i) {
            newArray.append(i)
        }
    }
    return newArray
}


var evenFiltered = myFilter(ints) { (x: Int) -> Bool in
    x % 2 == 0
}
print(evenFiltered)


var oddFiltered = myFilter(ints) { (x: Int) -> Bool in
    x % 2 == 1
}
print(oddFiltered)


var greaterThanEqualTo6 = myFilter(ints) { (x: Int) -> Bool in
    x >= 6
}
print(greaterThanEqualTo6)


//      3

let intsB = [4,2,6,3,4,6,2,8,5]

func myMap(inputArray: [Int], filter: (Int) -> Int) -> [Int] {

    var newArray = [Int]()
    for i in inputArray {
        newArray.append(filter(i))
    }
    return newArray
}


var plusTen = myMap(intsB) { (x: (Int)) -> Int in
    x + 10
}
print(plusTen)


var timesTen = myMap(intsB) {(x: Int) -> Int in
    x * 10
}
print(timesTen)


var squared = myMap(intsB) {(x: Int) -> Int in
    x * x
}
print(squared)