//
//  main.swift
//  week3-hw

import Foundation

enum Command: String {
    case Play = "play"
    case math = "math problem"
    case myFilter = "myFilter"
}

enum Operators: String {
    case Add = "+"
    case Subtract = "-"
    case Multiply = "*"
    case Divide = "/"
    case Random = "?"
}
//define rawValue for above

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
                    if let opString = Operators(rawValue: opString) {
                    switch opString {
                    case .Add:
                        return {x, y in x + y }
                    case .Subtract:
                        return {x, y in x - y }
                    case .Multiply:
                        return {x, y in x * y }
                    case .Divide:
                        return {x, y in x / y }
                    case .Random:
                        return{x, y in x + y }
                    }
                }
                    return {x, y in x + y }
            }
        }
    }
}
//func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
//    var outputArray:[Int]()
//    for value in inputArray{
//        if filter(value) == true{
//            outputArray.append(i)
//        }else{
//            continue
//        }
//    }
//        return outputArray

//let array = ["+", "-", "/", "*"]
//let randomArray = Int(arc4random_uniform(4))
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
}

let ints = [4,2,6,3,4,6,2,8,5]

func myFilter(ints: [Int], filter: (Int) -> Bool) -> [Int] {
var outputArray = [Int]()
    for num in ints {
    if filter(num) {
    outputArray.append(num)
        }
    }
return outputArray
}

myFilter(ints) {(a) -> Bool in
    a % 2 == 0
}

func myMap(inputArray: [Int], map: (Int) -> String) -> [String] {
    var outputArray = [String]()
    for num in inputArray {
        outputArray.append(map(num))
    }
    return outputArray
}
