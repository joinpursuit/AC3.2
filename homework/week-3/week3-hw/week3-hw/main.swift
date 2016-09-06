//
//  main.swift
//  week3-hw

import Foundation



enum OpCode: String {
    case Plus = "+"
    case Minus = "-"
    case Multiply = "*"
    case Divide = "/"
    case Random = "?"
}

print("Hello! Welcome to the MathFactory! You can perfrom an operation (ex. 9 + 6) or guess a random operation (ex. 2 ? 6) /n If you want to exit the program please type 'Exit'. ")


while true {
    var randomNumber = Int(arc4random_uniform(4) + 1)
    
    func mathOperation() -> OpCode {
        
        switch randomNumber {
        case 1:
            return .Plus
        case 2:
            return .Minus
        case 3:
            return .Multiply
        case 4:
            return .Divide
        default:
            return .Plus
        }
    }
    
    func mathStuffFactory(opString: OpCode) -> (Double, Double) -> Double {
        switch opString{
        case .Plus:
            return {x, y in x + y }
        case .Minus:
            return {x, y in x - y }
        case .Multiply:
            return {x, y in x * y }
        case .Divide:
            return {x, y in x / y }
        case .Random:
            return mathStuffFactory(mathOperation())
        }
    }
    
    
    print("Enter your Math problem: ", terminator: "")
    
    if let myMathProb = readLine(stripNewline: true) {
        
        if myMathProb == "Exit" {
            break
        }
            
            
        else {
            var array = myMathProb.componentsSeparatedByString(" ")
            
            let operation = array[1]
            if let num1 = Double(array[0]),num2 = Double(array[2]) {
                
                if let mathOp = OpCode(rawValue: array[1]) {
                    
                    let myAnswer = mathStuffFactory(mathOp)
                    let theAnswer = myAnswer(num1,num2)
                    print("\(myMathProb) = \(theAnswer)")
                    
                    
                    if mathOp == .Random {
                        print("What do you think is the operator? Enter here: ", terminator: " ")
                        if let userGuess = readLine(stripNewline: true) {
                            
                            var theAnswerString = "\(num1) \(mathOperation().rawValue) \(num2) = \(theAnswer)"
                            if userGuess == mathOperation().rawValue {
                                print("You got it right! Great work!\n \(theAnswerString)")
                            }
                            else {
                                print("Sorry, your answer is wrong!\n \(theAnswerString)")
                            }
                        }
                    }
                }
                    
                else {
                    print("Unknown Operator: \(operation)")
                }
                
            }
        }
    }
}


//Q2

var myTestArray = [12, 5, 76, 23, 15, 7, 56]

func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
    var filteredArray = [Int]()
    for item in inputArray {
        if filter(item) {
            filteredArray.append(item)
        }
    }
    return filteredArray
}

let filterTestValues = myFilter(myTestArray, filter:{ (a) -> Bool in a > 5})
print(filterTestValues)


//Q3

func myMap(inputArray: [Int], map: (Int) -> Any) -> [Any] {
    var mappedArray = [Any]()
    for item in inputArray {
        mappedArray.append(map(item))
    }
    
    return mappedArray
}

let mapTestValues = myMap(myTestArray, map:{ (a) -> Any in a + 2 })
print(mapTestValues)

