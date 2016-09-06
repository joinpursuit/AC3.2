


//  main.swift
//  week-3-homework
//
//  Created by Eashir Arafat on 9/3/16.
//  Copyright © 2016 Eashir Arafat. All rights reserved.
//

// 1
import Foundation


enum Operation: String {
    case Add = "+"
    case Subtract = "-"
    case Multiply = "*"
    case Divide = "/"
}

let add = Operation.Add.rawValue
let subtract = Operation.Subtract.rawValue
let multiply = Operation.Multiply.rawValue
let divide = Operation.Divide.rawValue

func mathStuffFactory(Operation: String) -> (Double, Double) -> Double {
    
    switch Operation {
    case add:
        return {x, y in x + y }
    case subtract:
        return {x, y in x - y }
    case multiply:
        return {x, y in x * y }
    case divide:
        return {x, y in x / y }
    default:
        return {x, y in x + y }
    }
}


while true {
    
    if let response = readLine(stripNewline: true) {
        
        if response == "exit" {
            break
        }
        if response == "" {
            print("Type something :(")
            continue
        }
        
        
        let responseString = String(response)
        let responseSeparated = responseString.componentsSeparatedByString(" ")
        let operation = responseSeparated[1]
        
        if operation == "?" {
            
            let operations = ["+","-","*","/"]
            let randomOperation = Int(arc4random_uniform(UInt32(operations.count)))
            let operation = String(operations[randomOperation])
            
            if let firstNumber = Double(responseSeparated[0]), secondNumber = Double(responseSeparated[2]) {
                let runFunc = mathStuffFactory(operation)
                print(runFunc(firstNumber, secondNumber))
                
                var repeatGuess = true
                while repeatGuess {
                    if let guess = readLine(stripNewline: true) {
                        if operation == guess {
                            print("You got it, nice job :D!")
                            repeatGuess = false
                        }
                        else {
                            print("Nope ;l")
                        }
                    }
                }
                
            }
        }
            
        else if operation == "+" || operation == "-" || operation == "/" || operation == "*" {
            if let firstNumber = Double(responseSeparated[0]), secondNumber = Double(responseSeparated[2]) {
                let runFunc = mathStuffFactory(operation)
                print(runFunc(firstNumber, secondNumber))
            }
        }
        else {
            print("Unknown Operand: \(operation)")
        }
        
    }
    
}


