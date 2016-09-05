//
//  main.swift
//  week3-hw

import Foundation

//      1B -  1D

enum Operator:String {
    case Plus = "+"
    case Minus = "-"
    case Times = "*"
    case DividedBy = "/"
    case Random = "?"
}


enum Command:String {
    case LessThan6 = "filter"
    case Squared = "map"
    case Math = "math"
}


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


func myMap(inputArray: [Int] = [4,2,6,3,4,6,2,8,5], filter: (Int) -> Int) -> [Int] {
    var newArray = [Int]()
    for i in inputArray {
        newArray.append(filter(i))
    }
    print(newArray)
    return newArray
}


func myFilter(inputArray: [Int] = [4,2,6,3,4,6,2,8,5], filter: (Int) -> Bool) -> [Int] {
    var newArray = [Int]()
    for i in inputArray {
        if filter(i) {
            newArray.append(i)
        }
    }
    print(newArray)
    return newArray
}


func processCommand(arr:[String]) {
    if let command = Command(rawValue: arr[0]) {
        switch command {
        case .Math:
            
            while true {
            print("Enter two operands and an operator", terminator: "")
            if let mathResponse = readLine(stripNewline: true) {
                    if mathResponse == "exit" {
                        break
                    }
            let mathCommands = mathResponse.componentsSeparatedByString(" ")
            let operatorSymbol = mathCommands[1]
            let operatorConversion = Operator(rawValue : operatorSymbol)
                if (operatorSymbol != "+" && operatorSymbol != "-" && operatorSymbol != "*" && operatorSymbol != "/" && operatorSymbol != "?") {
                    print("Unknown operator: \(operatorSymbol)")
                }
                else {
                    if let operand1 = Double(mathCommands[0]), operand2 = Double(mathCommands[2]), x = operatorConversion {
                        
                        
                        let operation = mathStuffFactory(operatorSymbol)
                        let answer = operation(operand1, operand2)
                        
                        let operatorArray = ["+","-","*","/"]
                        let index = UInt32(operatorArray.count - 1)
                        
                        let randomOperatorSymbol = operatorArray[Int(arc4random_uniform(index))]
                        let randomOperation = mathStuffFactory(randomOperatorSymbol)
                        let randomAnswer = randomOperation(operand1, operand2)
                        
                        
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
            
        case .LessThan6:
            
            myFilter {(x: Int) -> Bool in
                x <= 6
            }
            
        case .Squared:
            
            myMap {(x: Int) -> Int in
                return x * x
            }
            
        }
    }
}


while true {
    print("Type a command to get started: ", terminator: "")
    if let response = readLine(stripNewline: true) {
        if response == "exit" {
            break
        }
        
        let commands = response.componentsSeparatedByString(" ")
        
        processCommand(commands)
    }
}