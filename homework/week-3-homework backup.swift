
//  main.swift
//  week-3-homework
//
//  Created by Eashir Arafat on 9/3/16.
//  Copyright © 2016 Eashir Arafat. All rights reserved.
//

import Foundation


enum Operation: String {
    case Add = "+"
    case Subtract = "-"
    case Multiply = "*"
    case Divide = "/"
}


func mathStuffFactory(Operation: String) -> (Double, Double) -> Double {
    
    switch Operation {
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


while true {
    
    if let response = readLine(stripNewline: true) {
        
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
            }
        }
            
        else {
            if let firstNumber = Double(responseSeparated[0]), secondNumber = Double(responseSeparated[2]) {
                let runFunc = mathStuffFactory(operation)
                print(runFunc(firstNumber, secondNumber))
            }
        }
        
    }
    
}

