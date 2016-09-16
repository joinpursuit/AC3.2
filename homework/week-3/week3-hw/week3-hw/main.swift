//
//  main.swift
//  week3-hw

import Foundation


// Question Q1A
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
//    default:
//        return {x, y in x + y }
//    }
//}
//
//
//while true{
//    print("Please type in your math problem:", terminator: " ")
//    if let response = readLine(stripNewline: true){
//        let parseResponse = response.componentsSeparatedByString(" ")
//            let operand = parseResponse[1]
//        if operand != "+" && operand != "-" && operand != "*" && operand != "/"{
//            print("Unknow Operand: \(operand)")
//            break
//        }
//        
//        var answer =  mathStuffFactory(parseResponse[1])
//        if let firstOperand = Double(parseResponse[0]), secondOperand = Double(parseResponse[2]) {
//        var finalAnswer = answer(firstOperand, secondOperand)
//            print("\(firstOperand) \(parseResponse[1]) \(secondOperand) = \(finalAnswer)")
//        }
//        }
//    }







// Question Q1b


 
enum mathOperands: String{
    case Addition = "+"
    case Subtraction = "-"
    case Multiplication = "*"
    case Division = "/"
}

func mathStuffFactory(opString: [String]){
    if let operation = mathOperands(rawValue: opString[1] ) {
        if let firstOperand = Double(opString[0]), secondOperand = Double(opString[2]) {
    switch operation {
    case .Addition:
         let answer = firstOperand + secondOperand
        print("\(firstOperand) \(mathOperands.Addition.rawValue) \(secondOperand) = \(answer)")
    case .Subtraction:
        let answer = firstOperand - secondOperand
        print("\(firstOperand) \(mathOperands.Addition.rawValue) \(secondOperand) = \(answer)")
    case .Multiplication:
        let answer = firstOperand * secondOperand
        print("\(firstOperand) \(mathOperands.Addition.rawValue) \(secondOperand) = \(answer)")
    case .Division:
        let answer = firstOperand / secondOperand
        print("\(firstOperand) \(mathOperands.Addition.rawValue) \(secondOperand) = \(answer)")
   
    }
        }
}
}


while true{
    print("Please type in your math problem:", terminator: " ")
    if let response = readLine(stripNewline: true){
        var parseResponse = response.componentsSeparatedByString(" ")
            let operand = parseResponse[1]
        if operand != "+" && operand != "-" && operand != "*" && operand != "/"{
            print("Unknow Operand: \(operand)")
            break
        }
        mathStuffFactory(parseResponse)
            }
    }



// Q1c

//enum mathOperands: String{
//    case Addition = "+"
//    case Subtraction = "-"
//    case Multiplication = "*"
//    case Division = "/"
//    case Question = "?"
//}
//
//func mathStuffFactory(opString: [String]) -> String{
 //
//    if let firstOperand = Double(opString[0]), secondOperand = Double(opString[2]) {
//
//    switch operand {
//    case .Addition:
//        let answer = {(x: Double, y: Double) -> Double in x + y }
//        let finalAnswer = answer(Double(firstOperand), Double(secondOperand))
//        return ( "\(firstOperand) \(opString[1]) \(secondOperand) = \(finalAnswer)")
//    case .Subtraction:
//        let answer = {(x: Double, y: Double) -> Double in x - y }
//        let finalAnswer = answer(Double(firstOperand), Double(secondOperand))
//        return ( "\(firstOperand) \(opString[1]) \(secondOperand) = \(finalAnswer)")
//
//    case .Multiplication:
//        let answer = {(x: Double, y: Double) -> Double in x * y }
//        let finalAnswer = answer(Double(firstOperand), Double(secondOperand))
//        return ( "\(firstOperand) \(opString[1]) \(secondOperand) = \(finalAnswer)")
//
//    case .Division:
//        let answer = {(x: Double, y: Double) -> Double in x / y }
//        let finalAnswer = answer(Double(firstOperand), Double(secondOperand))
//        return ( "\(firstOperand) \(opString[1]) \(secondOperand) = \(finalAnswer)")
//
//    case .Question:
//        return (String(opString))
//
//        }
//      }
//   }
//    return mathStuffFactory(opString)
//}
//
//func ques(x: [String]){
//    var arr = x
//    let ranArray = [mathOperands.Addition.rawValue, mathOperands.Subtraction.rawValue, mathOperands.Multiplication.rawValue, mathOperands.Division.rawValue]
//    
//    let randomNum = Int(arc4random_uniform(4))
//    
//    arr[1] = ranArray[randomNum]
//    print(mathStuffFactory(arr))
//}
//
//while true{
//    print("Please type in your math problem:", terminator: " ")
//    if let response = readLine(stripNewline: true){
//        var parseResponse = response.componentsSeparatedByString(" ")
//            let operand = parseResponse[1]
//        
//        if operand == "?"{
//                    ques(parseResponse)
//                } else if operand != "+" && operand != "-" && operand != "*" && operand != "/"{
//            print("Unknow Operand: \(operand)")
////            break
//         } else {
//        print (mathStuffFactory(parseResponse))
//        }
//            }
//    }


