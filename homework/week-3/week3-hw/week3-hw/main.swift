//
//  main.swift
//  week3-hw

import Foundation
enum Command:String {
        case Play = "play"
}

func play(y: String) {
    print("Type a simple math equation with two operands and one operator separated by spaces, please: ", terminator: "")
    while true {
        if let input = readLine(stripNewline: true) {
        
        }
        continue
            
            
        }
    }
if let command = readLine(stripNewline: true) {
let userString = command.componentsSeparatedByString(" ")
func processCommand(arr:[String]) {
    if arr.count != 3 {
        print("We need two operands and one operator, please")
        }
    if arr.count == 3 {
        let x = Double(arr[0])
        let y = Double(arr[2])
        if arr[1] == "+" {
        print("\(x) + \(y) = \(x!+y!)")
    }
    }
while true {
    print("Type something, please: ", terminator: "")
        if let response = readLine(stripNewline: true) {
            // exit condition
            if response == "exit" {
                break
            }
            let command = response.componentsSeparatedByString(" ")
            
            processCommand(userString)
        }
        else {
            print("You gotta enter something")
        }
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
    case "square":
        return {x, y in x * x}
    case "^":
        return {x, y in pow(x,y)}
    case "intDiv":
        return {x, y in Double(Int(x) / Int(y)) }
    default:
        return {x, y in x + y }
    }
}

let plus = mathStuffFactory("+")
plus(3, 8)
let subtract = mathStuffFactory("-")
subtract(10,5)
let multpily = mathStuffFactory("*")
multpily(3,4)
let divide = mathStuffFactory("/")
divide(50,5)
let square = mathStuffFactory("square")
square(6, 7)
let power = mathStuffFactory("^")
power(5,3)
let intDiv = mathStuffFactory("intDiv")
intDiv(21, 7)
}
}