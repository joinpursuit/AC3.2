//
//  main.swift
//  week3-hw

import Foundation

enum Command: String {
    case Play = "play"
    case math = "math problem"
    case myFilter = "myFilter"
}

enum operators { //enum operator class
    case Addition, Subtraction, Multiplication, Division
    func mathStuffFactory() -> String {
        switch self {
        case .Addition: return "+"
        case .Subtraction: return "-"
        case .Multiplication: return "*"
        case .Division: return "/"
        }
    }
}

func processCommand(cmd: [String]) {
    switch cmd[0] {
    case Command.Play.rawValue:
        play(cmd[1])
    default:
        print("Unknown command")
    }
}

func userInput() -> Int? {
    if let input = readLine(stripNewline: true) {
        return Int(input)
    }
    return nil
}

func play(s: String) {
    if s == "mathProblem" {
        while true {
            print("Enter a math problem, can be any two numbers, try addition, subtraction, multplication or division.")
            if let input = userInput() {
                func mathStuffFactory(opString: String) -> (x: Double, y: Double) -> Double {
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
            }
        }
    }
}

//let array = ["+", "-", "/", "*"]
//for item in array {
//    if let input = userInput() {
//    
//        }
//    }
//}

//Gateway function to capture command/user input
while true {
    print("Type something please: ", terminator: "")
    if let response = readLine(stripNewline: true) {
        //exit condition
        if response == "ext" {
            break //escape the route, no need for else statement
        }
        let command = response.componentsSeparatedByString(" ")
        if command.count < 2 {
            print("We need at least one command and one argument")
            continue
        }
        processCommand(command)
    }
    else {
        print("You have to enter something!")
    }
}

func myFilter(ints: [Int], filter: (Int) -> Bool) -> [Int] {
    while true {
        let ints = [4,2,6,3,4,6,2,8,5]
        var evenNums = ints.filter { $0 % 2 == 0 }
    }
}