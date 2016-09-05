//
//  main.swift
//  week3-hw

import Foundation

enum Math:String {
    case Add = "+"
    case Subtract = "-"
    case Multiply = "*"
    case Divide = "/"
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

var add = mathStuffFactory("+")
var subtract = mathStuffFactory("-")
var multiply = mathStuffFactory("*")
var divide = mathStuffFactory("/")

let opsArray = [add, subtract, multiply, divide]
let opSignsArray = ["+", "-", "*", "/"]

func processMath(command: [String]) {
    if let num1 = Double(command[0]), num2 = Double(command[2]) {
        var answer: Double
        let randomSelector = Int(arc4random() % 4)
        let randomOp = opsArray[randomSelector]
        let randomOpSign = opSignsArray[randomSelector]

        if let mathOps = Math(rawValue: command[1]) {
            switch mathOps {
            case .Add:
                answer = add(num1, num2)
            case .Subtract:
                answer = subtract(num1, num2)
            case .Multiply:
                answer = multiply(num1, num2)
            case .Divide:
                answer = divide(num1, num2)
            case .Random:
                answer = randomOp(num1, num2)
            }
            print(num1, command[1], num2, "=", answer, terminator: " ")
            print()
            
            if command[1] == "?" {
                print("Guess the operator: ", terminator: "")
                if let response = readLine(stripNewline: true) {
                    if response == randomOpSign {
                        print("You're correct!")
                    } else {
                        print("Wrong! The right answer is: \(randomOpSign)")
                    }
                }
            }
        }
    } else {
        print("Please enter numbers appropriately")
    }
}

func myFilter(inputArray: [Int], filter: Int -> Bool) -> [Int] {
    var finalArray = [Int]()
    for i in inputArray {
        if filter(i) {
            finalArray.append(i)
        }
    }
    return finalArray
}

func processFilter() {
    let ints = [4,2,6,3,4,6,2,8,5]
    print("The array is \(ints)")
    let afterFilter = myFilter(ints, filter: { a in
        a % 2 == 0
    })
    print("After filtering by even numbers, the array is \(afterFilter)")
}

func myMap(inputArray: [Int], map: Int -> Int) -> [Int] {
    var finalArray = [Int]()
    for i in inputArray {
        finalArray.append(map(i))
    }
    return finalArray
}

func processMap() {
    let ints = [4,2,6,3,4,6,2,8,5]
    print("The array is \(ints)")
    let afterMap = myMap(ints, map: { a in
        a * 2
    })
    print("After mapping by doubling, the array is \(afterMap)")
}

console: while true {
    print("Please enter a math operation (ex: 5 * 2), \"filter\" or \"map\": ", terminator: "")
    if let response = readLine(stripNewline: true) {
        switch response {
        case "exit":
            break console
        case "filter":
            processFilter()
        case "map":
            processMap()
        default:
            let command = response.componentsSeparatedByString(" ")
            if command.count == 3 {
                switch command[1] {
                case "+", "-", "*", "/", "?":
                    processMath(command)
                default:
                    print("Unknown operator: \"\(command[1])\" \nMath cannot be processed. Operator must be one of the following: + - * / or ?")
                }
            } else {
                print("Command cannnot be processed.")
            }
        }
    }
}