// Q1d



//
//
//enum mathOperands: String{
//    case Addition = "+"
//    case Subtraction = "-"
//    case Multiplication = "*"
//    case Division = "/"
//}
//
//
//    if let operand = mathOperands(rawValue: opString[1]){ // checks to see with rawValue is being passed through the mathStuffFactory and assigns the case to operand
//        
//        if let firstOperand = Double(opString[0]), secondOperand = Double(opString[2]) {
//            
//            switch operand {
//            case .Addition:
//                let answer = {(x: Double, y: Double) -> Double in x + y }
//                let finalAnswer = answer(Double(firstOperand), Double(secondOperand))
//                return ( "\(firstOperand) \(opString[1]) \(secondOperand) = \(finalAnswer)")
//            case .Subtraction:
//                let answer = {(x: Double, y: Double) -> Double in x - y }
//                let finalAnswer = answer(Double(firstOperand), Double(secondOperand))
//                return ( "\(firstOperand) \(opString[1]) \(secondOperand) = \(finalAnswer)")
//                
//            case .Multiplication:
//                let answer = {(x: Double, y: Double) -> Double in x * y }
//                let finalAnswer = answer(Double(firstOperand), Double(secondOperand))
//                return ( "\(firstOperand) \(opString[1]) \(secondOperand) = \(finalAnswer)")
//                
//            case .Division:
//                let answer = {(x: Double, y: Double) -> Double in x / y }
//                let finalAnswer = answer(Double(firstOperand), Double(secondOperand))
//                return ( "\(firstOperand) \(opString[1]) \(secondOperand) = \(finalAnswer)")
//            }
//        }
//    }
//    return mathStuffFactory(opString)
//}
//
//func ques(x: [String]){
//    var arr = x
//    let ranArray = [mathOperands.Addition.rawValue, mathOperands.Subtraction.rawValue, mathOperands.Multiplication.rawValue, mathOperands.Division.rawValue]
//    
//    let randomNum = Int(arc4random_uniform(4))
//    
//    arr[1] = ranArray[randomNum]
//    let answer = mathStuffFactory(arr)
//    
//    var parseAnswer = answer.componentsSeparatedByString(" ")
//    print(parseAnswer[4])
//    print("Guess what opearation was used:", terminator: " ")
//    if let response2 = readLine(stripNewline: true){
//        if response2 == parseAnswer[1]{
//            print("Correct!")
//        } else {
//            print("Nope!")
//        }
//    }
//}
//
//while true{
//    print("Please type in your math problem:", terminator: " ")
//    if let response = readLine(stripNewline: true){
//        var parseResponse = response.componentsSeparatedByString(" ")
//        let operand = parseResponse[1]
//        
//        if operand == "?"{
//            ques(parseResponse)
//        } else if operand != "+" && operand != "-" && operand != "*" && operand != "/"{
//            print("Unknow Operand: \(operand)")
//                        break
//        } else {
//            print (mathStuffFactory(parseResponse))
//        }
//    }
//}