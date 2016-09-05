//
//  main.swift
//  week3-hw

import Foundation

enum Operator: String {
    case Plus = "+"
    case Subtract = "-"
    case Multiply = "*"
    case Division = "/"
    case Random = "?"
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


while true {
    print("Type in a math problem like this one 3 + 4: ", terminator: "")
    if let response = readLine(stripNewline: true) {

        if response == "exit" {
            break
        }
    
        
        
        let command = response.componentsSeparatedByString(" ")
        
        let operation = command[1]
        let conversion = Operator(rawValue: operation)

        if (operation != "+" && operation != "-" && operation != "*" && operation != "/" && operation != "?") {
            print("Unknown operator: \(operation)")
            continue
        }
        else {
        if let numberOne = Double(command[0]), numberTwo = Double(command[2]) {
            
            
            
            var function = mathStuffFactory(operation)
            var result = function(numberOne, numberTwo)
            
            
            var myOperationArr = ["+","-","*","/"]
            var index = UInt32(myOperationArr.count - 1)
            
            var randomOperatorSymbol = myOperationArr[Int(arc4random_uniform(index))]
            var randomOperation = mathStuffFactory(randomOperatorSymbol)
            var randomResult = randomOperation(numberOne, numberTwo)
         
            
            
            
            if let i = conversion {
            switch i {
            case .Plus, .Multiply, .Subtract, .Division:
            print("\(numberOne) \(operation) \(numberTwo) = \(result). Try another operation!")
            case .Random:
                while true {
                    print(" \(randomResult). Guess the operator used!")
                    if let randomPrompt = readLine(stripNewline: true) {
                        if randomPrompt == randomOperatorSymbol {
                                print("Correct!")
                                       break
                        }
                        else {
                            }
                          }
                       }
                    }
                }
            }
        }
    }
}




//
//// QUESTION TWO
//
//let ints = [4,2,6,3,4,6,2,8,5]
//
//let filtered = ints.filter { (a) -> Bool in
//    a % 2 == 0
//}
//print (filtered)
//
//// the top is the set filter function bottom is made with closure//
//
//var filtering = { (a) -> Bool in
//    a % 2 == 0
//}
//
//var filtrate = [Int]()
//
//func myFilter(ints: [Int], filter: (Int) -> Bool) -> [Int] {
//    for i in ints{
//        if filter(i) == true{
//            filtrate.append(i)
//        }
//    }
//    return filtrate
//}
//
//print(myFilter(ints, filter: filtering))






//Question Three

//let intsTwo = [4,2,6,3,4,6,2,8,5]
//var myNewInt = [Int]()
//var mapping = { (a) -> Int in a}
//
//func myMapping ( IntsTwo: [Int] , mapping: (Int)) -> [Int] {
//    for i in intsTwo {
//        if i == mapping{
//        myNewInt.append(i)
//        }
//       
//        
//    }
//    return myNewInt
//}
//
//print(myMapping(intsTwo, mapping: mapping (2)))

























