//
//  main.swift
//  homework3week
//
//  Created by Marty Avedon on 9/4/16.
//  Copyright © 2016 Marty Avedon. All rights reserved.
//

import Foundation

// Name enums

enum Ops: String {
    case add = "+"
    case subtract = "-"
    case multiply = "*"
    case divide = "/"
    case wholeNumberDivide = "//"
    case expo = "^"
    case random = "?"
}

//enum Funksh: String {
//    case map = "map"
//    case filter = "filter"
//    // build a factory that generates functions based on the arguments the user gives us
//    // No stop. Don't torture yourself. Just finish this.
//}

// Name and assign our single-shot constants and variables

let exit = "q"
let prompt = "> "

var operandGlobe: Ops = .add
var num1Globe = 0.0
var num2Globe = 0.0

var commandsPrintedPretty = ""
var operation: Ops = .add
var result = 0.0

var pickedOp: Ops = .add

var comeSailArray = [0, 6, 7, 16, 23, 214, 2005, 1984, 13, 17, 27]
var action = ""

// Name and assign our print statements

let welcomeMsg = "Hello! Welcome to our week 3 homework.\nDo you like math?\n\nNo, don't answer that, it's not time for user input yet.\nWe're going to assume you LOVE math.\n\nEnter some numbers and an operator at the prompt & we'll have some fun.\n\nOperators are math symbols, like + or *. Make sure you space things out like so: 4 * 7.\n\nIf you don't want to do this anymore, type 'q' at any time.\n\n"

let errorMsg = "\nI don't understand..."

let exitMsg = "\nGoodbye!"

let guessMsg = "Welcome to our minigame!\nCan you guess the math operation we just did?\n\nChoices:\n + (adding) \n - (subtracting) \n \\ (dividing) \n \\\\ (integer division -- whole number results only!) \n * (multiplying) \n ^ (raised to a power)\n"

let loseMsg = "\nSorry...that's not right..."

let winMsg = "\nYou got it! Hooray!"

let smartAssMsg = "\nDon't be a smart aleck."

//let mapMsg = "\nEnter an array of numbers, and a closure describing how to process them."
//
//let filterMsg = "\nEnter an array of numbers, and a closure describing how to filter them."

// Print funcs

func welcome() {
    print(welcomeMsg)
}

func userInput() {
    print(prompt, terminator: "")
}

func error() {
    print(errorMsg)
}

func mathFun() {
    print("\(commandsPrintedPretty) is \(result)\n")
}

//func filterInstruct() {
//    print(filterMsg)
//    print(prompt)
//}
//
//func mapInstruct() {
//    print(mapMsg)
//    print(prompt)
//}

func guessInstruct() {
    print(guessMsg)
    print(prompt)
}

func win() {
    print(winMsg)
}

func lose() {
    print(loseMsg)
}

func smartAss() {
    print(smartAssMsg)
}

func bye() {
    print(exitMsg)
}

// Name and define helper functions & closures

var filterMaker = {x in x % 2 == 0}

func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
    var filtered:[Int] = []
    for num in inputArray {
        if filter(num) == true {
            filtered.append(num)
        }
    }
    return filtered
}

var mapMaker = {x in x * 2}

func myMap(inputArray: [Int], map: (Int) -> Int) -> [Int] {
    var mapped:[Int] = []
    var newNum: Int
    for num in inputArray {
        newNum = map(num)
        mapped.append(newNum)
    }
    return mapped
}

func mapShow() {
    print("\nWhen we \(action) our hardcoded array, \(comeSailArray)\nbecomes...")
    print(myMap(comeSailArray, map: mapMaker))
}

func filterShow() {
    print("\nWhen we \(action) our hardcoded array, \(comeSailArray)\nbecomes...")
    print(myFilter(comeSailArray, filter: filterMaker))
}

func convert(num: Int) -> Ops {
    switch num {
    case 0:
        return .add
    case 1:
        return .subtract
    case 2:
        return .divide
    case 3:
        return .wholeNumberDivide
    case 4:
        return .multiply
    case 5:
        return .expo
    default:
        return .random
    }
}

// Name our enum-specific functions

func mathFactory(opString: Ops) -> (Double, Double) -> Double {
    switch opString {
    case .add:
        return {x, y in x + y }
    case .subtract:
        return {x, y in x - y }
    case .multiply:
        return {x, y in x * y }
    case .divide: // Regular division
        return {x, y in x / y }
    case .wholeNumberDivide: // Integer division, where 1 divided by 2 = 0
        return {x, y in floor(x/y) }
    case .expo:
        return {x, y in pow(x,y) }
    case .random:
        let pickANum = Int(arc4random_uniform(5))
        let pickAOp = convert(pickANum)
        pickedOp = pickAOp
        return mathFactory(pickAOp)
    // pick a random number based on the number of enums, convert it to something that makes sense as a raw value, then input it as a raw value into the mathfactory
    }
}

// More functions

func processCommand(arr:[String]) {
    if arr.count < 2 {
        print("We need at least one command.")
    }
    if let num1 = Double(arr[0]), num2 = Double(arr[arr.count-1]), operand = Ops(rawValue: arr[arr.count-2]) {
        num1Globe = num1
        num2Globe = num2
        operandGlobe = operand
    }
    else {
        error()
    }
}

func guessingGame(input: String) {
    if let operandGuessed = Ops(rawValue: input) {
        if operandGuessed == pickedOp {
            win()
            } else {
                if operandGuessed == .random {
                    smartAss()
                } else {
                    lose()
            }
        }
    } else {
        error()
    }
}

// Check that we have variables assigned to anything in the print statements, functions, etc. that may be appropiate to change.

// ***

// Start the main loop with a while true

while true {
    
    // Welcome message
    
    welcome()
    
    // User input
    
    userInput()
    
    // Function that works on the user input to do something
    
    if var response = readLine(stripNewline: true) {
        
        if response == exit {
                bye()
                break
        } else if response == "map" {
            action = "map"
            mapShow()
            bye()
            break
        } else if response == "filter" {
            action = "filter"
            filterShow()
            bye()
            break
        }
        
        let commandsPrintedPretty = response
        
        // Process command function goes here
        
        let commands = response.componentsSeparatedByString(" ")
        processCommand(commands)
        var operation = mathFactory(operandGlobe)
        result = operation(num1Globe, num2Globe)
        mathFun()
        if operandGlobe == Ops.random {
            guessInstruct()
            if var guess = readLine(stripNewline: true) {
                if guess == exit {
                    bye()
                    break
                }
                guessingGame(guess)
            }
        }
    }
    
    // Exit message
    
    bye()
    break
    
}