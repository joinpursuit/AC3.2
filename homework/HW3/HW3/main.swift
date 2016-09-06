//
//  main.swift
//
//  Created by C4Q on 9/2/16.
//  Copyright © 2016 C4Q. All rights reserved.
//
import Foundation
while true {


enum Operator: String {
    case Add = "+"
    case Subtract = "-"
    case Multiply = "*"
    case Divide = "/"
    case Random = "?"
}


    
func mathFactoryStuff (Operation: String) -> (Double, Double) -> Double {
    switch Operation {
        case "+":
            return {x, y in x + y}
        case "-":
            return {x, y in x - y}
        case "*":
            return {x, y in x * y}
        case "/":
            return {x, y in x / y}
    default:
        return {x, y in x + y}
    }
}


    if let userInput = readLine(stripNewline: true) {
        let userInputArr = userInput.componentsSeparatedByString(" ")
        let operation = userInputArr[1]
        let operations = [Operator.Add.rawValue, Operator.Subtract.rawValue, Operator.Multiply.rawValue, Operator.Divide.rawValue, Operator.Random.rawValue]
        let randomOp = Int(arc4random_uniform(UInt32(operations.count)))
        
            if operation != Operator.Add.rawValue && operation != Operator.Subtract.rawValue && operation != Operator.Multiply.rawValue && operation != Operator.Divide.rawValue && operation != Operator.Random.rawValue {
        print("Unknown command: \(operation)")
    }
        //Random works when put elsewhere but then other operators stop returning
        if operation == "?" {
            let operation = operations[randomOp]
            //This shows that the random is happening but it's not in the equation for some reason
            print(operation)
        }
       
        
            if let firstNumber = Double(userInputArr[0]), secondNumber = Double(userInputArr[2]) {
                let doMath = mathFactoryStuff(operation)
                    print("\(firstNumber) \(operation) \(secondNumber) = \(doMath(firstNumber, secondNumber))")
        }
    }

}