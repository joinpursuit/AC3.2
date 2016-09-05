//
//  main.swift
//  week3-hw

import Foundation

//  main.swift
//  HW3 Test
//
//  Created by Erica Y Stevens on 9/4/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

//I am 99.998% sure that I have done #2 & #3 incorrectly...

//COMMANDS:
//Type "play guessingGame" to play the guessing gamePrompt
//Type "math calculator" to launch the calculator
//Type "filter" to check if my filter function works properly
//Type "map" to check if my mapping is correct

enum Command: String {
    case Echo = "echo"
    case Number = "number"
    case Play = "play"
    case MathStuffFactory = "math"
    case Filter = "filter"
    case Map = "map"
}

enum MathOperation: String {
    case Add = "+"
    case Subtract = "-"
    case Divide = "/"
    case Multiply = "*"
    case Exponent = "^"
    case Random = "?"
}


func echo(s: String) {
    print(s)
}

func number(s: String) -> Int?  {
    if let num = Int(s) {
        return num
    } else {
        return nil
    }
}
func evenFilter(array: [Int]) -> [Int] {
    var filteredEvens: [Int] = []
    for elem in array {
        if elem % 2 == 0 {
            filteredEvens.append(elem)
        }
    }
    return filteredEvens
}

func filterIntArray(inputArr: [Int]) -> [Int] {
    print("All numbers before filter: \(inputArr)")
    let evenNumbers = evenFilter(inputArr)
    print("Even numbers only: \(evenNumbers)")
    print("")
    return evenNumbers
}

func squareNumsInArr(array: [Int]) -> [Int] {
    var mappedValues: [Int] = []
    for elem in array {
        let squareNum = elem * elem
        mappedValues.append(squareNum)
    }
    return mappedValues
}

func mapIntArray(inputArr: [Int]) -> [Int] {
    print("Values before being mapped: \(inputArr)")
    let squareNumbers = squareNumsInArr(inputArr)
    print("Values after being mapped: \(squareNumbers)")
    print("")
    return squareNumbers
}



func mathPrompt() {
    print("\u{27fe} ", terminator: "")
}

func expressionRecieved() -> String? {
    let s = readLine(stripNewline: true)
    return s
}


func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
    switch opString {
    case MathOperation.Add.rawValue:
        return {x, y in x + y }
    case MathOperation.Subtract.rawValue:
        return {x, y in x - y }
    case MathOperation.Multiply.rawValue:
        return {x, y in x * y }
    case MathOperation.Divide.rawValue:
        return {x, y in x / y }
    case MathOperation.Exponent.rawValue:
        return {x, y in pow(x,y)}
    case MathOperation.Random.rawValue:
        return {x, y in
            var arr: [String] = []
            arr.append(MathOperation.Add.rawValue)
            arr.append(MathOperation.Subtract.rawValue)
            arr.append(MathOperation.Divide.rawValue)
            arr.append(MathOperation.Multiply.rawValue)
            let randomOperatorIndex = Int(arc4random_uniform(4))
            var count = 0
            var randomOperator = ""
            for _ in arr {
                if count == (randomOperatorIndex) {
                    randomOperator = arr[count]
                }
                count += 1
            }
            switch randomOperator {
            case MathOperation.Add.rawValue:
                return x + y
            case MathOperation.Subtract.rawValue:
                return x - y
            case MathOperation.Divide.rawValue:
                return x / y
            case MathOperation.Multiply.rawValue:
                return x * y
            case MathOperation.Exponent.rawValue:
                return pow(x,y)
            default:
                return 0.0
            }
        }
    default:
        return {x, y in x * 0.0}
    }
}



func mysteryOperatorCompare(s1: String, s2: String, answer: Double, userGuess: String) -> String {
    
    var actualOperator = ""
    var correctBool: String = ""
    let solution = Int(answer)
    
    if let num1 = Int(s1), let num2 = Int(s2)  {
        
        if num1 + num2 == solution {
            actualOperator = MathOperation.Add.rawValue
        }
        
        if num1 - num2 == solution {
            actualOperator = MathOperation.Subtract.rawValue
        }
        
        if num1 / num2 == solution {
            actualOperator = MathOperation.Divide.rawValue
        }
        
        if num1 * num2 == solution {
            actualOperator = MathOperation.Multiply.rawValue
        }
        
        if pow(Double(num1), Double(num2)) == Double(solution) {
            actualOperator = MathOperation.Exponent.rawValue
        }
        
        if userGuess == actualOperator {
            correctBool += "Correct!"
        } else {
            correctBool += "Incorrect"
        }
    }
    print(correctBool)
    return correctBool
}




func commandLineMathOutput(s: String) {
    if s == "calculator" {
        print("")
        print("+, -, /, * operates on any two integers. Please separate with spaces:")
        print("")
    }
    
    var wantsToCalculate = true
    var arr: [String] = []
    
    repeat {
        mathPrompt()
        
        if let expression = expressionRecieved() {
            
            if expression == "exit" {
                print("")
                wantsToCalculate = false
            }
            
            arr = expression.componentsSeparatedByString(" ")
            
            if let num1 = Double(arr[0]), let num2 = Double(arr[2]){
                let operation = mathStuffFactory(arr[1])
                let answer = operation(num1, num2)
                
                let operatorCharacter = arr[1]
                
                switch operatorCharacter {
                case MathOperation.Add.rawValue, MathOperation.Subtract.rawValue, MathOperation.Divide.rawValue, MathOperation.Multiply.rawValue, MathOperation.Exponent.rawValue:
                    print("\(Int(num1)) \(arr[1]) \(Int(num2)) = \(Int(answer))")
                case MathOperation.Random.rawValue:
                    print("Enter the operator that generates: \(Int(answer))")
                    mathPrompt()
                    if let input = expressionRecieved() {
                        mysteryOperatorCompare(arr[0], s2: arr[2], answer: answer, userGuess: input)
                    }
                default:
                    print("Unknown Operator: \(operatorCharacter)")
                }
            }
        }
    } while wantsToCalculate
}



func gamePrompt(){
    print("Please guess a number between 1 and 10: ")
}

func play(s: String) {
    var guessesLeft = 3
    let randomNum = Int(arc4random_uniform(10))
    if s == "guessingGame" {
        print("Guessing Game!")
        print("")
        
        repeat {
            gamePrompt()
            
            if let stringGuess = userInputReceived(), let intGuess = number(stringGuess) {
                
                if randomNum == intGuess {
                    print("Congratulations! You win! Type 'play guessingGame' to play again.")
                    print("")
                    break
                } else if randomNum > intGuess {
                    print("Your guess was too low. Try again. You have \(guessesLeft - 1) guesses left!")
                    print("")
                    guessesLeft -= 1
                } else if randomNum < intGuess {
                    print("Your guess was too high. Try again. You have \(guessesLeft - 1) guesses left!")
                    print("")
                    guessesLeft -= 1
                }
                
                if guessesLeft == 0 {
                    print("You have lost. The number was \(randomNum). Type 'play guessingGame' to try again.")
                    print("")
                    break
                }
            } else {
                print("That entry is not a valid number. Try again. You have \(guessesLeft - 1) guesses left!")
                print("")
                guessesLeft -= 1
                
            }
        } while guessesLeft > 0
    }
}



func getInput() {
    print("Type something, please: ", terminator: "")
}

func userInputReceived() -> String? {
    let s = readLine(stripNewline: true)
    return s
}

func processCommand(userInput: [String]) {
    
    if let command = Command(rawValue: userInput[0]) {
        switch command {
        case .Echo:
            if userInput.count < 2 {
                print("At least one command and one argument is needed. Try again.")
            }
            echo(userInput[1])
        case .Number:
            if userInput.count < 2 {
                print("At least one command and one argument is needed. Try again.")
            }
            number(userInput[1])
        case .Play:
            if userInput.count < 2 {
                print("At least one command and one argument is needed. Try again.")
            }
            play(userInput[1])
        case .MathStuffFactory:
            if userInput.count < 2 {
                print("At least one command and one argument is needed. Try again.")
            }
            commandLineMathOutput(userInput[1])
        case .Filter:
            let ints = [4,2,6,3,4,6,2,8,5]
            filterIntArray(ints)
        case .Map:
            let ints = [4,2,6,3,4,6,2,8,5]
            mapIntArray(ints)
        }
    }
    else {
        print("Unknown command")
    }
    
}


while true {
    getInput()
    
    if let response = userInputReceived() {
        if response == "exit" {
            break
        }
        
        let command = response.componentsSeparatedByString(" ")
        
        processCommand(command)
    }
}
